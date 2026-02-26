import 'package:pulumi/pulumi.dart';
import 'iam_policy_args2.dart';

/// Three different resources help you manage your IAM policy for Cloud Run Service. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.cloudrun.IamPolicy`" pulumi-lang-dotnet="`gcp.cloudrun.IamPolicy`" pulumi-lang-go="`cloudrun.IamPolicy`" pulumi-lang-python="`cloudrun.IamPolicy`" pulumi-lang-yaml="`gcp.cloudrun.IamPolicy`" pulumi-lang-java="`gcp.cloudrun.IamPolicy`">`gcp.cloudrun.IamPolicy`</span>: Authoritative. Sets the IAM policy for the service and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.cloudrun.IamBinding`" pulumi-lang-dotnet="`gcp.cloudrun.IamBinding`" pulumi-lang-go="`cloudrun.IamBinding`" pulumi-lang-python="`cloudrun.IamBinding`" pulumi-lang-yaml="`gcp.cloudrun.IamBinding`" pulumi-lang-java="`gcp.cloudrun.IamBinding`">`gcp.cloudrun.IamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the service are preserved.
/// * <span pulumi-lang-nodejs="`gcp.cloudrun.IamMember`" pulumi-lang-dotnet="`gcp.cloudrun.IamMember`" pulumi-lang-go="`cloudrun.IamMember`" pulumi-lang-python="`cloudrun.IamMember`" pulumi-lang-yaml="`gcp.cloudrun.IamMember`" pulumi-lang-java="`gcp.cloudrun.IamMember`">`gcp.cloudrun.IamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the service are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.cloudrun.IamPolicy`" pulumi-lang-dotnet="`gcp.cloudrun.IamPolicy`" pulumi-lang-go="`cloudrun.IamPolicy`" pulumi-lang-python="`cloudrun.IamPolicy`" pulumi-lang-yaml="`gcp.cloudrun.IamPolicy`" pulumi-lang-java="`gcp.cloudrun.IamPolicy`">`gcp.cloudrun.IamPolicy`</span>: Retrieves the IAM policy for the service
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudrun.IamPolicy`" pulumi-lang-dotnet="`gcp.cloudrun.IamPolicy`" pulumi-lang-go="`cloudrun.IamPolicy`" pulumi-lang-python="`cloudrun.IamPolicy`" pulumi-lang-yaml="`gcp.cloudrun.IamPolicy`" pulumi-lang-java="`gcp.cloudrun.IamPolicy`">`gcp.cloudrun.IamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudrun.IamBinding`" pulumi-lang-dotnet="`gcp.cloudrun.IamBinding`" pulumi-lang-go="`cloudrun.IamBinding`" pulumi-lang-python="`cloudrun.IamBinding`" pulumi-lang-yaml="`gcp.cloudrun.IamBinding`" pulumi-lang-java="`gcp.cloudrun.IamBinding`">`gcp.cloudrun.IamBinding`</span> and <span pulumi-lang-nodejs="`gcp.cloudrun.IamMember`" pulumi-lang-dotnet="`gcp.cloudrun.IamMember`" pulumi-lang-go="`cloudrun.IamMember`" pulumi-lang-python="`cloudrun.IamMember`" pulumi-lang-yaml="`gcp.cloudrun.IamMember`" pulumi-lang-java="`gcp.cloudrun.IamMember`">`gcp.cloudrun.IamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudrun.IamBinding`" pulumi-lang-dotnet="`gcp.cloudrun.IamBinding`" pulumi-lang-go="`cloudrun.IamBinding`" pulumi-lang-python="`cloudrun.IamBinding`" pulumi-lang-yaml="`gcp.cloudrun.IamBinding`" pulumi-lang-java="`gcp.cloudrun.IamBinding`">`gcp.cloudrun.IamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudrun.IamMember`" pulumi-lang-dotnet="`gcp.cloudrun.IamMember`" pulumi-lang-go="`cloudrun.IamMember`" pulumi-lang-python="`cloudrun.IamMember`" pulumi-lang-yaml="`gcp.cloudrun.IamMember`" pulumi-lang-java="`gcp.cloudrun.IamMember`">`gcp.cloudrun.IamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudrun.IamPolicy
/// " pulumi-lang-dotnet=" gcp.cloudrun.IamPolicy
/// " pulumi-lang-go=" cloudrun.IamPolicy
/// " pulumi-lang-python=" cloudrun.IamPolicy
/// " pulumi-lang-yaml=" gcp.cloudrun.IamPolicy
/// " pulumi-lang-java=" gcp.cloudrun.IamPolicy
/// "> gcp.cloudrun.IamPolicy
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
/// const policy = new gcp.cloudrun.IamPolicy("policy", {
/// location: _default.location,
/// project: _default.project,
/// service: _default.name,
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
/// policy = gcp.cloudrun.IamPolicy("policy",
/// location=default["location"],
/// project=default["project"],
/// service=default["name"],
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
/// var policy = new Gcp.CloudRun.IamPolicy("policy", new()
/// {
/// Location = @default.Location,
/// Project = @default.Project,
/// Service = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
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
/// _, err = cloudrun.NewIamPolicy(ctx, "policy", &cloudrun.IamPolicyArgs{
/// Location:   pulumi.Any(_default.Location),
/// Project:    pulumi.Any(_default.Project),
/// Service:    pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudrun.IamPolicy;
/// import com.pulumi.gcp.cloudrun.IamPolicyArgs;
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
/// var policy = new IamPolicy("policy", IamPolicyArgs.builder()
/// .location(default_.location())
/// .project(default_.project())
/// .service(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:cloudrun:IamPolicy
/// properties:
/// location: ${default.location}
/// project: ${default.project}
/// service: ${default.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.cloudrun.IamBinding
/// " pulumi-lang-dotnet=" gcp.cloudrun.IamBinding
/// " pulumi-lang-go=" cloudrun.IamBinding
/// " pulumi-lang-python=" cloudrun.IamBinding
/// " pulumi-lang-yaml=" gcp.cloudrun.IamBinding
/// " pulumi-lang-java=" gcp.cloudrun.IamBinding
/// "> gcp.cloudrun.IamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudrun.IamBinding("binding", {
/// location: _default.location,
/// project: _default.project,
/// service: _default.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudrun.IamBinding("binding",
/// location=default["location"],
/// project=default["project"],
/// service=default["name"],
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
/// var binding = new Gcp.CloudRun.IamBinding("binding", new()
/// {
/// Location = @default.Location,
/// Project = @default.Project,
/// Service = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrun.NewIamBinding(ctx, "binding", &cloudrun.IamBindingArgs{
/// Location: pulumi.Any(_default.Location),
/// Project:  pulumi.Any(_default.Project),
/// Service:  pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudrun.IamBinding;
/// import com.pulumi.gcp.cloudrun.IamBindingArgs;
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
/// var binding = new IamBinding("binding", IamBindingArgs.builder()
/// .location(default_.location())
/// .project(default_.project())
/// .service(default_.name())
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
/// type: gcp:cloudrun:IamBinding
/// properties:
/// location: ${default.location}
/// project: ${default.project}
/// service: ${default.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudrun.IamMember
/// " pulumi-lang-dotnet=" gcp.cloudrun.IamMember
/// " pulumi-lang-go=" cloudrun.IamMember
/// " pulumi-lang-python=" cloudrun.IamMember
/// " pulumi-lang-yaml=" gcp.cloudrun.IamMember
/// " pulumi-lang-java=" gcp.cloudrun.IamMember
/// "> gcp.cloudrun.IamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudrun.IamMember("member", {
/// location: _default.location,
/// project: _default.project,
/// service: _default.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudrun.IamMember("member",
/// location=default["location"],
/// project=default["project"],
/// service=default["name"],
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
/// var member = new Gcp.CloudRun.IamMember("member", new()
/// {
/// Location = @default.Location,
/// Project = @default.Project,
/// Service = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrun.NewIamMember(ctx, "member", &cloudrun.IamMemberArgs{
/// Location: pulumi.Any(_default.Location),
/// Project:  pulumi.Any(_default.Project),
/// Service:  pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudrun.IamMember;
/// import com.pulumi.gcp.cloudrun.IamMemberArgs;
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
/// var member = new IamMember("member", IamMemberArgs.builder()
/// .location(default_.location())
/// .project(default_.project())
/// .service(default_.name())
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
/// type: gcp:cloudrun:IamMember
/// properties:
/// location: ${default.location}
/// project: ${default.project}
/// service: ${default.name}
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
/// # IAM policy for Cloud Run Service
///
/// Three different resources help you manage your IAM policy for Cloud Run Service. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.cloudrun.IamPolicy`" pulumi-lang-dotnet="`gcp.cloudrun.IamPolicy`" pulumi-lang-go="`cloudrun.IamPolicy`" pulumi-lang-python="`cloudrun.IamPolicy`" pulumi-lang-yaml="`gcp.cloudrun.IamPolicy`" pulumi-lang-java="`gcp.cloudrun.IamPolicy`">`gcp.cloudrun.IamPolicy`</span>: Authoritative. Sets the IAM policy for the service and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.cloudrun.IamBinding`" pulumi-lang-dotnet="`gcp.cloudrun.IamBinding`" pulumi-lang-go="`cloudrun.IamBinding`" pulumi-lang-python="`cloudrun.IamBinding`" pulumi-lang-yaml="`gcp.cloudrun.IamBinding`" pulumi-lang-java="`gcp.cloudrun.IamBinding`">`gcp.cloudrun.IamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the service are preserved.
/// * <span pulumi-lang-nodejs="`gcp.cloudrun.IamMember`" pulumi-lang-dotnet="`gcp.cloudrun.IamMember`" pulumi-lang-go="`cloudrun.IamMember`" pulumi-lang-python="`cloudrun.IamMember`" pulumi-lang-yaml="`gcp.cloudrun.IamMember`" pulumi-lang-java="`gcp.cloudrun.IamMember`">`gcp.cloudrun.IamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the service are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.cloudrun.IamPolicy`" pulumi-lang-dotnet="`gcp.cloudrun.IamPolicy`" pulumi-lang-go="`cloudrun.IamPolicy`" pulumi-lang-python="`cloudrun.IamPolicy`" pulumi-lang-yaml="`gcp.cloudrun.IamPolicy`" pulumi-lang-java="`gcp.cloudrun.IamPolicy`">`gcp.cloudrun.IamPolicy`</span>: Retrieves the IAM policy for the service
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudrun.IamPolicy`" pulumi-lang-dotnet="`gcp.cloudrun.IamPolicy`" pulumi-lang-go="`cloudrun.IamPolicy`" pulumi-lang-python="`cloudrun.IamPolicy`" pulumi-lang-yaml="`gcp.cloudrun.IamPolicy`" pulumi-lang-java="`gcp.cloudrun.IamPolicy`">`gcp.cloudrun.IamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudrun.IamBinding`" pulumi-lang-dotnet="`gcp.cloudrun.IamBinding`" pulumi-lang-go="`cloudrun.IamBinding`" pulumi-lang-python="`cloudrun.IamBinding`" pulumi-lang-yaml="`gcp.cloudrun.IamBinding`" pulumi-lang-java="`gcp.cloudrun.IamBinding`">`gcp.cloudrun.IamBinding`</span> and <span pulumi-lang-nodejs="`gcp.cloudrun.IamMember`" pulumi-lang-dotnet="`gcp.cloudrun.IamMember`" pulumi-lang-go="`cloudrun.IamMember`" pulumi-lang-python="`cloudrun.IamMember`" pulumi-lang-yaml="`gcp.cloudrun.IamMember`" pulumi-lang-java="`gcp.cloudrun.IamMember`">`gcp.cloudrun.IamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudrun.IamBinding`" pulumi-lang-dotnet="`gcp.cloudrun.IamBinding`" pulumi-lang-go="`cloudrun.IamBinding`" pulumi-lang-python="`cloudrun.IamBinding`" pulumi-lang-yaml="`gcp.cloudrun.IamBinding`" pulumi-lang-java="`gcp.cloudrun.IamBinding`">`gcp.cloudrun.IamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudrun.IamMember`" pulumi-lang-dotnet="`gcp.cloudrun.IamMember`" pulumi-lang-go="`cloudrun.IamMember`" pulumi-lang-python="`cloudrun.IamMember`" pulumi-lang-yaml="`gcp.cloudrun.IamMember`" pulumi-lang-java="`gcp.cloudrun.IamMember`">`gcp.cloudrun.IamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudrun.IamPolicy
/// " pulumi-lang-dotnet=" gcp.cloudrun.IamPolicy
/// " pulumi-lang-go=" cloudrun.IamPolicy
/// " pulumi-lang-python=" cloudrun.IamPolicy
/// " pulumi-lang-yaml=" gcp.cloudrun.IamPolicy
/// " pulumi-lang-java=" gcp.cloudrun.IamPolicy
/// "> gcp.cloudrun.IamPolicy
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
/// const policy = new gcp.cloudrun.IamPolicy("policy", {
/// location: _default.location,
/// project: _default.project,
/// service: _default.name,
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
/// policy = gcp.cloudrun.IamPolicy("policy",
/// location=default["location"],
/// project=default["project"],
/// service=default["name"],
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
/// var policy = new Gcp.CloudRun.IamPolicy("policy", new()
/// {
/// Location = @default.Location,
/// Project = @default.Project,
/// Service = @default.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
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
/// _, err = cloudrun.NewIamPolicy(ctx, "policy", &cloudrun.IamPolicyArgs{
/// Location:   pulumi.Any(_default.Location),
/// Project:    pulumi.Any(_default.Project),
/// Service:    pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudrun.IamPolicy;
/// import com.pulumi.gcp.cloudrun.IamPolicyArgs;
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
/// var policy = new IamPolicy("policy", IamPolicyArgs.builder()
/// .location(default_.location())
/// .project(default_.project())
/// .service(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:cloudrun:IamPolicy
/// properties:
/// location: ${default.location}
/// project: ${default.project}
/// service: ${default.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.cloudrun.IamBinding
/// " pulumi-lang-dotnet=" gcp.cloudrun.IamBinding
/// " pulumi-lang-go=" cloudrun.IamBinding
/// " pulumi-lang-python=" cloudrun.IamBinding
/// " pulumi-lang-yaml=" gcp.cloudrun.IamBinding
/// " pulumi-lang-java=" gcp.cloudrun.IamBinding
/// "> gcp.cloudrun.IamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudrun.IamBinding("binding", {
/// location: _default.location,
/// project: _default.project,
/// service: _default.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudrun.IamBinding("binding",
/// location=default["location"],
/// project=default["project"],
/// service=default["name"],
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
/// var binding = new Gcp.CloudRun.IamBinding("binding", new()
/// {
/// Location = @default.Location,
/// Project = @default.Project,
/// Service = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrun.NewIamBinding(ctx, "binding", &cloudrun.IamBindingArgs{
/// Location: pulumi.Any(_default.Location),
/// Project:  pulumi.Any(_default.Project),
/// Service:  pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudrun.IamBinding;
/// import com.pulumi.gcp.cloudrun.IamBindingArgs;
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
/// var binding = new IamBinding("binding", IamBindingArgs.builder()
/// .location(default_.location())
/// .project(default_.project())
/// .service(default_.name())
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
/// type: gcp:cloudrun:IamBinding
/// properties:
/// location: ${default.location}
/// project: ${default.project}
/// service: ${default.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudrun.IamMember
/// " pulumi-lang-dotnet=" gcp.cloudrun.IamMember
/// " pulumi-lang-go=" cloudrun.IamMember
/// " pulumi-lang-python=" cloudrun.IamMember
/// " pulumi-lang-yaml=" gcp.cloudrun.IamMember
/// " pulumi-lang-java=" gcp.cloudrun.IamMember
/// "> gcp.cloudrun.IamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudrun.IamMember("member", {
/// location: _default.location,
/// project: _default.project,
/// service: _default.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudrun.IamMember("member",
/// location=default["location"],
/// project=default["project"],
/// service=default["name"],
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
/// var member = new Gcp.CloudRun.IamMember("member", new()
/// {
/// Location = @default.Location,
/// Project = @default.Project,
/// Service = @default.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrun.NewIamMember(ctx, "member", &cloudrun.IamMemberArgs{
/// Location: pulumi.Any(_default.Location),
/// Project:  pulumi.Any(_default.Project),
/// Service:  pulumi.Any(_default.Name),
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
/// import com.pulumi.gcp.cloudrun.IamMember;
/// import com.pulumi.gcp.cloudrun.IamMemberArgs;
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
/// var member = new IamMember("member", IamMemberArgs.builder()
/// .location(default_.location())
/// .project(default_.project())
/// .service(default_.name())
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
/// type: gcp:cloudrun:IamMember
/// properties:
/// location: ${default.location}
/// project: ${default.project}
/// service: ${default.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/services/{{service}}
///
/// * {{project}}/{{location}}/{{service}}
///
/// * {{location}}/{{service}}
///
/// * {{service}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Run service IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudrun/iamPolicy:IamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{service}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudrun/iamPolicy:IamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{service}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudrun/iamPolicy:IamPolicy editor projects/{{project}}/locations/{{location}}/services/{{service}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class IamPolicy2 extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location of the cloud run instance. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> service;

  IamPolicy2(
    String name, {
    IamPolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrun/iamPolicy:IamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.service = registerOutput<String>('service');
  }
}
