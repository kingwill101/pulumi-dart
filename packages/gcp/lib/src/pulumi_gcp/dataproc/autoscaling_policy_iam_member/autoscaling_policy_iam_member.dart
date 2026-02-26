import 'package:pulumi/pulumi.dart';
import '../autoscaling_policy_iam_member_condition/autoscaling_policy_iam_member_condition.dart';
import 'autoscaling_policy_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for Dataproc AutoscalingPolicy. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamPolicy`">`gcp.dataproc.AutoscalingPolicyIamPolicy`</span>: Authoritative. Sets the IAM policy for the autoscalingpolicy and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamBinding`">`gcp.dataproc.AutoscalingPolicyIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the autoscalingpolicy are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamMember`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamMember`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamMember`">`gcp.dataproc.AutoscalingPolicyIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the autoscalingpolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamPolicy`">`gcp.dataproc.AutoscalingPolicyIamPolicy`</span>: Retrieves the IAM policy for the autoscalingpolicy
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamPolicy`">`gcp.dataproc.AutoscalingPolicyIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamBinding`">`gcp.dataproc.AutoscalingPolicyIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamMember`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamMember`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamMember`">`gcp.dataproc.AutoscalingPolicyIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamBinding`">`gcp.dataproc.AutoscalingPolicyIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamMember`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamMember`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamMember`">`gcp.dataproc.AutoscalingPolicyIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.AutoscalingPolicyIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataproc.AutoscalingPolicyIamPolicy
/// " pulumi-lang-go=" dataproc.AutoscalingPolicyIamPolicy
/// " pulumi-lang-python=" dataproc.AutoscalingPolicyIamPolicy
/// " pulumi-lang-yaml=" gcp.dataproc.AutoscalingPolicyIamPolicy
/// " pulumi-lang-java=" gcp.dataproc.AutoscalingPolicyIamPolicy
/// "> gcp.dataproc.AutoscalingPolicyIamPolicy
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
/// const policy = new gcp.dataproc.AutoscalingPolicyIamPolicy("policy", {
/// project: basic.project,
/// location: basic.location,
/// policyId: basic.policyId,
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
/// policy = gcp.dataproc.AutoscalingPolicyIamPolicy("policy",
/// project=basic["project"],
/// location=basic["location"],
/// policy_id=basic["policyId"],
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
/// var policy = new Gcp.Dataproc.AutoscalingPolicyIamPolicy("policy", new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// PolicyId = basic.PolicyId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
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
/// _, err = dataproc.NewAutoscalingPolicyIamPolicy(ctx, "policy", &dataproc.AutoscalingPolicyIamPolicyArgs{
/// Project:    pulumi.Any(basic.Project),
/// Location:   pulumi.Any(basic.Location),
/// PolicyId:   pulumi.Any(basic.PolicyId),
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
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamPolicy;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamPolicyArgs;
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
/// var policy = new AutoscalingPolicyIamPolicy("policy", AutoscalingPolicyIamPolicyArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .policyId(basic.policyId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataproc:AutoscalingPolicyIamPolicy
/// properties:
/// project: ${basic.project}
/// location: ${basic.location}
/// policyId: ${basic.policyId}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.AutoscalingPolicyIamBinding
/// " pulumi-lang-dotnet=" gcp.dataproc.AutoscalingPolicyIamBinding
/// " pulumi-lang-go=" dataproc.AutoscalingPolicyIamBinding
/// " pulumi-lang-python=" dataproc.AutoscalingPolicyIamBinding
/// " pulumi-lang-yaml=" gcp.dataproc.AutoscalingPolicyIamBinding
/// " pulumi-lang-java=" gcp.dataproc.AutoscalingPolicyIamBinding
/// "> gcp.dataproc.AutoscalingPolicyIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.AutoscalingPolicyIamBinding("binding", {
/// project: basic.project,
/// location: basic.location,
/// policyId: basic.policyId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.AutoscalingPolicyIamBinding("binding",
/// project=basic["project"],
/// location=basic["location"],
/// policy_id=basic["policyId"],
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
/// var binding = new Gcp.Dataproc.AutoscalingPolicyIamBinding("binding", new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// PolicyId = basic.PolicyId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewAutoscalingPolicyIamBinding(ctx, "binding", &dataproc.AutoscalingPolicyIamBindingArgs{
/// Project:  pulumi.Any(basic.Project),
/// Location: pulumi.Any(basic.Location),
/// PolicyId: pulumi.Any(basic.PolicyId),
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
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamBinding;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamBindingArgs;
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
/// var binding = new AutoscalingPolicyIamBinding("binding", AutoscalingPolicyIamBindingArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .policyId(basic.policyId())
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
/// type: gcp:dataproc:AutoscalingPolicyIamBinding
/// properties:
/// project: ${basic.project}
/// location: ${basic.location}
/// policyId: ${basic.policyId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.AutoscalingPolicyIamMember
/// " pulumi-lang-dotnet=" gcp.dataproc.AutoscalingPolicyIamMember
/// " pulumi-lang-go=" dataproc.AutoscalingPolicyIamMember
/// " pulumi-lang-python=" dataproc.AutoscalingPolicyIamMember
/// " pulumi-lang-yaml=" gcp.dataproc.AutoscalingPolicyIamMember
/// " pulumi-lang-java=" gcp.dataproc.AutoscalingPolicyIamMember
/// "> gcp.dataproc.AutoscalingPolicyIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.AutoscalingPolicyIamMember("member", {
/// project: basic.project,
/// location: basic.location,
/// policyId: basic.policyId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.AutoscalingPolicyIamMember("member",
/// project=basic["project"],
/// location=basic["location"],
/// policy_id=basic["policyId"],
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
/// var member = new Gcp.Dataproc.AutoscalingPolicyIamMember("member", new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// PolicyId = basic.PolicyId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewAutoscalingPolicyIamMember(ctx, "member", &dataproc.AutoscalingPolicyIamMemberArgs{
/// Project:  pulumi.Any(basic.Project),
/// Location: pulumi.Any(basic.Location),
/// PolicyId: pulumi.Any(basic.PolicyId),
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
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamMember;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamMemberArgs;
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
/// var member = new AutoscalingPolicyIamMember("member", AutoscalingPolicyIamMemberArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .policyId(basic.policyId())
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
/// type: gcp:dataproc:AutoscalingPolicyIamMember
/// properties:
/// project: ${basic.project}
/// location: ${basic.location}
/// policyId: ${basic.policyId}
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
/// # IAM policy for Dataproc AutoscalingPolicy
///
/// Three different resources help you manage your IAM policy for Dataproc AutoscalingPolicy. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamPolicy`">`gcp.dataproc.AutoscalingPolicyIamPolicy`</span>: Authoritative. Sets the IAM policy for the autoscalingpolicy and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamBinding`">`gcp.dataproc.AutoscalingPolicyIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the autoscalingpolicy are preserved.
/// * <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamMember`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamMember`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamMember`">`gcp.dataproc.AutoscalingPolicyIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the autoscalingpolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamPolicy`">`gcp.dataproc.AutoscalingPolicyIamPolicy`</span>: Retrieves the IAM policy for the autoscalingpolicy
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamPolicy`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamPolicy`">`gcp.dataproc.AutoscalingPolicyIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamBinding`">`gcp.dataproc.AutoscalingPolicyIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamMember`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamMember`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamMember`">`gcp.dataproc.AutoscalingPolicyIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamBinding`">`gcp.dataproc.AutoscalingPolicyIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamMember`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamMember`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamMember`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamMember`">`gcp.dataproc.AutoscalingPolicyIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.AutoscalingPolicyIamPolicy
/// " pulumi-lang-dotnet=" gcp.dataproc.AutoscalingPolicyIamPolicy
/// " pulumi-lang-go=" dataproc.AutoscalingPolicyIamPolicy
/// " pulumi-lang-python=" dataproc.AutoscalingPolicyIamPolicy
/// " pulumi-lang-yaml=" gcp.dataproc.AutoscalingPolicyIamPolicy
/// " pulumi-lang-java=" gcp.dataproc.AutoscalingPolicyIamPolicy
/// "> gcp.dataproc.AutoscalingPolicyIamPolicy
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
/// const policy = new gcp.dataproc.AutoscalingPolicyIamPolicy("policy", {
/// project: basic.project,
/// location: basic.location,
/// policyId: basic.policyId,
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
/// policy = gcp.dataproc.AutoscalingPolicyIamPolicy("policy",
/// project=basic["project"],
/// location=basic["location"],
/// policy_id=basic["policyId"],
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
/// var policy = new Gcp.Dataproc.AutoscalingPolicyIamPolicy("policy", new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// PolicyId = basic.PolicyId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
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
/// _, err = dataproc.NewAutoscalingPolicyIamPolicy(ctx, "policy", &dataproc.AutoscalingPolicyIamPolicyArgs{
/// Project:    pulumi.Any(basic.Project),
/// Location:   pulumi.Any(basic.Location),
/// PolicyId:   pulumi.Any(basic.PolicyId),
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
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamPolicy;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamPolicyArgs;
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
/// var policy = new AutoscalingPolicyIamPolicy("policy", AutoscalingPolicyIamPolicyArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .policyId(basic.policyId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:dataproc:AutoscalingPolicyIamPolicy
/// properties:
/// project: ${basic.project}
/// location: ${basic.location}
/// policyId: ${basic.policyId}
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
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.AutoscalingPolicyIamBinding
/// " pulumi-lang-dotnet=" gcp.dataproc.AutoscalingPolicyIamBinding
/// " pulumi-lang-go=" dataproc.AutoscalingPolicyIamBinding
/// " pulumi-lang-python=" dataproc.AutoscalingPolicyIamBinding
/// " pulumi-lang-yaml=" gcp.dataproc.AutoscalingPolicyIamBinding
/// " pulumi-lang-java=" gcp.dataproc.AutoscalingPolicyIamBinding
/// "> gcp.dataproc.AutoscalingPolicyIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.AutoscalingPolicyIamBinding("binding", {
/// project: basic.project,
/// location: basic.location,
/// policyId: basic.policyId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.AutoscalingPolicyIamBinding("binding",
/// project=basic["project"],
/// location=basic["location"],
/// policy_id=basic["policyId"],
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
/// var binding = new Gcp.Dataproc.AutoscalingPolicyIamBinding("binding", new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// PolicyId = basic.PolicyId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewAutoscalingPolicyIamBinding(ctx, "binding", &dataproc.AutoscalingPolicyIamBindingArgs{
/// Project:  pulumi.Any(basic.Project),
/// Location: pulumi.Any(basic.Location),
/// PolicyId: pulumi.Any(basic.PolicyId),
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
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamBinding;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamBindingArgs;
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
/// var binding = new AutoscalingPolicyIamBinding("binding", AutoscalingPolicyIamBindingArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .policyId(basic.policyId())
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
/// type: gcp:dataproc:AutoscalingPolicyIamBinding
/// properties:
/// project: ${basic.project}
/// location: ${basic.location}
/// policyId: ${basic.policyId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.dataproc.AutoscalingPolicyIamMember
/// " pulumi-lang-dotnet=" gcp.dataproc.AutoscalingPolicyIamMember
/// " pulumi-lang-go=" dataproc.AutoscalingPolicyIamMember
/// " pulumi-lang-python=" dataproc.AutoscalingPolicyIamMember
/// " pulumi-lang-yaml=" gcp.dataproc.AutoscalingPolicyIamMember
/// " pulumi-lang-java=" gcp.dataproc.AutoscalingPolicyIamMember
/// "> gcp.dataproc.AutoscalingPolicyIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.AutoscalingPolicyIamMember("member", {
/// project: basic.project,
/// location: basic.location,
/// policyId: basic.policyId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.AutoscalingPolicyIamMember("member",
/// project=basic["project"],
/// location=basic["location"],
/// policy_id=basic["policyId"],
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
/// var member = new Gcp.Dataproc.AutoscalingPolicyIamMember("member", new()
/// {
/// Project = basic.Project,
/// Location = basic.Location,
/// PolicyId = basic.PolicyId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewAutoscalingPolicyIamMember(ctx, "member", &dataproc.AutoscalingPolicyIamMemberArgs{
/// Project:  pulumi.Any(basic.Project),
/// Location: pulumi.Any(basic.Location),
/// PolicyId: pulumi.Any(basic.PolicyId),
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
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamMember;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyIamMemberArgs;
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
/// var member = new AutoscalingPolicyIamMember("member", AutoscalingPolicyIamMemberArgs.builder()
/// .project(basic.project())
/// .location(basic.location())
/// .policyId(basic.policyId())
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
/// type: gcp:dataproc:AutoscalingPolicyIamMember
/// properties:
/// project: ${basic.project}
/// location: ${basic.location}
/// policyId: ${basic.policyId}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}}
///
/// * {{project}}/{{location}}/{{policy_id}}
///
/// * {{location}}/{{policy_id}}
///
/// * {{policy_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataproc autoscalingpolicy IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/autoscalingPolicyIamMember:AutoscalingPolicyIamMember editor "projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/autoscalingPolicyIamMember:AutoscalingPolicyIamMember editor "projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/autoscalingPolicyIamMember:AutoscalingPolicyIamMember editor projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AutoscalingPolicyIamMember extends CustomResource {
  late final Output<AutoscalingPolicyIamMemberCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The  location where the autoscaling policy should reside.
  /// The default value is <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
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
  late final Output<String> policyId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-dotnet="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-go="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-python="`dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-yaml="`gcp.dataproc.AutoscalingPolicyIamBinding`" pulumi-lang-java="`gcp.dataproc.AutoscalingPolicyIamBinding`">`gcp.dataproc.AutoscalingPolicyIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  AutoscalingPolicyIamMember(
    String name, {
    AutoscalingPolicyIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/autoscalingPolicyIamMember:AutoscalingPolicyIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<AutoscalingPolicyIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.policyId = registerOutput<String>('policyId');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
