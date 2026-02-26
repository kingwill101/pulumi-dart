import 'package:pulumi/pulumi.dart';
import 'topic_iampolicy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Pub/Sub Topic. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-go="`pubsub.TopicIAMPolicy`" pulumi-lang-python="`pubsub.TopicIAMPolicy`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-java="`gcp.pubsub.TopicIAMPolicy`">`gcp.pubsub.TopicIAMPolicy`</span>: Authoritative. Sets the IAM policy for the topic and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-go="`pubsub.TopicIAMBinding`" pulumi-lang-python="`pubsub.TopicIAMBinding`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-java="`gcp.pubsub.TopicIAMBinding`">`gcp.pubsub.TopicIAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the topic are preserved.
/// * <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMMember`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMMember`" pulumi-lang-go="`pubsub.TopicIAMMember`" pulumi-lang-python="`pubsub.TopicIAMMember`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMMember`" pulumi-lang-java="`gcp.pubsub.TopicIAMMember`">`gcp.pubsub.TopicIAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the topic are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-go="`pubsub.TopicIAMPolicy`" pulumi-lang-python="`pubsub.TopicIAMPolicy`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-java="`gcp.pubsub.TopicIAMPolicy`">`gcp.pubsub.TopicIAMPolicy`</span>: Retrieves the IAM policy for the topic
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-go="`pubsub.TopicIAMPolicy`" pulumi-lang-python="`pubsub.TopicIAMPolicy`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-java="`gcp.pubsub.TopicIAMPolicy`">`gcp.pubsub.TopicIAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-go="`pubsub.TopicIAMBinding`" pulumi-lang-python="`pubsub.TopicIAMBinding`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-java="`gcp.pubsub.TopicIAMBinding`">`gcp.pubsub.TopicIAMBinding`</span> and <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMMember`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMMember`" pulumi-lang-go="`pubsub.TopicIAMMember`" pulumi-lang-python="`pubsub.TopicIAMMember`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMMember`" pulumi-lang-java="`gcp.pubsub.TopicIAMMember`">`gcp.pubsub.TopicIAMMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-go="`pubsub.TopicIAMBinding`" pulumi-lang-python="`pubsub.TopicIAMBinding`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-java="`gcp.pubsub.TopicIAMBinding`">`gcp.pubsub.TopicIAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMMember`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMMember`" pulumi-lang-go="`pubsub.TopicIAMMember`" pulumi-lang-python="`pubsub.TopicIAMMember`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMMember`" pulumi-lang-java="`gcp.pubsub.TopicIAMMember`">`gcp.pubsub.TopicIAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.pubsub.TopicIAMPolicy
/// " pulumi-lang-dotnet=" gcp.pubsub.TopicIAMPolicy
/// " pulumi-lang-go=" pubsub.TopicIAMPolicy
/// " pulumi-lang-python=" pubsub.TopicIAMPolicy
/// " pulumi-lang-yaml=" gcp.pubsub.TopicIAMPolicy
/// " pulumi-lang-java=" gcp.pubsub.TopicIAMPolicy
/// "> gcp.pubsub.TopicIAMPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.pubsub.TopicIAMPolicy("policy", {
/// project: example.project,
/// topic: example.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.pubsub.TopicIAMPolicy("policy",
/// project=example["project"],
/// topic=example["name"],
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
/// Role = "roles/viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.PubSub.TopicIAMPolicy("policy", new()
/// {
/// Project = example.Project,
/// Topic = example.Name,
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
/// Role: "roles/viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = pubsub.NewTopicIAMPolicy(ctx, "policy", &pubsub.TopicIAMPolicyArgs{
/// Project:    pulumi.Any(example.Project),
/// Topic:      pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.pubsub.TopicIAMPolicy;
/// import com.pulumi.gcp.pubsub.TopicIAMPolicyArgs;
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
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new TopicIAMPolicy("policy", TopicIAMPolicyArgs.builder()
/// .project(example.project())
/// .topic(example.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:pubsub:TopicIAMPolicy
/// properties:
/// project: ${example.project}
/// topic: ${example.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.pubsub.TopicIAMBinding
/// " pulumi-lang-dotnet=" gcp.pubsub.TopicIAMBinding
/// " pulumi-lang-go=" pubsub.TopicIAMBinding
/// " pulumi-lang-python=" pubsub.TopicIAMBinding
/// " pulumi-lang-yaml=" gcp.pubsub.TopicIAMBinding
/// " pulumi-lang-java=" gcp.pubsub.TopicIAMBinding
/// "> gcp.pubsub.TopicIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.pubsub.TopicIAMBinding("binding", {
/// project: example.project,
/// topic: example.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.pubsub.TopicIAMBinding("binding",
/// project=example["project"],
/// topic=example["name"],
/// role="roles/viewer",
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
/// var binding = new Gcp.PubSub.TopicIAMBinding("binding", new()
/// {
/// Project = example.Project,
/// Topic = example.Name,
/// Role = "roles/viewer",
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
/// _, err := pubsub.NewTopicIAMBinding(ctx, "binding", &pubsub.TopicIAMBindingArgs{
/// Project: pulumi.Any(example.Project),
/// Topic:   pulumi.Any(example.Name),
/// Role:    pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.pubsub.TopicIAMBinding;
/// import com.pulumi.gcp.pubsub.TopicIAMBindingArgs;
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
/// var binding = new TopicIAMBinding("binding", TopicIAMBindingArgs.builder()
/// .project(example.project())
/// .topic(example.name())
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:pubsub:TopicIAMBinding
/// properties:
/// project: ${example.project}
/// topic: ${example.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.pubsub.TopicIAMMember
/// " pulumi-lang-dotnet=" gcp.pubsub.TopicIAMMember
/// " pulumi-lang-go=" pubsub.TopicIAMMember
/// " pulumi-lang-python=" pubsub.TopicIAMMember
/// " pulumi-lang-yaml=" gcp.pubsub.TopicIAMMember
/// " pulumi-lang-java=" gcp.pubsub.TopicIAMMember
/// "> gcp.pubsub.TopicIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.pubsub.TopicIAMMember("member", {
/// project: example.project,
/// topic: example.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.pubsub.TopicIAMMember("member",
/// project=example["project"],
/// topic=example["name"],
/// role="roles/viewer",
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
/// var member = new Gcp.PubSub.TopicIAMMember("member", new()
/// {
/// Project = example.Project,
/// Topic = example.Name,
/// Role = "roles/viewer",
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
/// _, err := pubsub.NewTopicIAMMember(ctx, "member", &pubsub.TopicIAMMemberArgs{
/// Project: pulumi.Any(example.Project),
/// Topic:   pulumi.Any(example.Name),
/// Role:    pulumi.String("roles/viewer"),
/// Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.pubsub.TopicIAMMember;
/// import com.pulumi.gcp.pubsub.TopicIAMMemberArgs;
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
/// var member = new TopicIAMMember("member", TopicIAMMemberArgs.builder()
/// .project(example.project())
/// .topic(example.name())
/// .role("roles/viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:pubsub:TopicIAMMember
/// properties:
/// project: ${example.project}
/// topic: ${example.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Cloud Pub/Sub Topic
///
/// Three different resources help you manage your IAM policy for Cloud Pub/Sub Topic. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-go="`pubsub.TopicIAMPolicy`" pulumi-lang-python="`pubsub.TopicIAMPolicy`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-java="`gcp.pubsub.TopicIAMPolicy`">`gcp.pubsub.TopicIAMPolicy`</span>: Authoritative. Sets the IAM policy for the topic and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-go="`pubsub.TopicIAMBinding`" pulumi-lang-python="`pubsub.TopicIAMBinding`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-java="`gcp.pubsub.TopicIAMBinding`">`gcp.pubsub.TopicIAMBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the topic are preserved.
/// * <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMMember`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMMember`" pulumi-lang-go="`pubsub.TopicIAMMember`" pulumi-lang-python="`pubsub.TopicIAMMember`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMMember`" pulumi-lang-java="`gcp.pubsub.TopicIAMMember`">`gcp.pubsub.TopicIAMMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the topic are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-go="`pubsub.TopicIAMPolicy`" pulumi-lang-python="`pubsub.TopicIAMPolicy`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-java="`gcp.pubsub.TopicIAMPolicy`">`gcp.pubsub.TopicIAMPolicy`</span>: Retrieves the IAM policy for the topic
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-go="`pubsub.TopicIAMPolicy`" pulumi-lang-python="`pubsub.TopicIAMPolicy`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMPolicy`" pulumi-lang-java="`gcp.pubsub.TopicIAMPolicy`">`gcp.pubsub.TopicIAMPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-go="`pubsub.TopicIAMBinding`" pulumi-lang-python="`pubsub.TopicIAMBinding`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-java="`gcp.pubsub.TopicIAMBinding`">`gcp.pubsub.TopicIAMBinding`</span> and <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMMember`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMMember`" pulumi-lang-go="`pubsub.TopicIAMMember`" pulumi-lang-python="`pubsub.TopicIAMMember`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMMember`" pulumi-lang-java="`gcp.pubsub.TopicIAMMember`">`gcp.pubsub.TopicIAMMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-go="`pubsub.TopicIAMBinding`" pulumi-lang-python="`pubsub.TopicIAMBinding`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMBinding`" pulumi-lang-java="`gcp.pubsub.TopicIAMBinding`">`gcp.pubsub.TopicIAMBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.pubsub.TopicIAMMember`" pulumi-lang-dotnet="`gcp.pubsub.TopicIAMMember`" pulumi-lang-go="`pubsub.TopicIAMMember`" pulumi-lang-python="`pubsub.TopicIAMMember`" pulumi-lang-yaml="`gcp.pubsub.TopicIAMMember`" pulumi-lang-java="`gcp.pubsub.TopicIAMMember`">`gcp.pubsub.TopicIAMMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.pubsub.TopicIAMPolicy
/// " pulumi-lang-dotnet=" gcp.pubsub.TopicIAMPolicy
/// " pulumi-lang-go=" pubsub.TopicIAMPolicy
/// " pulumi-lang-python=" pubsub.TopicIAMPolicy
/// " pulumi-lang-yaml=" gcp.pubsub.TopicIAMPolicy
/// " pulumi-lang-java=" gcp.pubsub.TopicIAMPolicy
/// "> gcp.pubsub.TopicIAMPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.pubsub.TopicIAMPolicy("policy", {
/// project: example.project,
/// topic: example.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.pubsub.TopicIAMPolicy("policy",
/// project=example["project"],
/// topic=example["name"],
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
/// Role = "roles/viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.PubSub.TopicIAMPolicy("policy", new()
/// {
/// Project = example.Project,
/// Topic = example.Name,
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
/// Role: "roles/viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = pubsub.NewTopicIAMPolicy(ctx, "policy", &pubsub.TopicIAMPolicyArgs{
/// Project:    pulumi.Any(example.Project),
/// Topic:      pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.pubsub.TopicIAMPolicy;
/// import com.pulumi.gcp.pubsub.TopicIAMPolicyArgs;
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
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new TopicIAMPolicy("policy", TopicIAMPolicyArgs.builder()
/// .project(example.project())
/// .topic(example.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:pubsub:TopicIAMPolicy
/// properties:
/// project: ${example.project}
/// topic: ${example.name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.pubsub.TopicIAMBinding
/// " pulumi-lang-dotnet=" gcp.pubsub.TopicIAMBinding
/// " pulumi-lang-go=" pubsub.TopicIAMBinding
/// " pulumi-lang-python=" pubsub.TopicIAMBinding
/// " pulumi-lang-yaml=" gcp.pubsub.TopicIAMBinding
/// " pulumi-lang-java=" gcp.pubsub.TopicIAMBinding
/// "> gcp.pubsub.TopicIAMBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.pubsub.TopicIAMBinding("binding", {
/// project: example.project,
/// topic: example.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.pubsub.TopicIAMBinding("binding",
/// project=example["project"],
/// topic=example["name"],
/// role="roles/viewer",
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
/// var binding = new Gcp.PubSub.TopicIAMBinding("binding", new()
/// {
/// Project = example.Project,
/// Topic = example.Name,
/// Role = "roles/viewer",
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
/// _, err := pubsub.NewTopicIAMBinding(ctx, "binding", &pubsub.TopicIAMBindingArgs{
/// Project: pulumi.Any(example.Project),
/// Topic:   pulumi.Any(example.Name),
/// Role:    pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.pubsub.TopicIAMBinding;
/// import com.pulumi.gcp.pubsub.TopicIAMBindingArgs;
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
/// var binding = new TopicIAMBinding("binding", TopicIAMBindingArgs.builder()
/// .project(example.project())
/// .topic(example.name())
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:pubsub:TopicIAMBinding
/// properties:
/// project: ${example.project}
/// topic: ${example.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.pubsub.TopicIAMMember
/// " pulumi-lang-dotnet=" gcp.pubsub.TopicIAMMember
/// " pulumi-lang-go=" pubsub.TopicIAMMember
/// " pulumi-lang-python=" pubsub.TopicIAMMember
/// " pulumi-lang-yaml=" gcp.pubsub.TopicIAMMember
/// " pulumi-lang-java=" gcp.pubsub.TopicIAMMember
/// "> gcp.pubsub.TopicIAMMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.pubsub.TopicIAMMember("member", {
/// project: example.project,
/// topic: example.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.pubsub.TopicIAMMember("member",
/// project=example["project"],
/// topic=example["name"],
/// role="roles/viewer",
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
/// var member = new Gcp.PubSub.TopicIAMMember("member", new()
/// {
/// Project = example.Project,
/// Topic = example.Name,
/// Role = "roles/viewer",
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
/// _, err := pubsub.NewTopicIAMMember(ctx, "member", &pubsub.TopicIAMMemberArgs{
/// Project: pulumi.Any(example.Project),
/// Topic:   pulumi.Any(example.Name),
/// Role:    pulumi.String("roles/viewer"),
/// Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.pubsub.TopicIAMMember;
/// import com.pulumi.gcp.pubsub.TopicIAMMemberArgs;
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
/// var member = new TopicIAMMember("member", TopicIAMMemberArgs.builder()
/// .project(example.project())
/// .topic(example.name())
/// .role("roles/viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:pubsub:TopicIAMMember
/// properties:
/// project: ${example.project}
/// topic: ${example.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/topics/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Pub/Sub topic IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:pubsub/topicIAMPolicy:TopicIAMPolicy editor "projects/{{project}}/topics/{{topic}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:pubsub/topicIAMPolicy:TopicIAMPolicy editor "projects/{{project}}/topics/{{topic}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:pubsub/topicIAMPolicy:TopicIAMPolicy editor projects/{{project}}/topics/{{topic}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class TopicIAMPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> topic;

  TopicIAMPolicy(
    String name, {
    TopicIAMPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/topicIAMPolicy:TopicIAMPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.topic = Output.createUnknown<String>();
  }
}
