import 'package:pulumi/pulumi.dart';
import '../instance_iammember_condition/instance_iammember_condition2.dart';
import 'instance_iammember_args2.dart';

/// Three different resources help you manage your IAM policy for a Spanner instance. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.spanner.InstanceIAMPolicy`" pulumi-lang-dotnet="`gcp.spanner.InstanceIAMPolicy`" pulumi-lang-go="`spanner.InstanceIAMPolicy`" pulumi-lang-python="`spanner.InstanceIAMPolicy`" pulumi-lang-yaml="`gcp.spanner.InstanceIAMPolicy`" pulumi-lang-java="`gcp.spanner.InstanceIAMPolicy`">`gcp.spanner.InstanceIAMPolicy`</span>: Authoritative. Sets the IAM policy for the instance and replaces any existing policy already attached.
///
/// > **Warning:** It's entirely possibly to lock yourself out of your instance using <span pulumi-lang-nodejs="`gcp.spanner.InstanceIAMPolicy`" pulumi-lang-dotnet="`gcp.spanner.InstanceIAMPolicy`" pulumi-lang-go="`spanner.InstanceIAMPolicy`" pulumi-lang-python="`spanner.InstanceIAMPolicy`" pulumi-lang-yaml="`gcp.spanner.InstanceIAMPolicy`" pulumi-lang-java="`gcp.spanner.InstanceIAMPolicy`">`gcp.spanner.InstanceIAMPolicy`</span>. Any permissions granted by default will be removed unless you include them in your config.
///
/// * <span pulumi-lang-nodejs="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-dotnet="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-go="`spanner.InstanceIAMBinding`" pulumi-lang-python="`spanner.InstanceIAMBinding`" pulumi-lang-yaml="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-java="`gcp.spanner.InstanceIAMBinding`">`gcp.spanner.InstanceIAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the instance are preserved.
/// * <span pulumi-lang-nodejs="`gcp.spanner.InstanceIAMMember`" pulumi-lang-dotnet="`gcp.spanner.InstanceIAMMember`" pulumi-lang-go="`spanner.InstanceIAMMember`" pulumi-lang-python="`spanner.InstanceIAMMember`" pulumi-lang-yaml="`gcp.spanner.InstanceIAMMember`" pulumi-lang-java="`gcp.spanner.InstanceIAMMember`">`gcp.spanner.InstanceIAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the instance are preserved.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.spanner.InstanceIAMPolicy`" pulumi-lang-dotnet="`gcp.spanner.InstanceIAMPolicy`" pulumi-lang-go="`spanner.InstanceIAMPolicy`" pulumi-lang-python="`spanner.InstanceIAMPolicy`" pulumi-lang-yaml="`gcp.spanner.InstanceIAMPolicy`" pulumi-lang-java="`gcp.spanner.InstanceIAMPolicy`">`gcp.spanner.InstanceIAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-dotnet="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-go="`spanner.InstanceIAMBinding`" pulumi-lang-python="`spanner.InstanceIAMBinding`" pulumi-lang-yaml="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-java="`gcp.spanner.InstanceIAMBinding`">`gcp.spanner.InstanceIAMBinding`</span> and <span pulumi-lang-nodejs="`gcp.spanner.InstanceIAMMember`" pulumi-lang-dotnet="`gcp.spanner.InstanceIAMMember`" pulumi-lang-go="`spanner.InstanceIAMMember`" pulumi-lang-python="`spanner.InstanceIAMMember`" pulumi-lang-yaml="`gcp.spanner.InstanceIAMMember`" pulumi-lang-java="`gcp.spanner.InstanceIAMMember`">`gcp.spanner.InstanceIAMMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-dotnet="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-go="`spanner.InstanceIAMBinding`" pulumi-lang-python="`spanner.InstanceIAMBinding`" pulumi-lang-yaml="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-java="`gcp.spanner.InstanceIAMBinding`">`gcp.spanner.InstanceIAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.spanner.InstanceIAMMember`" pulumi-lang-dotnet="`gcp.spanner.InstanceIAMMember`" pulumi-lang-go="`spanner.InstanceIAMMember`" pulumi-lang-python="`spanner.InstanceIAMMember`" pulumi-lang-yaml="`gcp.spanner.InstanceIAMMember`" pulumi-lang-java="`gcp.spanner.InstanceIAMMember`">`gcp.spanner.InstanceIAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// ##<span pulumi-lang-nodejs=" gcp.spanner.InstanceIAMPolicy
/// " pulumi-lang-dotnet=" gcp.spanner.InstanceIAMPolicy
/// " pulumi-lang-go=" spanner.InstanceIAMPolicy
/// " pulumi-lang-python=" spanner.InstanceIAMPolicy
/// " pulumi-lang-yaml=" gcp.spanner.InstanceIAMPolicy
/// " pulumi-lang-java=" gcp.spanner.InstanceIAMPolicy
/// "> gcp.spanner.InstanceIAMPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const instance = new gcp.spanner.InstanceIAMPolicy("instance", {
/// instance: "your-instance-name",
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/editor",
/// "members": ["user:jane@example.com"],
/// }])
/// instance = gcp.spanner.InstanceIAMPolicy("instance",
/// instance="your-instance-name",
/// policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/editor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var instance = new Gcp.Spanner.InstanceIAMPolicy("instance", new()
/// {
/// Instance = "your-instance-name",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/editor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = spanner.NewInstanceIAMPolicy(ctx, "instance", &spanner.InstanceIAMPolicyArgs{
/// Instance:   pulumi.String("your-instance-name"),
/// PolicyData: pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.spanner.InstanceIAMPolicy;
/// import com.pulumi.gcp.spanner.InstanceIAMPolicyArgs;
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
/// final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var instance = new InstanceIAMPolicy("instance", InstanceIAMPolicyArgs.builder()
/// .instance("your-instance-name")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:spanner:InstanceIAMPolicy
/// properties:
/// instance: your-instance-name
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.spanner.InstanceIAMBinding
/// " pulumi-lang-dotnet=" gcp.spanner.InstanceIAMBinding
/// " pulumi-lang-go=" spanner.InstanceIAMBinding
/// " pulumi-lang-python=" spanner.InstanceIAMBinding
/// " pulumi-lang-yaml=" gcp.spanner.InstanceIAMBinding
/// " pulumi-lang-java=" gcp.spanner.InstanceIAMBinding
/// "> gcp.spanner.InstanceIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.spanner.InstanceIAMBinding("instance", {
/// instance: "your-instance-name",
/// role: "roles/spanner.databaseAdmin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.spanner.InstanceIAMBinding("instance",
/// instance="your-instance-name",
/// role="roles/spanner.databaseAdmin",
/// members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var instance = new Gcp.Spanner.InstanceIAMBinding("instance", new()
/// {
/// Instance = "your-instance-name",
/// Role = "roles/spanner.databaseAdmin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := spanner.NewInstanceIAMBinding(ctx, "instance", &spanner.InstanceIAMBindingArgs{
/// Instance: pulumi.String("your-instance-name"),
/// Role:     pulumi.String("roles/spanner.databaseAdmin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.spanner.InstanceIAMBinding;
/// import com.pulumi.gcp.spanner.InstanceIAMBindingArgs;
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
/// var instance = new InstanceIAMBinding("instance", InstanceIAMBindingArgs.builder()
/// .instance("your-instance-name")
/// .role("roles/spanner.databaseAdmin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:spanner:InstanceIAMBinding
/// properties:
/// instance: your-instance-name
/// role: roles/spanner.databaseAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.spanner.InstanceIAMMember
/// " pulumi-lang-dotnet=" gcp.spanner.InstanceIAMMember
/// " pulumi-lang-go=" spanner.InstanceIAMMember
/// " pulumi-lang-python=" spanner.InstanceIAMMember
/// " pulumi-lang-yaml=" gcp.spanner.InstanceIAMMember
/// " pulumi-lang-java=" gcp.spanner.InstanceIAMMember
/// "> gcp.spanner.InstanceIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.spanner.InstanceIAMMember("instance", {
/// instance: "your-instance-name",
/// role: "roles/spanner.databaseAdmin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.spanner.InstanceIAMMember("instance",
/// instance="your-instance-name",
/// role="roles/spanner.databaseAdmin",
/// member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var instance = new Gcp.Spanner.InstanceIAMMember("instance", new()
/// {
/// Instance = "your-instance-name",
/// Role = "roles/spanner.databaseAdmin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := spanner.NewInstanceIAMMember(ctx, "instance", &spanner.InstanceIAMMemberArgs{
/// Instance: pulumi.String("your-instance-name"),
/// Role:     pulumi.String("roles/spanner.databaseAdmin"),
/// Member:   pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.spanner.InstanceIAMMember;
/// import com.pulumi.gcp.spanner.InstanceIAMMemberArgs;
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
/// var instance = new InstanceIAMMember("instance", InstanceIAMMemberArgs.builder()
/// .instance("your-instance-name")
/// .role("roles/spanner.databaseAdmin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:spanner:InstanceIAMMember
/// properties:
/// instance: your-instance-name
/// role: roles/spanner.databaseAdmin
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.spanner.InstanceIAMBinding
/// " pulumi-lang-dotnet=" gcp.spanner.InstanceIAMBinding
/// " pulumi-lang-go=" spanner.InstanceIAMBinding
/// " pulumi-lang-python=" spanner.InstanceIAMBinding
/// " pulumi-lang-yaml=" gcp.spanner.InstanceIAMBinding
/// " pulumi-lang-java=" gcp.spanner.InstanceIAMBinding
/// "> gcp.spanner.InstanceIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.spanner.InstanceIAMBinding("instance", {
/// instance: "your-instance-name",
/// role: "roles/spanner.databaseAdmin",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.spanner.InstanceIAMBinding("instance",
/// instance="your-instance-name",
/// role="roles/spanner.databaseAdmin",
/// members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var instance = new Gcp.Spanner.InstanceIAMBinding("instance", new()
/// {
/// Instance = "your-instance-name",
/// Role = "roles/spanner.databaseAdmin",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := spanner.NewInstanceIAMBinding(ctx, "instance", &spanner.InstanceIAMBindingArgs{
/// Instance: pulumi.String("your-instance-name"),
/// Role:     pulumi.String("roles/spanner.databaseAdmin"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.spanner.InstanceIAMBinding;
/// import com.pulumi.gcp.spanner.InstanceIAMBindingArgs;
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
/// var instance = new InstanceIAMBinding("instance", InstanceIAMBindingArgs.builder()
/// .instance("your-instance-name")
/// .role("roles/spanner.databaseAdmin")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:spanner:InstanceIAMBinding
/// properties:
/// instance: your-instance-name
/// role: roles/spanner.databaseAdmin
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.spanner.InstanceIAMMember
/// " pulumi-lang-dotnet=" gcp.spanner.InstanceIAMMember
/// " pulumi-lang-go=" spanner.InstanceIAMMember
/// " pulumi-lang-python=" spanner.InstanceIAMMember
/// " pulumi-lang-yaml=" gcp.spanner.InstanceIAMMember
/// " pulumi-lang-java=" gcp.spanner.InstanceIAMMember
/// "> gcp.spanner.InstanceIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.spanner.InstanceIAMMember("instance", {
/// instance: "your-instance-name",
/// role: "roles/spanner.databaseAdmin",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.spanner.InstanceIAMMember("instance",
/// instance="your-instance-name",
/// role="roles/spanner.databaseAdmin",
/// member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var instance = new Gcp.Spanner.InstanceIAMMember("instance", new()
/// {
/// Instance = "your-instance-name",
/// Role = "roles/spanner.databaseAdmin",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := spanner.NewInstanceIAMMember(ctx, "instance", &spanner.InstanceIAMMemberArgs{
/// Instance: pulumi.String("your-instance-name"),
/// Role:     pulumi.String("roles/spanner.databaseAdmin"),
/// Member:   pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.spanner.InstanceIAMMember;
/// import com.pulumi.gcp.spanner.InstanceIAMMemberArgs;
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
/// var instance = new InstanceIAMMember("instance", InstanceIAMMemberArgs.builder()
/// .instance("your-instance-name")
/// .role("roles/spanner.databaseAdmin")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:spanner:InstanceIAMMember
/// properties:
/// instance: your-instance-name
/// role: roles/spanner.databaseAdmin
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Spanner Instances resource . For example:
///
/// * `{{project}}/{{instance}}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = {{project}}/{{instance}}
///
/// to = google_spanner_instance_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:spanner/instanceIAMMember:InstanceIAMMember default {{project}}/{{instance}}
/// ```
class InstanceIAMMember2 extends CustomResource {
  late final Output<InstanceIAMMemberCondition2?> condition;

  /// (Computed) The etag of the instance's IAM policy.
  late final Output<String> etag;

  /// The name of the instance.
  late final Output<String> instance;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **principal:{principal}**: Federated single identity. For example, principal://iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/PROJECT_ID.svc.id.goog/subject/ns/NAMESPACE/sa/SERVICEACCOUNT
  /// * **principalSet:{principalSet}**: Federated identity group. For example, principalSet://iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/PROJECT_ID.svc.id.goog/namespace/NAMESPACE
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final Output<String> member;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-dotnet="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-go="`spanner.InstanceIAMBinding`" pulumi-lang-python="`spanner.InstanceIAMBinding`" pulumi-lang-yaml="`gcp.spanner.InstanceIAMBinding`" pulumi-lang-java="`gcp.spanner.InstanceIAMBinding`">`gcp.spanner.InstanceIAMBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  InstanceIAMMember2(
    String name, {
    InstanceIAMMemberArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/instanceIAMMember:InstanceIAMMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<InstanceIAMMemberCondition2?>('condition');
    this.etag = registerOutput<String>('etag');
    this.instance = registerOutput<String>('instance');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
