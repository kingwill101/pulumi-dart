import 'package:pulumi/pulumi.dart';
import '../policy_boolean_policy/policy_boolean_policy.dart';
import '../policy_list_policy/policy_list_policy.dart';
import '../policy_restore_policy/policy_restore_policy.dart';
import 'policy_args3.dart';

/// Allows management of Organization Policies for a Google Cloud Organization.
///
/// > **Warning:** This resource has been superseded by <span pulumi-lang-nodejs="`gcp.orgpolicy.Policy`" pulumi-lang-dotnet="`gcp.orgpolicy.Policy`" pulumi-lang-go="`orgpolicy.Policy`" pulumi-lang-python="`orgpolicy.Policy`" pulumi-lang-yaml="`gcp.orgpolicy.Policy`" pulumi-lang-java="`gcp.orgpolicy.Policy`">`gcp.orgpolicy.Policy`</span>. <span pulumi-lang-nodejs="`gcp.orgpolicy.Policy`" pulumi-lang-dotnet="`gcp.orgpolicy.Policy`" pulumi-lang-go="`orgpolicy.Policy`" pulumi-lang-python="`orgpolicy.Policy`" pulumi-lang-yaml="`gcp.orgpolicy.Policy`" pulumi-lang-java="`gcp.orgpolicy.Policy`">`gcp.orgpolicy.Policy`</span> uses Organization Policy API V2 instead of Cloud Resource Manager API V1 and it supports additional features such as tags and conditions.
///
/// To get more information about Organization Policies, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v1/organizations/setOrgPolicy)
/// * How-to Guides
/// * [Introduction to the Organization Policy Service](https://docs.cloud.google.com/resource-manager/docs/organization-policy/overview)
///
/// ## Example Usage
///
/// To set policy with a [boolean constraint](https://docs.cloud.google.com/resource-manager/docs/organization-policy/quickstart-boolean-constraints):
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serialPortPolicy = new gcp.organizations.Policy("serial_port_policy", {
/// orgId: "123456789",
/// constraint: "compute.disableSerialPortAccess",
/// booleanPolicy: {
/// enforced: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// serial_port_policy = gcp.organizations.Policy("serial_port_policy",
/// org_id="123456789",
/// constraint="compute.disableSerialPortAccess",
/// boolean_policy={
/// "enforced": True,
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
/// var serialPortPolicy = new Gcp.Organizations.Policy("serial_port_policy", new()
/// {
/// OrgId = "123456789",
/// Constraint = "compute.disableSerialPortAccess",
/// BooleanPolicy = new Gcp.Organizations.Inputs.PolicyBooleanPolicyArgs
/// {
/// Enforced = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.NewPolicy(ctx, "serial_port_policy", &organizations.PolicyArgs{
/// OrgId:      pulumi.String("123456789"),
/// Constraint: pulumi.String("compute.disableSerialPortAccess"),
/// BooleanPolicy: &organizations.PolicyBooleanPolicyArgs{
/// Enforced: pulumi.Bool(true),
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
/// import com.pulumi.gcp.organizations.Policy;
/// import com.pulumi.gcp.organizations.PolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.PolicyBooleanPolicyArgs;
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
/// var serialPortPolicy = new Policy("serialPortPolicy", PolicyArgs.builder()
/// .orgId("123456789")
/// .constraint("compute.disableSerialPortAccess")
/// .booleanPolicy(PolicyBooleanPolicyArgs.builder()
/// .enforced(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// serialPortPolicy:
/// type: gcp:organizations:Policy
/// name: serial_port_policy
/// properties:
/// orgId: '123456789'
/// constraint: compute.disableSerialPortAccess
/// booleanPolicy:
/// enforced: true
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// To set a policy with a [list constraint](https://docs.cloud.google.com/resource-manager/docs/organization-policy/quickstart-list-constraints):
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicesPolicy = new gcp.organizations.Policy("services_policy", {
/// orgId: "123456789",
/// constraint: "serviceuser.services",
/// listPolicy: {
/// allow: {
/// all: true,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// services_policy = gcp.organizations.Policy("services_policy",
/// org_id="123456789",
/// constraint="serviceuser.services",
/// list_policy={
/// "allow": {
/// "all": True,
/// },
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
/// var servicesPolicy = new Gcp.Organizations.Policy("services_policy", new()
/// {
/// OrgId = "123456789",
/// Constraint = "serviceuser.services",
/// ListPolicy = new Gcp.Organizations.Inputs.PolicyListPolicyArgs
/// {
/// Allow = new Gcp.Organizations.Inputs.PolicyListPolicyAllowArgs
/// {
/// All = true,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.NewPolicy(ctx, "services_policy", &organizations.PolicyArgs{
/// OrgId:      pulumi.String("123456789"),
/// Constraint: pulumi.String("serviceuser.services"),
/// ListPolicy: &organizations.PolicyListPolicyArgs{
/// Allow: &organizations.PolicyListPolicyAllowArgs{
/// All: pulumi.Bool(true),
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
/// import com.pulumi.gcp.organizations.Policy;
/// import com.pulumi.gcp.organizations.PolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.PolicyListPolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.PolicyListPolicyAllowArgs;
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
/// var servicesPolicy = new Policy("servicesPolicy", PolicyArgs.builder()
/// .orgId("123456789")
/// .constraint("serviceuser.services")
/// .listPolicy(PolicyListPolicyArgs.builder()
/// .allow(PolicyListPolicyAllowArgs.builder()
/// .all(true)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// servicesPolicy:
/// type: gcp:organizations:Policy
/// name: services_policy
/// properties:
/// orgId: '123456789'
/// constraint: serviceuser.services
/// listPolicy:
/// allow:
/// all: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Or to deny some services, use the following instead:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicesPolicy = new gcp.organizations.Policy("services_policy", {
/// orgId: "123456789",
/// constraint: "serviceuser.services",
/// listPolicy: {
/// suggestedValue: "compute.googleapis.com",
/// deny: {
/// values: ["cloudresourcemanager.googleapis.com"],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// services_policy = gcp.organizations.Policy("services_policy",
/// org_id="123456789",
/// constraint="serviceuser.services",
/// list_policy={
/// "suggested_value": "compute.googleapis.com",
/// "deny": {
/// "values": ["cloudresourcemanager.googleapis.com"],
/// },
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
/// var servicesPolicy = new Gcp.Organizations.Policy("services_policy", new()
/// {
/// OrgId = "123456789",
/// Constraint = "serviceuser.services",
/// ListPolicy = new Gcp.Organizations.Inputs.PolicyListPolicyArgs
/// {
/// SuggestedValue = "compute.googleapis.com",
/// Deny = new Gcp.Organizations.Inputs.PolicyListPolicyDenyArgs
/// {
/// Values = new[]
/// {
/// "cloudresourcemanager.googleapis.com",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.NewPolicy(ctx, "services_policy", &organizations.PolicyArgs{
/// OrgId:      pulumi.String("123456789"),
/// Constraint: pulumi.String("serviceuser.services"),
/// ListPolicy: &organizations.PolicyListPolicyArgs{
/// SuggestedValue: pulumi.String("compute.googleapis.com"),
/// Deny: &organizations.PolicyListPolicyDenyArgs{
/// Values: pulumi.StringArray{
/// pulumi.String("cloudresourcemanager.googleapis.com"),
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
/// import com.pulumi.gcp.organizations.Policy;
/// import com.pulumi.gcp.organizations.PolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.PolicyListPolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.PolicyListPolicyDenyArgs;
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
/// var servicesPolicy = new Policy("servicesPolicy", PolicyArgs.builder()
/// .orgId("123456789")
/// .constraint("serviceuser.services")
/// .listPolicy(PolicyListPolicyArgs.builder()
/// .suggestedValue("compute.googleapis.com")
/// .deny(PolicyListPolicyDenyArgs.builder()
/// .values("cloudresourcemanager.googleapis.com")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// servicesPolicy:
/// type: gcp:organizations:Policy
/// name: services_policy
/// properties:
/// orgId: '123456789'
/// constraint: serviceuser.services
/// listPolicy:
/// suggestedValue: compute.googleapis.com
/// deny:
/// values:
/// - cloudresourcemanager.googleapis.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// To restore the default organization policy, use the following instead:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicesPolicy = new gcp.organizations.Policy("services_policy", {
/// orgId: "123456789",
/// constraint: "serviceuser.services",
/// restorePolicy: {
/// "default": true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// services_policy = gcp.organizations.Policy("services_policy",
/// org_id="123456789",
/// constraint="serviceuser.services",
/// restore_policy={
/// "default": True,
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
/// var servicesPolicy = new Gcp.Organizations.Policy("services_policy", new()
/// {
/// OrgId = "123456789",
/// Constraint = "serviceuser.services",
/// RestorePolicy = new Gcp.Organizations.Inputs.PolicyRestorePolicyArgs
/// {
/// Default = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.NewPolicy(ctx, "services_policy", &organizations.PolicyArgs{
/// OrgId:      pulumi.String("123456789"),
/// Constraint: pulumi.String("serviceuser.services"),
/// RestorePolicy: &organizations.PolicyRestorePolicyArgs{
/// Default: pulumi.Bool(true),
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
/// import com.pulumi.gcp.organizations.Policy;
/// import com.pulumi.gcp.organizations.PolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.PolicyRestorePolicyArgs;
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
/// var servicesPolicy = new Policy("servicesPolicy", PolicyArgs.builder()
/// .orgId("123456789")
/// .constraint("serviceuser.services")
/// .restorePolicy(PolicyRestorePolicyArgs.builder()
/// .default_(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// servicesPolicy:
/// type: gcp:organizations:Policy
/// name: services_policy
/// properties:
/// orgId: '123456789'
/// constraint: serviceuser.services
/// restorePolicy:
/// default: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Organization Policies can be imported using the `org_id` and the `constraint`, e.g.
///
/// * `{{org_id}}/constraints/{{constraint}}`
///
/// When using the `pulumi import` command, Organization Policies can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:organizations/policy:Policy default {{org_id}}/constraints/{{constraint}}
/// ```
///
/// It is all right if the constraint contains a slash, as in the example above.
class Policy3 extends CustomResource {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented
  /// below.
  late final Output<PolicyBooleanPolicy?> booleanPolicy;

  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  late final Output<String> constraint;

  /// (Computed) The etag of the organization policy. <span pulumi-lang-nodejs="`etag`" pulumi-lang-dotnet="`Etag`" pulumi-lang-go="`etag`" pulumi-lang-python="`etag`" pulumi-lang-yaml="`etag`" pulumi-lang-java="`etag`">`etag`</span> is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other.
  late final Output<String> etag;

  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  late final Output<PolicyListPolicy?> listPolicy;

  /// The numeric ID of the organization to set the policy for.
  late final Output<String> orgId;

  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [<span pulumi-lang-nodejs="`booleanPolicy`" pulumi-lang-dotnet="`BooleanPolicy`" pulumi-lang-go="`booleanPolicy`" pulumi-lang-python="`boolean_policy`" pulumi-lang-yaml="`booleanPolicy`" pulumi-lang-java="`booleanPolicy`">`boolean_policy`</span>, <span pulumi-lang-nodejs="`listPolicy`" pulumi-lang-dotnet="`ListPolicy`" pulumi-lang-go="`listPolicy`" pulumi-lang-python="`list_policy`" pulumi-lang-yaml="`listPolicy`" pulumi-lang-java="`listPolicy`">`list_policy`</span>, <span pulumi-lang-nodejs="`restorePolicy`" pulumi-lang-dotnet="`RestorePolicy`" pulumi-lang-go="`restorePolicy`" pulumi-lang-python="`restore_policy`" pulumi-lang-yaml="`restorePolicy`" pulumi-lang-java="`restorePolicy`">`restore_policy`</span>] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  late final Output<PolicyRestorePolicy?> restorePolicy;

  /// (Computed) The timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds, representing when the variable was last updated. Example: "2016-10-09T12:33:37.578138407Z".
  late final Output<String> updateTime;

  /// Version of the Policy. Default version is 0.
  late final Output<int> version;

  Policy3(
    String name, {
    PolicyArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/policy:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.booleanPolicy = registerOutput<PolicyBooleanPolicy?>('booleanPolicy');
    this.constraint = registerOutput<String>('constraint');
    this.etag = registerOutput<String>('etag');
    this.listPolicy = registerOutput<PolicyListPolicy?>('listPolicy');
    this.orgId = registerOutput<String>('orgId');
    this.restorePolicy = registerOutput<PolicyRestorePolicy?>('restorePolicy');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<int>('version');
  }
}
