import 'package:pulumi/pulumi.dart';
import 'service_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Run (v2 API) Service. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-go="`cloudrunv2.ServiceIamPolicy`" pulumi-lang-python="`cloudrunv2.ServiceIamPolicy`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamPolicy`">`gcp.cloudrunv2.ServiceIamPolicy`</span>: Authoritative. Sets the IAM policy for the service and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-go="`cloudrunv2.ServiceIamBinding`" pulumi-lang-python="`cloudrunv2.ServiceIamBinding`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamBinding`">`gcp.cloudrunv2.ServiceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the service are preserved.
/// * <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-go="`cloudrunv2.ServiceIamMember`" pulumi-lang-python="`cloudrunv2.ServiceIamMember`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamMember`">`gcp.cloudrunv2.ServiceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the service are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-go="`cloudrunv2.ServiceIamPolicy`" pulumi-lang-python="`cloudrunv2.ServiceIamPolicy`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamPolicy`">`gcp.cloudrunv2.ServiceIamPolicy`</span>: Retrieves the IAM policy for the service
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-go="`cloudrunv2.ServiceIamPolicy`" pulumi-lang-python="`cloudrunv2.ServiceIamPolicy`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamPolicy`">`gcp.cloudrunv2.ServiceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-go="`cloudrunv2.ServiceIamBinding`" pulumi-lang-python="`cloudrunv2.ServiceIamBinding`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamBinding`">`gcp.cloudrunv2.ServiceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-go="`cloudrunv2.ServiceIamMember`" pulumi-lang-python="`cloudrunv2.ServiceIamMember`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamMember`">`gcp.cloudrunv2.ServiceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-go="`cloudrunv2.ServiceIamBinding`" pulumi-lang-python="`cloudrunv2.ServiceIamBinding`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamBinding`">`gcp.cloudrunv2.ServiceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-go="`cloudrunv2.ServiceIamMember`" pulumi-lang-python="`cloudrunv2.ServiceIamMember`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamMember`">`gcp.cloudrunv2.ServiceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudrunv2.ServiceIamPolicy
/// " pulumi-lang-dotnet=" gcp.cloudrunv2.ServiceIamPolicy
/// " pulumi-lang-go=" cloudrunv2.ServiceIamPolicy
/// " pulumi-lang-python=" cloudrunv2.ServiceIamPolicy
/// " pulumi-lang-yaml=" gcp.cloudrunv2.ServiceIamPolicy
/// " pulumi-lang-java=" gcp.cloudrunv2.ServiceIamPolicy
/// "> gcp.cloudrunv2.ServiceIamPolicy
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
/// const policy = new gcp.cloudrunv2.ServiceIamPolicy("policy", {
/// project: _default.project,
/// location: _default.location,
/// name: _default.name,
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
/// policy = gcp.cloudrunv2.ServiceIamPolicy("policy",
/// project=default["project"],
/// location=default["location"],
/// name=default["name"],
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
/// var policy = new Gcp.CloudRunV2.ServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// Name = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
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
/// _, err = cloudrunv2.NewServiceIamPolicy(ctx, "policy", &cloudrunv2.ServiceIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Location:   pulumi.Any(_default.Location),
/// Name:       pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudrunv2.ServiceIamPolicy;
/// import com.pulumi.gcp.cloudrunv2.ServiceIamPolicyArgs;
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
/// var policy = new ServiceIamPolicy("policy", ServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .name(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:cloudrunv2:ServiceIamPolicy
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// name: ${default.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.cloudrunv2.ServiceIamBinding
/// " pulumi-lang-dotnet=" gcp.cloudrunv2.ServiceIamBinding
/// " pulumi-lang-go=" cloudrunv2.ServiceIamBinding
/// " pulumi-lang-python=" cloudrunv2.ServiceIamBinding
/// " pulumi-lang-yaml=" gcp.cloudrunv2.ServiceIamBinding
/// " pulumi-lang-java=" gcp.cloudrunv2.ServiceIamBinding
/// "> gcp.cloudrunv2.ServiceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudrunv2.ServiceIamBinding("binding", {
/// project: _default.project,
/// location: _default.location,
/// name: _default.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudrunv2.ServiceIamBinding("binding",
/// project=default["project"],
/// location=default["location"],
/// name=default["name"],
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
/// var binding = new Gcp.CloudRunV2.ServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// Name = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.NewServiceIamBinding(ctx, "binding", &cloudrunv2.ServiceIamBindingArgs{
/// Project:  pulumi.Any(_default.Project),
/// Location: pulumi.Any(_default.Location),
/// Name:     pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudrunv2.ServiceIamBinding;
/// import com.pulumi.gcp.cloudrunv2.ServiceIamBindingArgs;
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
/// var binding = new ServiceIamBinding("binding", ServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .name(default_.name())
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
/// type: gcp:cloudrunv2:ServiceIamBinding
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// name: ${default.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudrunv2.ServiceIamMember
/// " pulumi-lang-dotnet=" gcp.cloudrunv2.ServiceIamMember
/// " pulumi-lang-go=" cloudrunv2.ServiceIamMember
/// " pulumi-lang-python=" cloudrunv2.ServiceIamMember
/// " pulumi-lang-yaml=" gcp.cloudrunv2.ServiceIamMember
/// " pulumi-lang-java=" gcp.cloudrunv2.ServiceIamMember
/// "> gcp.cloudrunv2.ServiceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudrunv2.ServiceIamMember("member", {
/// project: _default.project,
/// location: _default.location,
/// name: _default.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudrunv2.ServiceIamMember("member",
/// project=default["project"],
/// location=default["location"],
/// name=default["name"],
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
/// var member = new Gcp.CloudRunV2.ServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// Name = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.NewServiceIamMember(ctx, "member", &cloudrunv2.ServiceIamMemberArgs{
/// Project:  pulumi.Any(_default.Project),
/// Location: pulumi.Any(_default.Location),
/// Name:     pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudrunv2.ServiceIamMember;
/// import com.pulumi.gcp.cloudrunv2.ServiceIamMemberArgs;
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
/// var member = new ServiceIamMember("member", ServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .name(default_.name())
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
/// type: gcp:cloudrunv2:ServiceIamMember
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// name: ${default.name}
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
/// # IAM policy for Cloud Run (v2 API) Service
///
/// Three different resources help you manage your IAM policy for Cloud Run (v2 API) Service. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-go="`cloudrunv2.ServiceIamPolicy`" pulumi-lang-python="`cloudrunv2.ServiceIamPolicy`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamPolicy`">`gcp.cloudrunv2.ServiceIamPolicy`</span>: Authoritative. Sets the IAM policy for the service and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-go="`cloudrunv2.ServiceIamBinding`" pulumi-lang-python="`cloudrunv2.ServiceIamBinding`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamBinding`">`gcp.cloudrunv2.ServiceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the service are preserved.
/// * <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-go="`cloudrunv2.ServiceIamMember`" pulumi-lang-python="`cloudrunv2.ServiceIamMember`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamMember`">`gcp.cloudrunv2.ServiceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the service are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-go="`cloudrunv2.ServiceIamPolicy`" pulumi-lang-python="`cloudrunv2.ServiceIamPolicy`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamPolicy`">`gcp.cloudrunv2.ServiceIamPolicy`</span>: Retrieves the IAM policy for the service
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-go="`cloudrunv2.ServiceIamPolicy`" pulumi-lang-python="`cloudrunv2.ServiceIamPolicy`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamPolicy`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamPolicy`">`gcp.cloudrunv2.ServiceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-go="`cloudrunv2.ServiceIamBinding`" pulumi-lang-python="`cloudrunv2.ServiceIamBinding`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamBinding`">`gcp.cloudrunv2.ServiceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-go="`cloudrunv2.ServiceIamMember`" pulumi-lang-python="`cloudrunv2.ServiceIamMember`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamMember`">`gcp.cloudrunv2.ServiceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-go="`cloudrunv2.ServiceIamBinding`" pulumi-lang-python="`cloudrunv2.ServiceIamBinding`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamBinding`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamBinding`">`gcp.cloudrunv2.ServiceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-dotnet="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-go="`cloudrunv2.ServiceIamMember`" pulumi-lang-python="`cloudrunv2.ServiceIamMember`" pulumi-lang-yaml="`gcp.cloudrunv2.ServiceIamMember`" pulumi-lang-java="`gcp.cloudrunv2.ServiceIamMember`">`gcp.cloudrunv2.ServiceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudrunv2.ServiceIamPolicy
/// " pulumi-lang-dotnet=" gcp.cloudrunv2.ServiceIamPolicy
/// " pulumi-lang-go=" cloudrunv2.ServiceIamPolicy
/// " pulumi-lang-python=" cloudrunv2.ServiceIamPolicy
/// " pulumi-lang-yaml=" gcp.cloudrunv2.ServiceIamPolicy
/// " pulumi-lang-java=" gcp.cloudrunv2.ServiceIamPolicy
/// "> gcp.cloudrunv2.ServiceIamPolicy
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
/// const policy = new gcp.cloudrunv2.ServiceIamPolicy("policy", {
/// project: _default.project,
/// location: _default.location,
/// name: _default.name,
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
/// policy = gcp.cloudrunv2.ServiceIamPolicy("policy",
/// project=default["project"],
/// location=default["location"],
/// name=default["name"],
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
/// var policy = new Gcp.CloudRunV2.ServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// Name = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
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
/// _, err = cloudrunv2.NewServiceIamPolicy(ctx, "policy", &cloudrunv2.ServiceIamPolicyArgs{
/// Project:    pulumi.Any(_default.Project),
/// Location:   pulumi.Any(_default.Location),
/// Name:       pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudrunv2.ServiceIamPolicy;
/// import com.pulumi.gcp.cloudrunv2.ServiceIamPolicyArgs;
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
/// var policy = new ServiceIamPolicy("policy", ServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .name(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:cloudrunv2:ServiceIamPolicy
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// name: ${default.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.cloudrunv2.ServiceIamBinding
/// " pulumi-lang-dotnet=" gcp.cloudrunv2.ServiceIamBinding
/// " pulumi-lang-go=" cloudrunv2.ServiceIamBinding
/// " pulumi-lang-python=" cloudrunv2.ServiceIamBinding
/// " pulumi-lang-yaml=" gcp.cloudrunv2.ServiceIamBinding
/// " pulumi-lang-java=" gcp.cloudrunv2.ServiceIamBinding
/// "> gcp.cloudrunv2.ServiceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudrunv2.ServiceIamBinding("binding", {
/// project: _default.project,
/// location: _default.location,
/// name: _default.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudrunv2.ServiceIamBinding("binding",
/// project=default["project"],
/// location=default["location"],
/// name=default["name"],
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
/// var binding = new Gcp.CloudRunV2.ServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// Name = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.NewServiceIamBinding(ctx, "binding", &cloudrunv2.ServiceIamBindingArgs{
/// Project:  pulumi.Any(_default.Project),
/// Location: pulumi.Any(_default.Location),
/// Name:     pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudrunv2.ServiceIamBinding;
/// import com.pulumi.gcp.cloudrunv2.ServiceIamBindingArgs;
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
/// var binding = new ServiceIamBinding("binding", ServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .name(default_.name())
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
/// type: gcp:cloudrunv2:ServiceIamBinding
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// name: ${default.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudrunv2.ServiceIamMember
/// " pulumi-lang-dotnet=" gcp.cloudrunv2.ServiceIamMember
/// " pulumi-lang-go=" cloudrunv2.ServiceIamMember
/// " pulumi-lang-python=" cloudrunv2.ServiceIamMember
/// " pulumi-lang-yaml=" gcp.cloudrunv2.ServiceIamMember
/// " pulumi-lang-java=" gcp.cloudrunv2.ServiceIamMember
/// "> gcp.cloudrunv2.ServiceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudrunv2.ServiceIamMember("member", {
/// project: _default.project,
/// location: _default.location,
/// name: _default.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudrunv2.ServiceIamMember("member",
/// project=default["project"],
/// location=default["location"],
/// name=default["name"],
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
/// var member = new Gcp.CloudRunV2.ServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// Name = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.NewServiceIamMember(ctx, "member", &cloudrunv2.ServiceIamMemberArgs{
/// Project:  pulumi.Any(_default.Project),
/// Location: pulumi.Any(_default.Location),
/// Name:     pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudrunv2.ServiceIamMember;
/// import com.pulumi.gcp.cloudrunv2.ServiceIamMemberArgs;
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
/// var member = new ServiceIamMember("member", ServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .name(default_.name())
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
/// type: gcp:cloudrunv2:ServiceIamMember
/// properties:
/// project: ${default.project}
/// location: ${default.location}
/// name: ${default.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/services/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Run (v2 API) service IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/serviceIamPolicy:ServiceIamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{service}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/serviceIamPolicy:ServiceIamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{service}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/serviceIamPolicy:ServiceIamPolicy editor projects/{{project}}/locations/{{location}}/services/{{service}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ServiceIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location of the cloud run service Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  ServiceIamPolicy(
    String name, {
    ServiceIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrunv2/serviceIamPolicy:ServiceIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
