import 'package:pulumi/pulumi.dart';
import '../organization_policy_boolean_policy/organization_policy_boolean_policy.dart';
import '../organization_policy_list_policy/organization_policy_list_policy.dart';
import '../organization_policy_restore_policy/organization_policy_restore_policy.dart';
import 'organization_policy_args.dart';

/// Allows management of Organization Policies for a Google Cloud Folder.
///
/// > **Warning:** This resource has been superseded by <span pulumi-lang-nodejs="`gcp.orgpolicy.Policy`" pulumi-lang-dotnet="`gcp.orgpolicy.Policy`" pulumi-lang-go="`orgpolicy.Policy`" pulumi-lang-python="`orgpolicy.Policy`" pulumi-lang-yaml="`gcp.orgpolicy.Policy`" pulumi-lang-java="`gcp.orgpolicy.Policy`">`gcp.orgpolicy.Policy`</span>. <span pulumi-lang-nodejs="`gcp.orgpolicy.Policy`" pulumi-lang-dotnet="`gcp.orgpolicy.Policy`" pulumi-lang-go="`orgpolicy.Policy`" pulumi-lang-python="`orgpolicy.Policy`" pulumi-lang-yaml="`gcp.orgpolicy.Policy`" pulumi-lang-java="`gcp.orgpolicy.Policy`">`gcp.orgpolicy.Policy`</span> uses Organization Policy API V2 instead of Cloud Resource Manager API V1 and it supports additional features such as tags and conditions.
///
/// To get more information about Organization Policies, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v1/folders/setOrgPolicy)
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
/// const serialPortPolicy = new gcp.folder.OrganizationPolicy("serial_port_policy", {
/// folder: "folders/123456789",
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
/// serial_port_policy = gcp.folder.OrganizationPolicy("serial_port_policy",
/// folder="folders/123456789",
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
/// var serialPortPolicy = new Gcp.Folder.OrganizationPolicy("serial_port_policy", new()
/// {
/// Folder = "folders/123456789",
/// Constraint = "compute.disableSerialPortAccess",
/// BooleanPolicy = new Gcp.Folder.Inputs.OrganizationPolicyBooleanPolicyArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewOrganizationPolicy(ctx, "serial_port_policy", &folder.OrganizationPolicyArgs{
/// Folder:     pulumi.String("folders/123456789"),
/// Constraint: pulumi.String("compute.disableSerialPortAccess"),
/// BooleanPolicy: &folder.OrganizationPolicyBooleanPolicyArgs{
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
/// import com.pulumi.gcp.folder.OrganizationPolicy;
/// import com.pulumi.gcp.folder.OrganizationPolicyArgs;
/// import com.pulumi.gcp.folder.inputs.OrganizationPolicyBooleanPolicyArgs;
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
/// var serialPortPolicy = new OrganizationPolicy("serialPortPolicy", OrganizationPolicyArgs.builder()
/// .folder("folders/123456789")
/// .constraint("compute.disableSerialPortAccess")
/// .booleanPolicy(OrganizationPolicyBooleanPolicyArgs.builder()
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
/// type: gcp:folder:OrganizationPolicy
/// name: serial_port_policy
/// properties:
/// folder: folders/123456789
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
/// const servicesPolicy = new gcp.folder.OrganizationPolicy("services_policy", {
/// folder: "folders/123456789",
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
/// services_policy = gcp.folder.OrganizationPolicy("services_policy",
/// folder="folders/123456789",
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
/// var servicesPolicy = new Gcp.Folder.OrganizationPolicy("services_policy", new()
/// {
/// Folder = "folders/123456789",
/// Constraint = "serviceuser.services",
/// ListPolicy = new Gcp.Folder.Inputs.OrganizationPolicyListPolicyArgs
/// {
/// Allow = new Gcp.Folder.Inputs.OrganizationPolicyListPolicyAllowArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewOrganizationPolicy(ctx, "services_policy", &folder.OrganizationPolicyArgs{
/// Folder:     pulumi.String("folders/123456789"),
/// Constraint: pulumi.String("serviceuser.services"),
/// ListPolicy: &folder.OrganizationPolicyListPolicyArgs{
/// Allow: &folder.OrganizationPolicyListPolicyAllowArgs{
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
/// import com.pulumi.gcp.folder.OrganizationPolicy;
/// import com.pulumi.gcp.folder.OrganizationPolicyArgs;
/// import com.pulumi.gcp.folder.inputs.OrganizationPolicyListPolicyArgs;
/// import com.pulumi.gcp.folder.inputs.OrganizationPolicyListPolicyAllowArgs;
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
/// var servicesPolicy = new OrganizationPolicy("servicesPolicy", OrganizationPolicyArgs.builder()
/// .folder("folders/123456789")
/// .constraint("serviceuser.services")
/// .listPolicy(OrganizationPolicyListPolicyArgs.builder()
/// .allow(OrganizationPolicyListPolicyAllowArgs.builder()
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
/// type: gcp:folder:OrganizationPolicy
/// name: services_policy
/// properties:
/// folder: folders/123456789
/// constraint: serviceuser.services
/// listPolicy:
/// allow:
/// all: true
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// Or to deny some services, use the following instead:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicesPolicy = new gcp.folder.OrganizationPolicy("services_policy", {
/// folder: "folders/123456789",
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
/// services_policy = gcp.folder.OrganizationPolicy("services_policy",
/// folder="folders/123456789",
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
/// var servicesPolicy = new Gcp.Folder.OrganizationPolicy("services_policy", new()
/// {
/// Folder = "folders/123456789",
/// Constraint = "serviceuser.services",
/// ListPolicy = new Gcp.Folder.Inputs.OrganizationPolicyListPolicyArgs
/// {
/// SuggestedValue = "compute.googleapis.com",
/// Deny = new Gcp.Folder.Inputs.OrganizationPolicyListPolicyDenyArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewOrganizationPolicy(ctx, "services_policy", &folder.OrganizationPolicyArgs{
/// Folder:     pulumi.String("folders/123456789"),
/// Constraint: pulumi.String("serviceuser.services"),
/// ListPolicy: &folder.OrganizationPolicyListPolicyArgs{
/// SuggestedValue: pulumi.String("compute.googleapis.com"),
/// Deny: &folder.OrganizationPolicyListPolicyDenyArgs{
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
/// import com.pulumi.gcp.folder.OrganizationPolicy;
/// import com.pulumi.gcp.folder.OrganizationPolicyArgs;
/// import com.pulumi.gcp.folder.inputs.OrganizationPolicyListPolicyArgs;
/// import com.pulumi.gcp.folder.inputs.OrganizationPolicyListPolicyDenyArgs;
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
/// var servicesPolicy = new OrganizationPolicy("servicesPolicy", OrganizationPolicyArgs.builder()
/// .folder("folders/123456789")
/// .constraint("serviceuser.services")
/// .listPolicy(OrganizationPolicyListPolicyArgs.builder()
/// .suggestedValue("compute.googleapis.com")
/// .deny(OrganizationPolicyListPolicyDenyArgs.builder()
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
/// type: gcp:folder:OrganizationPolicy
/// name: services_policy
/// properties:
/// folder: folders/123456789
/// constraint: serviceuser.services
/// listPolicy:
/// suggestedValue: compute.googleapis.com
/// deny:
/// values:
/// - cloudresourcemanager.googleapis.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// To restore the default folder organization policy, use the following instead:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicesPolicy = new gcp.folder.OrganizationPolicy("services_policy", {
/// folder: "folders/123456789",
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
/// services_policy = gcp.folder.OrganizationPolicy("services_policy",
/// folder="folders/123456789",
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
/// var servicesPolicy = new Gcp.Folder.OrganizationPolicy("services_policy", new()
/// {
/// Folder = "folders/123456789",
/// Constraint = "serviceuser.services",
/// RestorePolicy = new Gcp.Folder.Inputs.OrganizationPolicyRestorePolicyArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.NewOrganizationPolicy(ctx, "services_policy", &folder.OrganizationPolicyArgs{
/// Folder:     pulumi.String("folders/123456789"),
/// Constraint: pulumi.String("serviceuser.services"),
/// RestorePolicy: &folder.OrganizationPolicyRestorePolicyArgs{
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
/// import com.pulumi.gcp.folder.OrganizationPolicy;
/// import com.pulumi.gcp.folder.OrganizationPolicyArgs;
/// import com.pulumi.gcp.folder.inputs.OrganizationPolicyRestorePolicyArgs;
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
/// var servicesPolicy = new OrganizationPolicy("servicesPolicy", OrganizationPolicyArgs.builder()
/// .folder("folders/123456789")
/// .constraint("serviceuser.services")
/// .restorePolicy(OrganizationPolicyRestorePolicyArgs.builder()
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
/// type: gcp:folder:OrganizationPolicy
/// name: services_policy
/// properties:
/// folder: folders/123456789
/// constraint: serviceuser.services
/// restorePolicy:
/// default: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Folder organization policies can be imported using any of the follow formats:
///
/// * `folders/{{folder_id}}/constraints/serviceuser.services`
///
/// * `{{folder_id}}/serviceuser.services`
///
/// When using the `pulumi import` command, folder organization policies can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:folder/organizationPolicy:OrganizationPolicy * `google_folder_organization_policy.default folders/* ``{{folder_id}}/constraints/serviceuser.services`
/// ```
///
/// ```sh
/// $ pulumi import gcp:folder/organizationPolicy:OrganizationPolicy * `* `google_folder_organization_policy.default {{folder_id}}/``serviceuser.services
/// ```
class OrganizationPolicy extends CustomResource {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  late final Output<OrganizationPolicyBooleanPolicy?> booleanPolicy;

  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  late final Output<String> constraint;

  /// (Computed) The etag of the organization policy. <span pulumi-lang-nodejs="`etag`" pulumi-lang-dotnet="`Etag`" pulumi-lang-go="`etag`" pulumi-lang-python="`etag`" pulumi-lang-yaml="`etag`" pulumi-lang-java="`etag`">`etag`</span> is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other.
  late final Output<String> etag;

  /// The resource name of the folder to set the policy for. Its format is folders/{folder_id}.
  late final Output<String> folder;

  /// A policy that can define specific values that are allowed or denied for the given constraint. It
  /// can also be used to allow or deny all values. Structure is documented below.
  late final Output<OrganizationPolicyListPolicy?> listPolicy;

  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// > **Note:** If none of [<span pulumi-lang-nodejs="`booleanPolicy`" pulumi-lang-dotnet="`BooleanPolicy`" pulumi-lang-go="`booleanPolicy`" pulumi-lang-python="`boolean_policy`" pulumi-lang-yaml="`booleanPolicy`" pulumi-lang-java="`booleanPolicy`">`boolean_policy`</span>, <span pulumi-lang-nodejs="`listPolicy`" pulumi-lang-dotnet="`ListPolicy`" pulumi-lang-go="`listPolicy`" pulumi-lang-python="`list_policy`" pulumi-lang-yaml="`listPolicy`" pulumi-lang-java="`listPolicy`">`list_policy`</span>, <span pulumi-lang-nodejs="`restorePolicy`" pulumi-lang-dotnet="`RestorePolicy`" pulumi-lang-go="`restorePolicy`" pulumi-lang-python="`restore_policy`" pulumi-lang-yaml="`restorePolicy`" pulumi-lang-java="`restorePolicy`">`restore_policy`</span>] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  ///
  /// - - -
  late final Output<OrganizationPolicyRestorePolicy?> restorePolicy;

  /// (Computed) The timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds, representing when the variable was last updated. Example: "2016-10-09T12:33:37.578138407Z".
  late final Output<String> updateTime;

  /// Version of the Policy. Default version is 0.
  late final Output<int> version;

  OrganizationPolicy(
    String name, {
    OrganizationPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:folder/organizationPolicy:OrganizationPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.booleanPolicy =
        registerOutput<OrganizationPolicyBooleanPolicy?>('booleanPolicy');
    this.constraint = registerOutput<String>('constraint');
    this.etag = registerOutput<String>('etag');
    this.folder = registerOutput<String>('folder');
    this.listPolicy =
        registerOutput<OrganizationPolicyListPolicy?>('listPolicy');
    this.restorePolicy =
        registerOutput<OrganizationPolicyRestorePolicy?>('restorePolicy');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<int>('version');
  }
}
