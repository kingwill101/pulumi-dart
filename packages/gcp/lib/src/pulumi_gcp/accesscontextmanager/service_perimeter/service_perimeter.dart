import 'package:pulumi/pulumi.dart';
import '../service_perimeter_spec/service_perimeter_spec.dart';
import '../service_perimeter_status/service_perimeter_status.dart';
import 'service_perimeter_args.dart';

/// ServicePerimeter describes a set of GCP resources which can freely import
/// and export data amongst themselves, but not export outside of the
/// ServicePerimeter. If a request with a source within this ServicePerimeter
/// has a target outside of the ServicePerimeter, the request will be blocked.
/// Otherwise the request is allowed. There are two types of Service Perimeter
/// - Regular and Bridge. Regular Service Perimeters cannot overlap, a single
/// GCP project can only belong to a single regular Service Perimeter. Service
/// Perimeter Bridges can contain only GCP projects as members, a single GCP
/// project may belong to multiple Service Perimeter Bridges.
///
///
/// To get more information about ServicePerimeter, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters)
/// * How-to Guides
/// * [Guide to Ingress and Egress Rules](https://cloud.google.com/vpc-service-controls/docs/ingress-egress-rules)
/// * [Service Perimeter Quickstart](https://cloud.google.com/vpc-service-controls/docs/quickstart)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a <span pulumi-lang-nodejs="`billingProject`" pulumi-lang-dotnet="`BillingProject`" pulumi-lang-go="`billingProject`" pulumi-lang-python="`billing_project`" pulumi-lang-yaml="`billingProject`" pulumi-lang-java="`billingProject`">`billing_project`</span> and set <span pulumi-lang-nodejs="`userProjectOverride`" pulumi-lang-dotnet="`UserProjectOverride`" pulumi-lang-go="`userProjectOverride`" pulumi-lang-python="`user_project_override`" pulumi-lang-yaml="`userProjectOverride`" pulumi-lang-java="`userProjectOverride`">`user_project_override`</span> to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// <span pulumi-lang-nodejs="`billingProject`" pulumi-lang-dotnet="`BillingProject`" pulumi-lang-go="`billingProject`" pulumi-lang-python="`billing_project`" pulumi-lang-yaml="`billingProject`" pulumi-lang-java="`billingProject`">`billing_project`</span> you defined.
///
/// ## Example Usage
///
/// ### Access Context Manager Service Perimeter Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
/// parent: "organizations/123456789",
/// title: "my policy",
/// });
/// const service_perimeter = new gcp.accesscontextmanager.ServicePerimeter("service-perimeter", {
/// parent: pulumi.interpolate`accessPolicies/${access_policy.name}`,
/// name: pulumi.interpolate`accessPolicies/${access_policy.name}/servicePerimeters/restrict_storage`,
/// title: "restrict_storage",
/// status: {
/// restrictedServices: ["storage.googleapis.com"],
/// },
/// });
/// const access_level = new gcp.accesscontextmanager.AccessLevel("access-level", {
/// parent: pulumi.interpolate`accessPolicies/${access_policy.name}`,
/// name: pulumi.interpolate`accessPolicies/${access_policy.name}/accessLevels/chromeos_no_lock`,
/// title: "chromeos_no_lock",
/// basic: {
/// conditions: [{
/// devicePolicy: {
/// requireScreenLock: false,
/// osConstraints: [{
/// osType: "DESKTOP_CHROME_OS",
/// }],
/// },
/// regions: [
/// "CH",
/// "IT",
/// "US",
/// ],
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
/// parent="organizations/123456789",
/// title="my policy")
/// service_perimeter = gcp.accesscontextmanager.ServicePerimeter("service-perimeter",
/// parent=access_policy.name.apply(lambda name: f"accessPolicies/{name}"),
/// name=access_policy.name.apply(lambda name: f"accessPolicies/{name}/servicePerimeters/restrict_storage"),
/// title="restrict_storage",
/// status={
/// "restricted_services": ["storage.googleapis.com"],
/// })
/// access_level = gcp.accesscontextmanager.AccessLevel("access-level",
/// parent=access_policy.name.apply(lambda name: f"accessPolicies/{name}"),
/// name=access_policy.name.apply(lambda name: f"accessPolicies/{name}/accessLevels/chromeos_no_lock"),
/// title="chromeos_no_lock",
/// basic={
/// "conditions": [{
/// "device_policy": {
/// "require_screen_lock": False,
/// "os_constraints": [{
/// "os_type": "DESKTOP_CHROME_OS",
/// }],
/// },
/// "regions": [
/// "CH",
/// "IT",
/// "US",
/// ],
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
/// {
/// Parent = "organizations/123456789",
/// Title = "my policy",
/// });
///
/// var service_perimeter = new Gcp.AccessContextManager.ServicePerimeter("service-perimeter", new()
/// {
/// Parent = access_policy.Name.Apply(name => $"accessPolicies/{name}"),
/// Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/servicePerimeters/restrict_storage"),
/// Title = "restrict_storage",
/// Status = new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusArgs
/// {
/// RestrictedServices = new[]
/// {
/// "storage.googleapis.com",
/// },
/// },
/// });
///
/// var access_level = new Gcp.AccessContextManager.AccessLevel("access-level", new()
/// {
/// Parent = access_policy.Name.Apply(name => $"accessPolicies/{name}"),
/// Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/accessLevels/chromeos_no_lock"),
/// Title = "chromeos_no_lock",
/// Basic = new Gcp.AccessContextManager.Inputs.AccessLevelBasicArgs
/// {
/// Conditions = new[]
/// {
/// new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionArgs
/// {
/// DevicePolicy = new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionDevicePolicyArgs
/// {
/// RequireScreenLock = false,
/// OsConstraints = new[]
/// {
/// new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionDevicePolicyOsConstraintArgs
/// {
/// OsType = "DESKTOP_CHROME_OS",
/// },
/// },
/// },
/// Regions = new[]
/// {
/// "CH",
/// "IT",
/// "US",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// access_policy, err := accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// Parent: pulumi.String("organizations/123456789"),
/// Title:  pulumi.String("my policy"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = accesscontextmanager.NewServicePerimeter(ctx, "service-perimeter", &accesscontextmanager.ServicePerimeterArgs{
/// Parent: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v", name), nil
/// }).(pulumi.StringOutput),
/// Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v/servicePerimeters/restrict_storage", name), nil
/// }).(pulumi.StringOutput),
/// Title: pulumi.String("restrict_storage"),
/// Status: &accesscontextmanager.ServicePerimeterStatusArgs{
/// RestrictedServices: pulumi.StringArray{
/// pulumi.String("storage.googleapis.com"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = accesscontextmanager.NewAccessLevel(ctx, "access-level", &accesscontextmanager.AccessLevelArgs{
/// Parent: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v", name), nil
/// }).(pulumi.StringOutput),
/// Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v/accessLevels/chromeos_no_lock", name), nil
/// }).(pulumi.StringOutput),
/// Title: pulumi.String("chromeos_no_lock"),
/// Basic: &accesscontextmanager.AccessLevelBasicArgs{
/// Conditions: accesscontextmanager.AccessLevelBasicConditionArray{
/// &accesscontextmanager.AccessLevelBasicConditionArgs{
/// DevicePolicy: &accesscontextmanager.AccessLevelBasicConditionDevicePolicyArgs{
/// RequireScreenLock: pulumi.Bool(false),
/// OsConstraints: accesscontextmanager.AccessLevelBasicConditionDevicePolicyOsConstraintArray{
/// &accesscontextmanager.AccessLevelBasicConditionDevicePolicyOsConstraintArgs{
/// OsType: pulumi.String("DESKTOP_CHROME_OS"),
/// },
/// },
/// },
/// Regions: pulumi.StringArray{
/// pulumi.String("CH"),
/// pulumi.String("IT"),
/// pulumi.String("US"),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeter;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeterArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.ServicePerimeterStatusArgs;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevel;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevelArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.AccessLevelBasicArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
/// .parent("organizations/123456789")
/// .title("my policy")
/// .build());
///
/// var service_perimeter = new ServicePerimeter("service-perimeter", ServicePerimeterArgs.builder()
/// .parent(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
/// .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/servicePerimeters/restrict_storage", _name)))
/// .title("restrict_storage")
/// .status(ServicePerimeterStatusArgs.builder()
/// .restrictedServices("storage.googleapis.com")
/// .build())
/// .build());
///
/// var access_level = new AccessLevel("access-level", AccessLevelArgs.builder()
/// .parent(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
/// .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/accessLevels/chromeos_no_lock", _name)))
/// .title("chromeos_no_lock")
/// .basic(AccessLevelBasicArgs.builder()
/// .conditions(AccessLevelBasicConditionArgs.builder()
/// .devicePolicy(AccessLevelBasicConditionDevicePolicyArgs.builder()
/// .requireScreenLock(false)
/// .osConstraints(AccessLevelBasicConditionDevicePolicyOsConstraintArgs.builder()
/// .osType("DESKTOP_CHROME_OS")
/// .build())
/// .build())
/// .regions(
/// "CH",
/// "IT",
/// "US")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// service-perimeter:
/// type: gcp:accesscontextmanager:ServicePerimeter
/// properties:
/// parent: accessPolicies/${["access-policy"].name}
/// name: accessPolicies/${["access-policy"].name}/servicePerimeters/restrict_storage
/// title: restrict_storage
/// status:
/// restrictedServices:
/// - storage.googleapis.com
/// access-level:
/// type: gcp:accesscontextmanager:AccessLevel
/// properties:
/// parent: accessPolicies/${["access-policy"].name}
/// name: accessPolicies/${["access-policy"].name}/accessLevels/chromeos_no_lock
/// title: chromeos_no_lock
/// basic:
/// conditions:
/// - devicePolicy:
/// requireScreenLock: false
/// osConstraints:
/// - osType: DESKTOP_CHROME_OS
/// regions:
/// - CH
/// - IT
/// - US
/// access-policy:
/// type: gcp:accesscontextmanager:AccessPolicy
/// properties:
/// parent: organizations/123456789
/// title: my policy
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Access Context Manager Service Perimeter Secure Data Exchange
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
/// parent: "organizations/123456789",
/// title: "my policy",
/// });
/// const secure_data_exchange = new gcp.accesscontextmanager.ServicePerimeters("secure-data-exchange", {
/// parent: pulumi.interpolate`accessPolicies/${access_policy.name}`,
/// servicePerimeters: [
/// {
/// name: pulumi.interpolate`accessPolicies/${access_policy.name}/servicePerimeters/`,
/// title: "",
/// status: {
/// restrictedServices: ["storage.googleapis.com"],
/// },
/// },
/// {
/// name: pulumi.interpolate`accessPolicies/${access_policy.name}/servicePerimeters/`,
/// title: "",
/// status: {
/// restrictedServices: ["bigtable.googleapis.com"],
/// vpcAccessibleServices: {
/// enableRestriction: true,
/// allowedServices: ["bigquery.googleapis.com"],
/// },
/// },
/// },
/// ],
/// });
/// const access_level = new gcp.accesscontextmanager.AccessLevel("access-level", {
/// parent: pulumi.interpolate`accessPolicies/${access_policy.name}`,
/// name: pulumi.interpolate`accessPolicies/${access_policy.name}/accessLevels/secure_data_exchange`,
/// title: "secure_data_exchange",
/// basic: {
/// conditions: [{
/// devicePolicy: {
/// requireScreenLock: false,
/// osConstraints: [{
/// osType: "DESKTOP_CHROME_OS",
/// }],
/// },
/// regions: [
/// "CH",
/// "IT",
/// "US",
/// ],
/// }],
/// },
/// });
/// const test_access = new gcp.accesscontextmanager.ServicePerimeter("test-access", {
/// parent: `accessPolicies/${test_accessGoogleAccessContextManagerAccessPolicy.name}`,
/// name: `accessPolicies/${test_accessGoogleAccessContextManagerAccessPolicy.name}/servicePerimeters/%s`,
/// title: "%s",
/// perimeterType: "PERIMETER_TYPE_REGULAR",
/// status: {
/// restrictedServices: [
/// "bigquery.googleapis.com",
/// "storage.googleapis.com",
/// ],
/// accessLevels: [access_level.name],
/// vpcAccessibleServices: {
/// enableRestriction: true,
/// allowedServices: [
/// "bigquery.googleapis.com",
/// "storage.googleapis.com",
/// ],
/// },
/// ingressPolicies: [{
/// ingressFrom: {
/// sources: [{
/// accessLevel: test_accessGoogleAccessContextManagerAccessLevel.name,
/// }],
/// identityType: "ANY_IDENTITY",
/// },
/// ingressTo: {
/// resources: ["*"],
/// operations: [
/// {
/// serviceName: "bigquery.googleapis.com",
/// methodSelectors: [
/// {
/// method: "BigQueryStorage.ReadRows",
/// },
/// {
/// method: "TableService.ListTables",
/// },
/// {
/// permission: "bigquery.jobs.get",
/// },
/// ],
/// },
/// {
/// serviceName: "storage.googleapis.com",
/// methodSelectors: [{
/// method: "google.storage.objects.create",
/// }],
/// },
/// ],
/// },
/// }],
/// egressPolicies: [{
/// egressFrom: {
/// identityType: "ANY_USER_ACCOUNT",
/// },
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
/// parent="organizations/123456789",
/// title="my policy")
/// secure_data_exchange = gcp.accesscontextmanager.ServicePerimeters("secure-data-exchange",
/// parent=access_policy.name.apply(lambda name: f"accessPolicies/{name}"),
/// service_perimeters=[
/// {
/// "name": access_policy.name.apply(lambda name: f"accessPolicies/{name}/servicePerimeters/"),
/// "title": "",
/// "status": {
/// "restricted_services": ["storage.googleapis.com"],
/// },
/// },
/// {
/// "name": access_policy.name.apply(lambda name: f"accessPolicies/{name}/servicePerimeters/"),
/// "title": "",
/// "status": {
/// "restricted_services": ["bigtable.googleapis.com"],
/// "vpc_accessible_services": {
/// "enable_restriction": True,
/// "allowed_services": ["bigquery.googleapis.com"],
/// },
/// },
/// },
/// ])
/// access_level = gcp.accesscontextmanager.AccessLevel("access-level",
/// parent=access_policy.name.apply(lambda name: f"accessPolicies/{name}"),
/// name=access_policy.name.apply(lambda name: f"accessPolicies/{name}/accessLevels/secure_data_exchange"),
/// title="secure_data_exchange",
/// basic={
/// "conditions": [{
/// "device_policy": {
/// "require_screen_lock": False,
/// "os_constraints": [{
/// "os_type": "DESKTOP_CHROME_OS",
/// }],
/// },
/// "regions": [
/// "CH",
/// "IT",
/// "US",
/// ],
/// }],
/// })
/// test_access = gcp.accesscontextmanager.ServicePerimeter("test-access",
/// parent=f"accessPolicies/{test_access_google_access_context_manager_access_policy['name']}",
/// name=f"accessPolicies/{test_access_google_access_context_manager_access_policy['name']}/servicePerimeters/%s",
/// title="%s",
/// perimeter_type="PERIMETER_TYPE_REGULAR",
/// status={
/// "restricted_services": [
/// "bigquery.googleapis.com",
/// "storage.googleapis.com",
/// ],
/// "access_levels": [access_level.name],
/// "vpc_accessible_services": {
/// "enable_restriction": True,
/// "allowed_services": [
/// "bigquery.googleapis.com",
/// "storage.googleapis.com",
/// ],
/// },
/// "ingress_policies": [{
/// "ingress_from": {
/// "sources": [{
/// "access_level": test_access_google_access_context_manager_access_level["name"],
/// }],
/// "identity_type": "ANY_IDENTITY",
/// },
/// "ingress_to": {
/// "resources": ["*"],
/// "operations": [
/// {
/// "service_name": "bigquery.googleapis.com",
/// "method_selectors": [
/// {
/// "method": "BigQueryStorage.ReadRows",
/// },
/// {
/// "method": "TableService.ListTables",
/// },
/// {
/// "permission": "bigquery.jobs.get",
/// },
/// ],
/// },
/// {
/// "service_name": "storage.googleapis.com",
/// "method_selectors": [{
/// "method": "google.storage.objects.create",
/// }],
/// },
/// ],
/// },
/// }],
/// "egress_policies": [{
/// "egress_from": {
/// "identity_type": "ANY_USER_ACCOUNT",
/// },
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
/// {
/// Parent = "organizations/123456789",
/// Title = "my policy",
/// });
///
/// var secure_data_exchange = new Gcp.AccessContextManager.ServicePerimeters("secure-data-exchange", new()
/// {
/// Parent = access_policy.Name.Apply(name => $"accessPolicies/{name}"),
/// ServicePerimeterDetails = new[]
/// {
/// new Gcp.AccessContextManager.Inputs.ServicePerimetersServicePerimeterArgs
/// {
/// Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/servicePerimeters/"),
/// Title = "",
/// Status = new Gcp.AccessContextManager.Inputs.ServicePerimetersServicePerimeterStatusArgs
/// {
/// RestrictedServices = new[]
/// {
/// "storage.googleapis.com",
/// },
/// },
/// },
/// new Gcp.AccessContextManager.Inputs.ServicePerimetersServicePerimeterArgs
/// {
/// Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/servicePerimeters/"),
/// Title = "",
/// Status = new Gcp.AccessContextManager.Inputs.ServicePerimetersServicePerimeterStatusArgs
/// {
/// RestrictedServices = new[]
/// {
/// "bigtable.googleapis.com",
/// },
/// VpcAccessibleServices = new Gcp.AccessContextManager.Inputs.ServicePerimetersServicePerimeterStatusVpcAccessibleServicesArgs
/// {
/// EnableRestriction = true,
/// AllowedServices = new[]
/// {
/// "bigquery.googleapis.com",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var access_level = new Gcp.AccessContextManager.AccessLevel("access-level", new()
/// {
/// Parent = access_policy.Name.Apply(name => $"accessPolicies/{name}"),
/// Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/accessLevels/secure_data_exchange"),
/// Title = "secure_data_exchange",
/// Basic = new Gcp.AccessContextManager.Inputs.AccessLevelBasicArgs
/// {
/// Conditions = new[]
/// {
/// new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionArgs
/// {
/// DevicePolicy = new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionDevicePolicyArgs
/// {
/// RequireScreenLock = false,
/// OsConstraints = new[]
/// {
/// new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionDevicePolicyOsConstraintArgs
/// {
/// OsType = "DESKTOP_CHROME_OS",
/// },
/// },
/// },
/// Regions = new[]
/// {
/// "CH",
/// "IT",
/// "US",
/// },
/// },
/// },
/// },
/// });
///
/// var test_access = new Gcp.AccessContextManager.ServicePerimeter("test-access", new()
/// {
/// Parent = $"accessPolicies/{test_accessGoogleAccessContextManagerAccessPolicy.Name}",
/// Name = $"accessPolicies/{test_accessGoogleAccessContextManagerAccessPolicy.Name}/servicePerimeters/%s",
/// Title = "%s",
/// PerimeterType = "PERIMETER_TYPE_REGULAR",
/// Status = new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusArgs
/// {
/// RestrictedServices = new[]
/// {
/// "bigquery.googleapis.com",
/// "storage.googleapis.com",
/// },
/// AccessLevels = new[]
/// {
/// access_level.Name,
/// },
/// VpcAccessibleServices = new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusVpcAccessibleServicesArgs
/// {
/// EnableRestriction = true,
/// AllowedServices = new[]
/// {
/// "bigquery.googleapis.com",
/// "storage.googleapis.com",
/// },
/// },
/// IngressPolicies = new[]
/// {
/// new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusIngressPolicyArgs
/// {
/// IngressFrom = new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusIngressPolicyIngressFromArgs
/// {
/// Sources = new[]
/// {
/// new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusIngressPolicyIngressFromSourceArgs
/// {
/// AccessLevel = test_accessGoogleAccessContextManagerAccessLevel.Name,
/// },
/// },
/// IdentityType = "ANY_IDENTITY",
/// },
/// IngressTo = new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusIngressPolicyIngressToArgs
/// {
/// Resources = new[]
/// {
/// "*",
/// },
/// Operations = new[]
/// {
/// new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusIngressPolicyIngressToOperationArgs
/// {
/// ServiceName = "bigquery.googleapis.com",
/// MethodSelectors = new[]
/// {
/// new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArgs
/// {
/// Method = "BigQueryStorage.ReadRows",
/// },
/// new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArgs
/// {
/// Method = "TableService.ListTables",
/// },
/// new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArgs
/// {
/// Permission = "bigquery.jobs.get",
/// },
/// },
/// },
/// new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusIngressPolicyIngressToOperationArgs
/// {
/// ServiceName = "storage.googleapis.com",
/// MethodSelectors = new[]
/// {
/// new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArgs
/// {
/// Method = "google.storage.objects.create",
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// EgressPolicies = new[]
/// {
/// new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusEgressPolicyArgs
/// {
/// EgressFrom = new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusEgressPolicyEgressFromArgs
/// {
/// IdentityType = "ANY_USER_ACCOUNT",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// access_policy, err := accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// Parent: pulumi.String("organizations/123456789"),
/// Title:  pulumi.String("my policy"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = accesscontextmanager.NewServicePerimeters(ctx, "secure-data-exchange", &accesscontextmanager.ServicePerimetersArgs{
/// Parent: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v", name), nil
/// }).(pulumi.StringOutput),
/// ServicePerimeters: accesscontextmanager.ServicePerimetersServicePerimeterArray{
/// &accesscontextmanager.ServicePerimetersServicePerimeterArgs{
/// Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v/servicePerimeters/", name), nil
/// }).(pulumi.StringOutput),
/// Title: pulumi.String(""),
/// Status: &accesscontextmanager.ServicePerimetersServicePerimeterStatusArgs{
/// RestrictedServices: pulumi.StringArray{
/// pulumi.String("storage.googleapis.com"),
/// },
/// },
/// },
/// &accesscontextmanager.ServicePerimetersServicePerimeterArgs{
/// Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v/servicePerimeters/", name), nil
/// }).(pulumi.StringOutput),
/// Title: pulumi.String(""),
/// Status: &accesscontextmanager.ServicePerimetersServicePerimeterStatusArgs{
/// RestrictedServices: pulumi.StringArray{
/// pulumi.String("bigtable.googleapis.com"),
/// },
/// VpcAccessibleServices: &accesscontextmanager.ServicePerimetersServicePerimeterStatusVpcAccessibleServicesArgs{
/// EnableRestriction: pulumi.Bool(true),
/// AllowedServices: pulumi.StringArray{
/// pulumi.String("bigquery.googleapis.com"),
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// access_level, err := accesscontextmanager.NewAccessLevel(ctx, "access-level", &accesscontextmanager.AccessLevelArgs{
/// Parent: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v", name), nil
/// }).(pulumi.StringOutput),
/// Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v/accessLevels/secure_data_exchange", name), nil
/// }).(pulumi.StringOutput),
/// Title: pulumi.String("secure_data_exchange"),
/// Basic: &accesscontextmanager.AccessLevelBasicArgs{
/// Conditions: accesscontextmanager.AccessLevelBasicConditionArray{
/// &accesscontextmanager.AccessLevelBasicConditionArgs{
/// DevicePolicy: &accesscontextmanager.AccessLevelBasicConditionDevicePolicyArgs{
/// RequireScreenLock: pulumi.Bool(false),
/// OsConstraints: accesscontextmanager.AccessLevelBasicConditionDevicePolicyOsConstraintArray{
/// &accesscontextmanager.AccessLevelBasicConditionDevicePolicyOsConstraintArgs{
/// OsType: pulumi.String("DESKTOP_CHROME_OS"),
/// },
/// },
/// },
/// Regions: pulumi.StringArray{
/// pulumi.String("CH"),
/// pulumi.String("IT"),
/// pulumi.String("US"),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = accesscontextmanager.NewServicePerimeter(ctx, "test-access", &accesscontextmanager.ServicePerimeterArgs{
/// Parent:        pulumi.Sprintf("accessPolicies/%v", test_accessGoogleAccessContextManagerAccessPolicy.Name),
/// Name:          pulumi.Sprintf("accessPolicies/%v%v", test_accessGoogleAccessContextManagerAccessPolicy.Name, "/servicePerimeters/%s"),
/// Title:         pulumi.String("%s"),
/// PerimeterType: pulumi.String("PERIMETER_TYPE_REGULAR"),
/// Status: &accesscontextmanager.ServicePerimeterStatusArgs{
/// RestrictedServices: pulumi.StringArray{
/// pulumi.String("bigquery.googleapis.com"),
/// pulumi.String("storage.googleapis.com"),
/// },
/// AccessLevels: pulumi.StringArray{
/// access_level.Name,
/// },
/// VpcAccessibleServices: &accesscontextmanager.ServicePerimeterStatusVpcAccessibleServicesArgs{
/// EnableRestriction: pulumi.Bool(true),
/// AllowedServices: pulumi.StringArray{
/// pulumi.String("bigquery.googleapis.com"),
/// pulumi.String("storage.googleapis.com"),
/// },
/// },
/// IngressPolicies: accesscontextmanager.ServicePerimeterStatusIngressPolicyArray{
/// &accesscontextmanager.ServicePerimeterStatusIngressPolicyArgs{
/// IngressFrom: &accesscontextmanager.ServicePerimeterStatusIngressPolicyIngressFromArgs{
/// Sources: accesscontextmanager.ServicePerimeterStatusIngressPolicyIngressFromSourceArray{
/// &accesscontextmanager.ServicePerimeterStatusIngressPolicyIngressFromSourceArgs{
/// AccessLevel: pulumi.Any(test_accessGoogleAccessContextManagerAccessLevel.Name),
/// },
/// },
/// IdentityType: pulumi.String("ANY_IDENTITY"),
/// },
/// IngressTo: &accesscontextmanager.ServicePerimeterStatusIngressPolicyIngressToArgs{
/// Resources: pulumi.StringArray{
/// pulumi.String("*"),
/// },
/// Operations: accesscontextmanager.ServicePerimeterStatusIngressPolicyIngressToOperationArray{
/// &accesscontextmanager.ServicePerimeterStatusIngressPolicyIngressToOperationArgs{
/// ServiceName: pulumi.String("bigquery.googleapis.com"),
/// MethodSelectors: accesscontextmanager.ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArray{
/// &accesscontextmanager.ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArgs{
/// Method: pulumi.String("BigQueryStorage.ReadRows"),
/// },
/// &accesscontextmanager.ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArgs{
/// Method: pulumi.String("TableService.ListTables"),
/// },
/// &accesscontextmanager.ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArgs{
/// Permission: pulumi.String("bigquery.jobs.get"),
/// },
/// },
/// },
/// &accesscontextmanager.ServicePerimeterStatusIngressPolicyIngressToOperationArgs{
/// ServiceName: pulumi.String("storage.googleapis.com"),
/// MethodSelectors: accesscontextmanager.ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArray{
/// &accesscontextmanager.ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArgs{
/// Method: pulumi.String("google.storage.objects.create"),
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// EgressPolicies: accesscontextmanager.ServicePerimeterStatusEgressPolicyArray{
/// &accesscontextmanager.ServicePerimeterStatusEgressPolicyArgs{
/// EgressFrom: &accesscontextmanager.ServicePerimeterStatusEgressPolicyEgressFromArgs{
/// IdentityType: pulumi.String("ANY_USER_ACCOUNT"),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeters;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimetersArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.ServicePerimetersServicePerimeterArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.ServicePerimetersServicePerimeterStatusArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.ServicePerimetersServicePerimeterStatusVpcAccessibleServicesArgs;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevel;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevelArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.AccessLevelBasicArgs;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeter;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeterArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.ServicePerimeterStatusArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.ServicePerimeterStatusVpcAccessibleServicesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
/// .parent("organizations/123456789")
/// .title("my policy")
/// .build());
///
/// var secure_data_exchange = new ServicePerimeters("secure-data-exchange", ServicePerimetersArgs.builder()
/// .parent(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
/// .servicePerimeters(
/// ServicePerimetersServicePerimeterArgs.builder()
/// .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/servicePerimeters/", _name)))
/// .title("")
/// .status(ServicePerimetersServicePerimeterStatusArgs.builder()
/// .restrictedServices("storage.googleapis.com")
/// .build())
/// .build(),
/// ServicePerimetersServicePerimeterArgs.builder()
/// .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/servicePerimeters/", _name)))
/// .title("")
/// .status(ServicePerimetersServicePerimeterStatusArgs.builder()
/// .restrictedServices("bigtable.googleapis.com")
/// .vpcAccessibleServices(ServicePerimetersServicePerimeterStatusVpcAccessibleServicesArgs.builder()
/// .enableRestriction(true)
/// .allowedServices("bigquery.googleapis.com")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// var access_level = new AccessLevel("access-level", AccessLevelArgs.builder()
/// .parent(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
/// .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/accessLevels/secure_data_exchange", _name)))
/// .title("secure_data_exchange")
/// .basic(AccessLevelBasicArgs.builder()
/// .conditions(AccessLevelBasicConditionArgs.builder()
/// .devicePolicy(AccessLevelBasicConditionDevicePolicyArgs.builder()
/// .requireScreenLock(false)
/// .osConstraints(AccessLevelBasicConditionDevicePolicyOsConstraintArgs.builder()
/// .osType("DESKTOP_CHROME_OS")
/// .build())
/// .build())
/// .regions(
/// "CH",
/// "IT",
/// "US")
/// .build())
/// .build())
/// .build());
///
/// var test_access = new ServicePerimeter("test-access", ServicePerimeterArgs.builder()
/// .parent(String.format("accessPolicies/%s", test_accessGoogleAccessContextManagerAccessPolicy.name()))
/// .name(String.format("accessPolicies/%s/servicePerimeters/%s", test_accessGoogleAccessContextManagerAccessPolicy.name()))
/// .title("%s")
/// .perimeterType("PERIMETER_TYPE_REGULAR")
/// .status(ServicePerimeterStatusArgs.builder()
/// .restrictedServices(
/// "bigquery.googleapis.com",
/// "storage.googleapis.com")
/// .accessLevels(access_level.name())
/// .vpcAccessibleServices(ServicePerimeterStatusVpcAccessibleServicesArgs.builder()
/// .enableRestriction(true)
/// .allowedServices(
/// "bigquery.googleapis.com",
/// "storage.googleapis.com")
/// .build())
/// .ingressPolicies(ServicePerimeterStatusIngressPolicyArgs.builder()
/// .ingressFrom(ServicePerimeterStatusIngressPolicyIngressFromArgs.builder()
/// .sources(ServicePerimeterStatusIngressPolicyIngressFromSourceArgs.builder()
/// .accessLevel(test_accessGoogleAccessContextManagerAccessLevel.name())
/// .build())
/// .identityType("ANY_IDENTITY")
/// .build())
/// .ingressTo(ServicePerimeterStatusIngressPolicyIngressToArgs.builder()
/// .resources("*")
/// .operations(
/// ServicePerimeterStatusIngressPolicyIngressToOperationArgs.builder()
/// .serviceName("bigquery.googleapis.com")
/// .methodSelectors(
/// ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArgs.builder()
/// .method("BigQueryStorage.ReadRows")
/// .build(),
/// ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArgs.builder()
/// .method("TableService.ListTables")
/// .build(),
/// ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArgs.builder()
/// .permission("bigquery.jobs.get")
/// .build())
/// .build(),
/// ServicePerimeterStatusIngressPolicyIngressToOperationArgs.builder()
/// .serviceName("storage.googleapis.com")
/// .methodSelectors(ServicePerimeterStatusIngressPolicyIngressToOperationMethodSelectorArgs.builder()
/// .method("google.storage.objects.create")
/// .build())
/// .build())
/// .build())
/// .build())
/// .egressPolicies(ServicePerimeterStatusEgressPolicyArgs.builder()
/// .egressFrom(ServicePerimeterStatusEgressPolicyEgressFromArgs.builder()
/// .identityType("ANY_USER_ACCOUNT")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// secure-data-exchange:
/// type: gcp:accesscontextmanager:ServicePerimeters
/// properties:
/// parent: accessPolicies/${["access-policy"].name}
/// servicePerimeters:
/// - name: accessPolicies/${["access-policy"].name}/servicePerimeters/
/// title: ""
/// status:
/// restrictedServices:
/// - storage.googleapis.com
/// - name: accessPolicies/${["access-policy"].name}/servicePerimeters/
/// title: ""
/// status:
/// restrictedServices:
/// - bigtable.googleapis.com
/// vpcAccessibleServices:
/// enableRestriction: true
/// allowedServices:
/// - bigquery.googleapis.com
/// access-level:
/// type: gcp:accesscontextmanager:AccessLevel
/// properties:
/// parent: accessPolicies/${["access-policy"].name}
/// name: accessPolicies/${["access-policy"].name}/accessLevels/secure_data_exchange
/// title: secure_data_exchange
/// basic:
/// conditions:
/// - devicePolicy:
/// requireScreenLock: false
/// osConstraints:
/// - osType: DESKTOP_CHROME_OS
/// regions:
/// - CH
/// - IT
/// - US
/// access-policy:
/// type: gcp:accesscontextmanager:AccessPolicy
/// properties:
/// parent: organizations/123456789
/// title: my policy
/// test-access:
/// type: gcp:accesscontextmanager:ServicePerimeter
/// properties:
/// parent: accessPolicies/${["test-accessGoogleAccessContextManagerAccessPolicy"].name}
/// name: accessPolicies/${["test-accessGoogleAccessContextManagerAccessPolicy"].name}/servicePerimeters/%s
/// title: '%s'
/// perimeterType: PERIMETER_TYPE_REGULAR
/// status:
/// restrictedServices:
/// - bigquery.googleapis.com
/// - storage.googleapis.com
/// accessLevels:
/// - ${["access-level"].name}
/// vpcAccessibleServices:
/// enableRestriction: true
/// allowedServices:
/// - bigquery.googleapis.com
/// - storage.googleapis.com
/// ingressPolicies:
/// - ingressFrom:
/// sources:
/// - accessLevel: ${["test-accessGoogleAccessContextManagerAccessLevel"].name}
/// identityType: ANY_IDENTITY
/// ingressTo:
/// resources:
/// - '*'
/// operations:
/// - serviceName: bigquery.googleapis.com
/// methodSelectors:
/// - method: BigQueryStorage.ReadRows
/// - method: TableService.ListTables
/// - permission: bigquery.jobs.get
/// - serviceName: storage.googleapis.com
/// methodSelectors:
/// - method: google.storage.objects.create
/// egressPolicies:
/// - egressFrom:
/// identityType: ANY_USER_ACCOUNT
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Access Context Manager Service Perimeter Dry-Run
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
/// parent: "organizations/123456789",
/// title: "my policy",
/// });
/// const service_perimeter = new gcp.accesscontextmanager.ServicePerimeter("service-perimeter", {
/// parent: pulumi.interpolate`accessPolicies/${access_policy.name}`,
/// name: pulumi.interpolate`accessPolicies/${access_policy.name}/servicePerimeters/restrict_bigquery_dryrun_storage`,
/// title: "restrict_bigquery_dryrun_storage",
/// status: {
/// restrictedServices: ["bigquery.googleapis.com"],
/// },
/// spec: {
/// restrictedServices: ["storage.googleapis.com"],
/// },
/// useExplicitDryRunSpec: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
/// parent="organizations/123456789",
/// title="my policy")
/// service_perimeter = gcp.accesscontextmanager.ServicePerimeter("service-perimeter",
/// parent=access_policy.name.apply(lambda name: f"accessPolicies/{name}"),
/// name=access_policy.name.apply(lambda name: f"accessPolicies/{name}/servicePerimeters/restrict_bigquery_dryrun_storage"),
/// title="restrict_bigquery_dryrun_storage",
/// status={
/// "restricted_services": ["bigquery.googleapis.com"],
/// },
/// spec={
/// "restricted_services": ["storage.googleapis.com"],
/// },
/// use_explicit_dry_run_spec=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
/// {
/// Parent = "organizations/123456789",
/// Title = "my policy",
/// });
///
/// var service_perimeter = new Gcp.AccessContextManager.ServicePerimeter("service-perimeter", new()
/// {
/// Parent = access_policy.Name.Apply(name => $"accessPolicies/{name}"),
/// Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/servicePerimeters/restrict_bigquery_dryrun_storage"),
/// Title = "restrict_bigquery_dryrun_storage",
/// Status = new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusArgs
/// {
/// RestrictedServices = new[]
/// {
/// "bigquery.googleapis.com",
/// },
/// },
/// Spec = new Gcp.AccessContextManager.Inputs.ServicePerimeterSpecArgs
/// {
/// RestrictedServices = new[]
/// {
/// "storage.googleapis.com",
/// },
/// },
/// UseExplicitDryRunSpec = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// access_policy, err := accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// Parent: pulumi.String("organizations/123456789"),
/// Title:  pulumi.String("my policy"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = accesscontextmanager.NewServicePerimeter(ctx, "service-perimeter", &accesscontextmanager.ServicePerimeterArgs{
/// Parent: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v", name), nil
/// }).(pulumi.StringOutput),
/// Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v/servicePerimeters/restrict_bigquery_dryrun_storage", name), nil
/// }).(pulumi.StringOutput),
/// Title: pulumi.String("restrict_bigquery_dryrun_storage"),
/// Status: &accesscontextmanager.ServicePerimeterStatusArgs{
/// RestrictedServices: pulumi.StringArray{
/// pulumi.String("bigquery.googleapis.com"),
/// },
/// },
/// Spec: &accesscontextmanager.ServicePerimeterSpecArgs{
/// RestrictedServices: pulumi.StringArray{
/// pulumi.String("storage.googleapis.com"),
/// },
/// },
/// UseExplicitDryRunSpec: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeter;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeterArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.ServicePerimeterStatusArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.ServicePerimeterSpecArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
/// .parent("organizations/123456789")
/// .title("my policy")
/// .build());
///
/// var service_perimeter = new ServicePerimeter("service-perimeter", ServicePerimeterArgs.builder()
/// .parent(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
/// .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/servicePerimeters/restrict_bigquery_dryrun_storage", _name)))
/// .title("restrict_bigquery_dryrun_storage")
/// .status(ServicePerimeterStatusArgs.builder()
/// .restrictedServices("bigquery.googleapis.com")
/// .build())
/// .spec(ServicePerimeterSpecArgs.builder()
/// .restrictedServices("storage.googleapis.com")
/// .build())
/// .useExplicitDryRunSpec(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// service-perimeter:
/// type: gcp:accesscontextmanager:ServicePerimeter
/// properties:
/// parent: accessPolicies/${["access-policy"].name}
/// name: accessPolicies/${["access-policy"].name}/servicePerimeters/restrict_bigquery_dryrun_storage
/// title: restrict_bigquery_dryrun_storage
/// status:
/// restrictedServices:
/// - bigquery.googleapis.com
/// spec:
/// restrictedServices:
/// - storage.googleapis.com
/// useExplicitDryRunSpec: true
/// access-policy:
/// type: gcp:accesscontextmanager:AccessPolicy
/// properties:
/// parent: organizations/123456789
/// title: my policy
/// ```
/// <!--End PulumiCodeChooser -->
/// ## Import
///
/// ServicePerimeter can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ServicePerimeter can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/servicePerimeter:ServicePerimeter default {{name}}
/// ```
class ServicePerimeter extends CustomResource {
  /// Time the AccessPolicy was created in UTC.
  late final Output<String> createTime;

  /// Description of the ServicePerimeter and its use. Does not affect
  /// behavior.
  late final Output<String?> description;

  /// Resource name for the ServicePerimeter. The<span pulumi-lang-nodejs=" shortName " pulumi-lang-dotnet=" ShortName " pulumi-lang-go=" shortName " pulumi-lang-python=" short_name " pulumi-lang-yaml=" shortName " pulumi-lang-java=" shortName "> short_name </span>component must
  /// begin with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/servicePerimeters/{short_name}
  late final Output<String> name;

  /// The AccessPolicy this ServicePerimeter lives in.
  /// Format: accessPolicies/{policy_id}
  late final Output<String> parent;

  /// Specifies the type of the Perimeter. There are two types: regular and
  /// bridge. Regular Service Perimeter contains resources, access levels,
  /// and restricted services. Every resource can be in at most
  /// ONE regular Service Perimeter.
  /// In addition to being in a regular service perimeter, a resource can also
  /// be in zero or more perimeter bridges. A perimeter bridge only contains
  /// resources. Cross project operations are permitted if all effected
  /// resources share some perimeter (whether bridge or regular). Perimeter
  /// Bridge does not contain access levels or services: those are governed
  /// entirely by the regular perimeter that resource is in.
  /// Perimeter Bridges are typically useful when building more complex
  /// topologies with many independent perimeters that need to share some data
  /// with a common perimeter, but should not be able to share data among
  /// themselves.
  /// Default value is `PERIMETER_TYPE_REGULAR`.
  /// Possible values are: `PERIMETER_TYPE_REGULAR`, `PERIMETER_TYPE_BRIDGE`.
  late final Output<String?> perimeterType;

  /// Proposed (or dry run) ServicePerimeter configuration.
  /// This configuration allows to specify and test ServicePerimeter configuration
  /// without enforcing actual access restrictions. Only allowed to be set when
  /// the `useExplicitDryRunSpec` flag is set.
  /// Structure is documented below.
  late final Output<ServicePerimeterSpec?> spec;

  /// ServicePerimeter configuration. Specifies sets of resources,
  /// restricted services and access levels that determine
  /// perimeter content and boundaries.
  /// Structure is documented below.
  late final Output<ServicePerimeterStatus?> status;

  /// Human readable title. Must be unique within the Policy.
  late final Output<String> title;

  /// Time the AccessPolicy was updated in UTC.
  late final Output<String> updateTime;

  /// Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
  /// for all Service Perimeters, and that spec is identical to the status for those
  /// Service Perimeters. When this flag is set, it inhibits the generation of the
  /// implicit spec, thereby allowing the user to explicitly provide a
  /// configuration ("spec") to use in a dry-run version of the Service Perimeter.
  /// This allows the user to test changes to the enforced config ("status") without
  /// actually enforcing them. This testing is done through analyzing the differences
  /// between currently enforced and suggested restrictions. useExplicitDryRunSpec must
  /// bet set to True if any of the fields in the spec are set to non-default values.
  late final Output<bool?> useExplicitDryRunSpec;

  ServicePerimeter(
    String name, {
    ServicePerimeterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeter:ServicePerimeter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.perimeterType = registerOutput<String?>('perimeterType');
    this.spec = registerOutput<ServicePerimeterSpec?>('spec');
    this.status = registerOutput<ServicePerimeterStatus?>('status');
    this.title = registerOutput<String>('title');
    this.updateTime = registerOutput<String>('updateTime');
    this.useExplicitDryRunSpec = registerOutput<bool?>('useExplicitDryRunSpec');
  }
}
