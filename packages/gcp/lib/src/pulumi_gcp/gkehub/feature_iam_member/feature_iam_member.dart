import 'package:pulumi/pulumi.dart';
import '../feature_iam_member_condition/feature_iam_member_condition.dart';
import 'feature_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for GKEHub Feature. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-go="`gkehub.FeatureIamPolicy`" pulumi-lang-python="`gkehub.FeatureIamPolicy`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-java="`gcp.gkehub.FeatureIamPolicy`">`gcp.gkehub.FeatureIamPolicy`</span>: Authoritative. Sets the IAM policy for the feature and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-go="`gkehub.FeatureIamBinding`" pulumi-lang-python="`gkehub.FeatureIamBinding`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-java="`gcp.gkehub.FeatureIamBinding`">`gcp.gkehub.FeatureIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the feature are preserved.
/// * <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamMember`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamMember`" pulumi-lang-go="`gkehub.FeatureIamMember`" pulumi-lang-python="`gkehub.FeatureIamMember`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamMember`" pulumi-lang-java="`gcp.gkehub.FeatureIamMember`">`gcp.gkehub.FeatureIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the feature are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-go="`gkehub.FeatureIamPolicy`" pulumi-lang-python="`gkehub.FeatureIamPolicy`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-java="`gcp.gkehub.FeatureIamPolicy`">`gcp.gkehub.FeatureIamPolicy`</span>: Retrieves the IAM policy for the feature
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-go="`gkehub.FeatureIamPolicy`" pulumi-lang-python="`gkehub.FeatureIamPolicy`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-java="`gcp.gkehub.FeatureIamPolicy`">`gcp.gkehub.FeatureIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-go="`gkehub.FeatureIamBinding`" pulumi-lang-python="`gkehub.FeatureIamBinding`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-java="`gcp.gkehub.FeatureIamBinding`">`gcp.gkehub.FeatureIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamMember`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamMember`" pulumi-lang-go="`gkehub.FeatureIamMember`" pulumi-lang-python="`gkehub.FeatureIamMember`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamMember`" pulumi-lang-java="`gcp.gkehub.FeatureIamMember`">`gcp.gkehub.FeatureIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-go="`gkehub.FeatureIamBinding`" pulumi-lang-python="`gkehub.FeatureIamBinding`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-java="`gcp.gkehub.FeatureIamBinding`">`gcp.gkehub.FeatureIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamMember`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamMember`" pulumi-lang-go="`gkehub.FeatureIamMember`" pulumi-lang-python="`gkehub.FeatureIamMember`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamMember`" pulumi-lang-java="`gcp.gkehub.FeatureIamMember`">`gcp.gkehub.FeatureIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.gkehub.FeatureIamPolicy
/// " pulumi-lang-dotnet=" gcp.gkehub.FeatureIamPolicy
/// " pulumi-lang-go=" gkehub.FeatureIamPolicy
/// " pulumi-lang-python=" gkehub.FeatureIamPolicy
/// " pulumi-lang-yaml=" gcp.gkehub.FeatureIamPolicy
/// " pulumi-lang-java=" gcp.gkehub.FeatureIamPolicy
/// "> gcp.gkehub.FeatureIamPolicy
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
/// const policy = new gcp.gkehub.FeatureIamPolicy("policy", {
/// project: feature.project,
/// location: feature.location,
/// name: feature.name,
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
/// policy = gcp.gkehub.FeatureIamPolicy("policy",
/// project=feature["project"],
/// location=feature["location"],
/// name=feature["name"],
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
/// var policy = new Gcp.GkeHub.FeatureIamPolicy("policy", new()
/// {
/// Project = feature.Project,
/// Location = feature.Location,
/// Name = feature.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
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
/// _, err = gkehub.NewFeatureIamPolicy(ctx, "policy", &gkehub.FeatureIamPolicyArgs{
/// Project:    pulumi.Any(feature.Project),
/// Location:   pulumi.Any(feature.Location),
/// Name:       pulumi.Any(feature.Name),
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
/// import com.pulumi.gcp.gkehub.FeatureIamPolicy;
/// import com.pulumi.gcp.gkehub.FeatureIamPolicyArgs;
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
/// var policy = new FeatureIamPolicy("policy", FeatureIamPolicyArgs.builder()
/// .project(feature.project())
/// .location(feature.location())
/// .name(feature.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:gkehub:FeatureIamPolicy
/// properties:
/// project: ${feature.project}
/// location: ${feature.location}
/// name: ${feature.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.gkehub.FeatureIamBinding
/// " pulumi-lang-dotnet=" gcp.gkehub.FeatureIamBinding
/// " pulumi-lang-go=" gkehub.FeatureIamBinding
/// " pulumi-lang-python=" gkehub.FeatureIamBinding
/// " pulumi-lang-yaml=" gcp.gkehub.FeatureIamBinding
/// " pulumi-lang-java=" gcp.gkehub.FeatureIamBinding
/// "> gcp.gkehub.FeatureIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gkehub.FeatureIamBinding("binding", {
/// project: feature.project,
/// location: feature.location,
/// name: feature.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gkehub.FeatureIamBinding("binding",
/// project=feature["project"],
/// location=feature["location"],
/// name=feature["name"],
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
/// var binding = new Gcp.GkeHub.FeatureIamBinding("binding", new()
/// {
/// Project = feature.Project,
/// Location = feature.Location,
/// Name = feature.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkehub.NewFeatureIamBinding(ctx, "binding", &gkehub.FeatureIamBindingArgs{
/// Project:  pulumi.Any(feature.Project),
/// Location: pulumi.Any(feature.Location),
/// Name:     pulumi.Any(feature.Name),
/// Role:     pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.gkehub.FeatureIamBinding;
/// import com.pulumi.gcp.gkehub.FeatureIamBindingArgs;
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
/// var binding = new FeatureIamBinding("binding", FeatureIamBindingArgs.builder()
/// .project(feature.project())
/// .location(feature.location())
/// .name(feature.name())
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
/// type: gcp:gkehub:FeatureIamBinding
/// properties:
/// project: ${feature.project}
/// location: ${feature.location}
/// name: ${feature.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.gkehub.FeatureIamMember
/// " pulumi-lang-dotnet=" gcp.gkehub.FeatureIamMember
/// " pulumi-lang-go=" gkehub.FeatureIamMember
/// " pulumi-lang-python=" gkehub.FeatureIamMember
/// " pulumi-lang-yaml=" gcp.gkehub.FeatureIamMember
/// " pulumi-lang-java=" gcp.gkehub.FeatureIamMember
/// "> gcp.gkehub.FeatureIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gkehub.FeatureIamMember("member", {
/// project: feature.project,
/// location: feature.location,
/// name: feature.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gkehub.FeatureIamMember("member",
/// project=feature["project"],
/// location=feature["location"],
/// name=feature["name"],
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
/// var member = new Gcp.GkeHub.FeatureIamMember("member", new()
/// {
/// Project = feature.Project,
/// Location = feature.Location,
/// Name = feature.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkehub.NewFeatureIamMember(ctx, "member", &gkehub.FeatureIamMemberArgs{
/// Project:  pulumi.Any(feature.Project),
/// Location: pulumi.Any(feature.Location),
/// Name:     pulumi.Any(feature.Name),
/// Role:     pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.gkehub.FeatureIamMember;
/// import com.pulumi.gcp.gkehub.FeatureIamMemberArgs;
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
/// var member = new FeatureIamMember("member", FeatureIamMemberArgs.builder()
/// .project(feature.project())
/// .location(feature.location())
/// .name(feature.name())
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
/// type: gcp:gkehub:FeatureIamMember
/// properties:
/// project: ${feature.project}
/// location: ${feature.location}
/// name: ${feature.name}
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
/// # IAM policy for GKEHub Feature
///
/// Three different resources help you manage your IAM policy for GKEHub Feature. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-go="`gkehub.FeatureIamPolicy`" pulumi-lang-python="`gkehub.FeatureIamPolicy`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-java="`gcp.gkehub.FeatureIamPolicy`">`gcp.gkehub.FeatureIamPolicy`</span>: Authoritative. Sets the IAM policy for the feature and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-go="`gkehub.FeatureIamBinding`" pulumi-lang-python="`gkehub.FeatureIamBinding`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-java="`gcp.gkehub.FeatureIamBinding`">`gcp.gkehub.FeatureIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the feature are preserved.
/// * <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamMember`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamMember`" pulumi-lang-go="`gkehub.FeatureIamMember`" pulumi-lang-python="`gkehub.FeatureIamMember`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamMember`" pulumi-lang-java="`gcp.gkehub.FeatureIamMember`">`gcp.gkehub.FeatureIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the feature are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-go="`gkehub.FeatureIamPolicy`" pulumi-lang-python="`gkehub.FeatureIamPolicy`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-java="`gcp.gkehub.FeatureIamPolicy`">`gcp.gkehub.FeatureIamPolicy`</span>: Retrieves the IAM policy for the feature
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-go="`gkehub.FeatureIamPolicy`" pulumi-lang-python="`gkehub.FeatureIamPolicy`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamPolicy`" pulumi-lang-java="`gcp.gkehub.FeatureIamPolicy`">`gcp.gkehub.FeatureIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-go="`gkehub.FeatureIamBinding`" pulumi-lang-python="`gkehub.FeatureIamBinding`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-java="`gcp.gkehub.FeatureIamBinding`">`gcp.gkehub.FeatureIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamMember`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamMember`" pulumi-lang-go="`gkehub.FeatureIamMember`" pulumi-lang-python="`gkehub.FeatureIamMember`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamMember`" pulumi-lang-java="`gcp.gkehub.FeatureIamMember`">`gcp.gkehub.FeatureIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-go="`gkehub.FeatureIamBinding`" pulumi-lang-python="`gkehub.FeatureIamBinding`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-java="`gcp.gkehub.FeatureIamBinding`">`gcp.gkehub.FeatureIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamMember`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamMember`" pulumi-lang-go="`gkehub.FeatureIamMember`" pulumi-lang-python="`gkehub.FeatureIamMember`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamMember`" pulumi-lang-java="`gcp.gkehub.FeatureIamMember`">`gcp.gkehub.FeatureIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.gkehub.FeatureIamPolicy
/// " pulumi-lang-dotnet=" gcp.gkehub.FeatureIamPolicy
/// " pulumi-lang-go=" gkehub.FeatureIamPolicy
/// " pulumi-lang-python=" gkehub.FeatureIamPolicy
/// " pulumi-lang-yaml=" gcp.gkehub.FeatureIamPolicy
/// " pulumi-lang-java=" gcp.gkehub.FeatureIamPolicy
/// "> gcp.gkehub.FeatureIamPolicy
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
/// const policy = new gcp.gkehub.FeatureIamPolicy("policy", {
/// project: feature.project,
/// location: feature.location,
/// name: feature.name,
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
/// policy = gcp.gkehub.FeatureIamPolicy("policy",
/// project=feature["project"],
/// location=feature["location"],
/// name=feature["name"],
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
/// var policy = new Gcp.GkeHub.FeatureIamPolicy("policy", new()
/// {
/// Project = feature.Project,
/// Location = feature.Location,
/// Name = feature.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
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
/// _, err = gkehub.NewFeatureIamPolicy(ctx, "policy", &gkehub.FeatureIamPolicyArgs{
/// Project:    pulumi.Any(feature.Project),
/// Location:   pulumi.Any(feature.Location),
/// Name:       pulumi.Any(feature.Name),
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
/// import com.pulumi.gcp.gkehub.FeatureIamPolicy;
/// import com.pulumi.gcp.gkehub.FeatureIamPolicyArgs;
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
/// var policy = new FeatureIamPolicy("policy", FeatureIamPolicyArgs.builder()
/// .project(feature.project())
/// .location(feature.location())
/// .name(feature.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:gkehub:FeatureIamPolicy
/// properties:
/// project: ${feature.project}
/// location: ${feature.location}
/// name: ${feature.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.gkehub.FeatureIamBinding
/// " pulumi-lang-dotnet=" gcp.gkehub.FeatureIamBinding
/// " pulumi-lang-go=" gkehub.FeatureIamBinding
/// " pulumi-lang-python=" gkehub.FeatureIamBinding
/// " pulumi-lang-yaml=" gcp.gkehub.FeatureIamBinding
/// " pulumi-lang-java=" gcp.gkehub.FeatureIamBinding
/// "> gcp.gkehub.FeatureIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gkehub.FeatureIamBinding("binding", {
/// project: feature.project,
/// location: feature.location,
/// name: feature.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gkehub.FeatureIamBinding("binding",
/// project=feature["project"],
/// location=feature["location"],
/// name=feature["name"],
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
/// var binding = new Gcp.GkeHub.FeatureIamBinding("binding", new()
/// {
/// Project = feature.Project,
/// Location = feature.Location,
/// Name = feature.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkehub.NewFeatureIamBinding(ctx, "binding", &gkehub.FeatureIamBindingArgs{
/// Project:  pulumi.Any(feature.Project),
/// Location: pulumi.Any(feature.Location),
/// Name:     pulumi.Any(feature.Name),
/// Role:     pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.gkehub.FeatureIamBinding;
/// import com.pulumi.gcp.gkehub.FeatureIamBindingArgs;
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
/// var binding = new FeatureIamBinding("binding", FeatureIamBindingArgs.builder()
/// .project(feature.project())
/// .location(feature.location())
/// .name(feature.name())
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
/// type: gcp:gkehub:FeatureIamBinding
/// properties:
/// project: ${feature.project}
/// location: ${feature.location}
/// name: ${feature.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.gkehub.FeatureIamMember
/// " pulumi-lang-dotnet=" gcp.gkehub.FeatureIamMember
/// " pulumi-lang-go=" gkehub.FeatureIamMember
/// " pulumi-lang-python=" gkehub.FeatureIamMember
/// " pulumi-lang-yaml=" gcp.gkehub.FeatureIamMember
/// " pulumi-lang-java=" gcp.gkehub.FeatureIamMember
/// "> gcp.gkehub.FeatureIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gkehub.FeatureIamMember("member", {
/// project: feature.project,
/// location: feature.location,
/// name: feature.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gkehub.FeatureIamMember("member",
/// project=feature["project"],
/// location=feature["location"],
/// name=feature["name"],
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
/// var member = new Gcp.GkeHub.FeatureIamMember("member", new()
/// {
/// Project = feature.Project,
/// Location = feature.Location,
/// Name = feature.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkehub.NewFeatureIamMember(ctx, "member", &gkehub.FeatureIamMemberArgs{
/// Project:  pulumi.Any(feature.Project),
/// Location: pulumi.Any(feature.Location),
/// Name:     pulumi.Any(feature.Name),
/// Role:     pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.gkehub.FeatureIamMember;
/// import com.pulumi.gcp.gkehub.FeatureIamMemberArgs;
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
/// var member = new FeatureIamMember("member", FeatureIamMemberArgs.builder()
/// .project(feature.project())
/// .location(feature.location())
/// .name(feature.name())
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
/// type: gcp:gkehub:FeatureIamMember
/// properties:
/// project: ${feature.project}
/// location: ${feature.location}
/// name: ${feature.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/features/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// GKEHub feature IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:gkehub/featureIamMember:FeatureIamMember editor "projects/{{project}}/locations/{{location}}/features/{{feature}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:gkehub/featureIamMember:FeatureIamMember editor "projects/{{project}}/locations/{{location}}/features/{{feature}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:gkehub/featureIamMember:FeatureIamMember editor projects/{{project}}/locations/{{location}}/features/{{feature}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class FeatureIamMember extends CustomResource {
  late final Output<FeatureIamMemberCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location for the resource Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  late final Output<String> member;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-dotnet="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-go="`gkehub.FeatureIamBinding`" pulumi-lang-python="`gkehub.FeatureIamBinding`" pulumi-lang-yaml="`gcp.gkehub.FeatureIamBinding`" pulumi-lang-java="`gcp.gkehub.FeatureIamBinding`">`gcp.gkehub.FeatureIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  FeatureIamMember(
    String name, {
    FeatureIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/featureIamMember:FeatureIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<FeatureIamMemberCondition?>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
