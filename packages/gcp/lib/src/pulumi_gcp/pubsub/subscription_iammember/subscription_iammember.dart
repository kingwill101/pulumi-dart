import 'package:pulumi/pulumi.dart';
import '../subscription_iammember_condition/subscription_iammember_condition.dart';
import 'subscription_iammember_args.dart';

/// Three different resources help you manage your IAM policy for pubsub subscription. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.pubsub.SubscriptionIAMPolicy`" pulumi-lang-dotnet="`gcp.pubsub.SubscriptionIAMPolicy`" pulumi-lang-go="`pubsub.SubscriptionIAMPolicy`" pulumi-lang-python="`pubsub.SubscriptionIAMPolicy`" pulumi-lang-yaml="`gcp.pubsub.SubscriptionIAMPolicy`" pulumi-lang-java="`gcp.pubsub.SubscriptionIAMPolicy`">`gcp.pubsub.SubscriptionIAMPolicy`</span>: Authoritative. Sets the IAM policy for the subscription and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.pubsub.SubscriptionIAMBinding`" pulumi-lang-dotnet="`gcp.pubsub.SubscriptionIAMBinding`" pulumi-lang-go="`pubsub.SubscriptionIAMBinding`" pulumi-lang-python="`pubsub.SubscriptionIAMBinding`" pulumi-lang-yaml="`gcp.pubsub.SubscriptionIAMBinding`" pulumi-lang-java="`gcp.pubsub.SubscriptionIAMBinding`">`gcp.pubsub.SubscriptionIAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the subscription are preserved.
/// * <span pulumi-lang-nodejs="`gcp.pubsub.SubscriptionIAMMember`" pulumi-lang-dotnet="`gcp.pubsub.SubscriptionIAMMember`" pulumi-lang-go="`pubsub.SubscriptionIAMMember`" pulumi-lang-python="`pubsub.SubscriptionIAMMember`" pulumi-lang-yaml="`gcp.pubsub.SubscriptionIAMMember`" pulumi-lang-java="`gcp.pubsub.SubscriptionIAMMember`">`gcp.pubsub.SubscriptionIAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the subscription are preserved.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.pubsub.SubscriptionIAMPolicy`" pulumi-lang-dotnet="`gcp.pubsub.SubscriptionIAMPolicy`" pulumi-lang-go="`pubsub.SubscriptionIAMPolicy`" pulumi-lang-python="`pubsub.SubscriptionIAMPolicy`" pulumi-lang-yaml="`gcp.pubsub.SubscriptionIAMPolicy`" pulumi-lang-java="`gcp.pubsub.SubscriptionIAMPolicy`">`gcp.pubsub.SubscriptionIAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.pubsub.SubscriptionIAMBinding`" pulumi-lang-dotnet="`gcp.pubsub.SubscriptionIAMBinding`" pulumi-lang-go="`pubsub.SubscriptionIAMBinding`" pulumi-lang-python="`pubsub.SubscriptionIAMBinding`" pulumi-lang-yaml="`gcp.pubsub.SubscriptionIAMBinding`" pulumi-lang-java="`gcp.pubsub.SubscriptionIAMBinding`">`gcp.pubsub.SubscriptionIAMBinding`</span> and <span pulumi-lang-nodejs="`gcp.pubsub.SubscriptionIAMMember`" pulumi-lang-dotnet="`gcp.pubsub.SubscriptionIAMMember`" pulumi-lang-go="`pubsub.SubscriptionIAMMember`" pulumi-lang-python="`pubsub.SubscriptionIAMMember`" pulumi-lang-yaml="`gcp.pubsub.SubscriptionIAMMember`" pulumi-lang-java="`gcp.pubsub.SubscriptionIAMMember`">`gcp.pubsub.SubscriptionIAMMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.pubsub.SubscriptionIAMBinding`" pulumi-lang-dotnet="`gcp.pubsub.SubscriptionIAMBinding`" pulumi-lang-go="`pubsub.SubscriptionIAMBinding`" pulumi-lang-python="`pubsub.SubscriptionIAMBinding`" pulumi-lang-yaml="`gcp.pubsub.SubscriptionIAMBinding`" pulumi-lang-java="`gcp.pubsub.SubscriptionIAMBinding`">`gcp.pubsub.SubscriptionIAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.pubsub.SubscriptionIAMMember`" pulumi-lang-dotnet="`gcp.pubsub.SubscriptionIAMMember`" pulumi-lang-go="`pubsub.SubscriptionIAMMember`" pulumi-lang-python="`pubsub.SubscriptionIAMMember`" pulumi-lang-yaml="`gcp.pubsub.SubscriptionIAMMember`" pulumi-lang-java="`gcp.pubsub.SubscriptionIAMMember`">`gcp.pubsub.SubscriptionIAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// ##<span pulumi-lang-nodejs=" gcp.pubsub.SubscriptionIAMPolicy
/// " pulumi-lang-dotnet=" gcp.pubsub.SubscriptionIAMPolicy
/// " pulumi-lang-go=" pubsub.SubscriptionIAMPolicy
/// " pulumi-lang-python=" pubsub.SubscriptionIAMPolicy
/// " pulumi-lang-yaml=" gcp.pubsub.SubscriptionIAMPolicy
/// " pulumi-lang-java=" gcp.pubsub.SubscriptionIAMPolicy
/// "> gcp.pubsub.SubscriptionIAMPolicy
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
/// const editor = new gcp.pubsub.SubscriptionIAMPolicy("editor", {
/// subscription: "your-subscription-name",
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
/// editor = gcp.pubsub.SubscriptionIAMPolicy("editor",
/// subscription="your-subscription-name",
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
/// var editor = new Gcp.PubSub.SubscriptionIAMPolicy("editor", new()
/// {
/// Subscription = "your-subscription-name",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
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
/// _, err = pubsub.NewSubscriptionIAMPolicy(ctx, "editor", &pubsub.SubscriptionIAMPolicyArgs{
/// Subscription: pulumi.String("your-subscription-name"),
/// PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.pubsub.SubscriptionIAMPolicy;
/// import com.pulumi.gcp.pubsub.SubscriptionIAMPolicyArgs;
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
/// var editor = new SubscriptionIAMPolicy("editor", SubscriptionIAMPolicyArgs.builder()
/// .subscription("your-subscription-name")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:pubsub:SubscriptionIAMPolicy
/// properties:
/// subscription: your-subscription-name
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
/// ##<span pulumi-lang-nodejs=" gcp.pubsub.SubscriptionIAMBinding
/// " pulumi-lang-dotnet=" gcp.pubsub.SubscriptionIAMBinding
/// " pulumi-lang-go=" pubsub.SubscriptionIAMBinding
/// " pulumi-lang-python=" pubsub.SubscriptionIAMBinding
/// " pulumi-lang-yaml=" gcp.pubsub.SubscriptionIAMBinding
/// " pulumi-lang-java=" gcp.pubsub.SubscriptionIAMBinding
/// "> gcp.pubsub.SubscriptionIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.pubsub.SubscriptionIAMBinding("editor", {
/// subscription: "your-subscription-name",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.pubsub.SubscriptionIAMBinding("editor",
/// subscription="your-subscription-name",
/// role="roles/editor",
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
/// var editor = new Gcp.PubSub.SubscriptionIAMBinding("editor", new()
/// {
/// Subscription = "your-subscription-name",
/// Role = "roles/editor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := pubsub.NewSubscriptionIAMBinding(ctx, "editor", &pubsub.SubscriptionIAMBindingArgs{
/// Subscription: pulumi.String("your-subscription-name"),
/// Role:         pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.pubsub.SubscriptionIAMBinding;
/// import com.pulumi.gcp.pubsub.SubscriptionIAMBindingArgs;
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
/// var editor = new SubscriptionIAMBinding("editor", SubscriptionIAMBindingArgs.builder()
/// .subscription("your-subscription-name")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:pubsub:SubscriptionIAMBinding
/// properties:
/// subscription: your-subscription-name
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.pubsub.SubscriptionIAMMember
/// " pulumi-lang-dotnet=" gcp.pubsub.SubscriptionIAMMember
/// " pulumi-lang-go=" pubsub.SubscriptionIAMMember
/// " pulumi-lang-python=" pubsub.SubscriptionIAMMember
/// " pulumi-lang-yaml=" gcp.pubsub.SubscriptionIAMMember
/// " pulumi-lang-java=" gcp.pubsub.SubscriptionIAMMember
/// "> gcp.pubsub.SubscriptionIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.pubsub.SubscriptionIAMMember("editor", {
/// subscription: "your-subscription-name",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.pubsub.SubscriptionIAMMember("editor",
/// subscription="your-subscription-name",
/// role="roles/editor",
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
/// var editor = new Gcp.PubSub.SubscriptionIAMMember("editor", new()
/// {
/// Subscription = "your-subscription-name",
/// Role = "roles/editor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := pubsub.NewSubscriptionIAMMember(ctx, "editor", &pubsub.SubscriptionIAMMemberArgs{
/// Subscription: pulumi.String("your-subscription-name"),
/// Role:         pulumi.String("roles/editor"),
/// Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.pubsub.SubscriptionIAMMember;
/// import com.pulumi.gcp.pubsub.SubscriptionIAMMemberArgs;
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
/// var editor = new SubscriptionIAMMember("editor", SubscriptionIAMMemberArgs.builder()
/// .subscription("your-subscription-name")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:pubsub:SubscriptionIAMMember
/// properties:
/// subscription: your-subscription-name
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.pubsub.SubscriptionIAMBinding
/// " pulumi-lang-dotnet=" gcp.pubsub.SubscriptionIAMBinding
/// " pulumi-lang-go=" pubsub.SubscriptionIAMBinding
/// " pulumi-lang-python=" pubsub.SubscriptionIAMBinding
/// " pulumi-lang-yaml=" gcp.pubsub.SubscriptionIAMBinding
/// " pulumi-lang-java=" gcp.pubsub.SubscriptionIAMBinding
/// "> gcp.pubsub.SubscriptionIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.pubsub.SubscriptionIAMBinding("editor", {
/// subscription: "your-subscription-name",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.pubsub.SubscriptionIAMBinding("editor",
/// subscription="your-subscription-name",
/// role="roles/editor",
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
/// var editor = new Gcp.PubSub.SubscriptionIAMBinding("editor", new()
/// {
/// Subscription = "your-subscription-name",
/// Role = "roles/editor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := pubsub.NewSubscriptionIAMBinding(ctx, "editor", &pubsub.SubscriptionIAMBindingArgs{
/// Subscription: pulumi.String("your-subscription-name"),
/// Role:         pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.pubsub.SubscriptionIAMBinding;
/// import com.pulumi.gcp.pubsub.SubscriptionIAMBindingArgs;
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
/// var editor = new SubscriptionIAMBinding("editor", SubscriptionIAMBindingArgs.builder()
/// .subscription("your-subscription-name")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:pubsub:SubscriptionIAMBinding
/// properties:
/// subscription: your-subscription-name
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.pubsub.SubscriptionIAMMember
/// " pulumi-lang-dotnet=" gcp.pubsub.SubscriptionIAMMember
/// " pulumi-lang-go=" pubsub.SubscriptionIAMMember
/// " pulumi-lang-python=" pubsub.SubscriptionIAMMember
/// " pulumi-lang-yaml=" gcp.pubsub.SubscriptionIAMMember
/// " pulumi-lang-java=" gcp.pubsub.SubscriptionIAMMember
/// "> gcp.pubsub.SubscriptionIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.pubsub.SubscriptionIAMMember("editor", {
/// subscription: "your-subscription-name",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.pubsub.SubscriptionIAMMember("editor",
/// subscription="your-subscription-name",
/// role="roles/editor",
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
/// var editor = new Gcp.PubSub.SubscriptionIAMMember("editor", new()
/// {
/// Subscription = "your-subscription-name",
/// Role = "roles/editor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := pubsub.NewSubscriptionIAMMember(ctx, "editor", &pubsub.SubscriptionIAMMemberArgs{
/// Subscription: pulumi.String("your-subscription-name"),
/// Role:         pulumi.String("roles/editor"),
/// Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.pubsub.SubscriptionIAMMember;
/// import com.pulumi.gcp.pubsub.SubscriptionIAMMemberArgs;
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
/// var editor = new SubscriptionIAMMember("editor", SubscriptionIAMMemberArgs.builder()
/// .subscription("your-subscription-name")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:pubsub:SubscriptionIAMMember
/// properties:
/// subscription: your-subscription-name
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Pubsub Subscription resource. For example:
///
/// * `"projects/{{project_id}}/subscriptions/{{subscription}}"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "projects/{{project_id}}/subscriptions/{{subscription}}"
///
/// to = google_pubsub_subscription_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:pubsub/subscriptionIAMMember:SubscriptionIAMMember default projects/{{project_id}}/subscriptions/{{subscription}}
/// ```
class SubscriptionIAMMember extends CustomResource {
  late final Output<SubscriptionIAMMemberCondition?> condition;

  /// (Computed) The etag of the subscription's IAM policy.
  late final Output<String> etag;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final Output<String> member;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.pubsub.SubscriptionIAMBinding`" pulumi-lang-dotnet="`gcp.pubsub.SubscriptionIAMBinding`" pulumi-lang-go="`pubsub.SubscriptionIAMBinding`" pulumi-lang-python="`pubsub.SubscriptionIAMBinding`" pulumi-lang-yaml="`gcp.pubsub.SubscriptionIAMBinding`" pulumi-lang-java="`gcp.pubsub.SubscriptionIAMBinding`">`gcp.pubsub.SubscriptionIAMBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  /// The subscription name or id to bind to attach IAM policy to.
  late final Output<String> subscription;

  SubscriptionIAMMember(
    String name, {
    SubscriptionIAMMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/subscriptionIAMMember:SubscriptionIAMMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<SubscriptionIAMMemberCondition?>();
    this.etag = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
    this.subscription = Output.createUnknown<String>();
  }
}
