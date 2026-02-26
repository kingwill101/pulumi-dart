import 'package:pulumi/pulumi.dart';
import '../function_iam_binding_condition/function_iam_binding_condition.dart';
import 'function_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Functions CloudFunction. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-go="`cloudfunctions.FunctionIamPolicy`" pulumi-lang-python="`cloudfunctions.FunctionIamPolicy`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamPolicy`">`gcp.cloudfunctions.FunctionIamPolicy`</span>: Authoritative. Sets the IAM policy for the cloudfunction and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-go="`cloudfunctions.FunctionIamBinding`" pulumi-lang-python="`cloudfunctions.FunctionIamBinding`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamBinding`">`gcp.cloudfunctions.FunctionIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the cloudfunction are preserved.
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-go="`cloudfunctions.FunctionIamMember`" pulumi-lang-python="`cloudfunctions.FunctionIamMember`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamMember`">`gcp.cloudfunctions.FunctionIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the cloudfunction are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-go="`cloudfunctions.FunctionIamPolicy`" pulumi-lang-python="`cloudfunctions.FunctionIamPolicy`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamPolicy`">`gcp.cloudfunctions.FunctionIamPolicy`</span>: Retrieves the IAM policy for the cloudfunction
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-go="`cloudfunctions.FunctionIamPolicy`" pulumi-lang-python="`cloudfunctions.FunctionIamPolicy`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamPolicy`">`gcp.cloudfunctions.FunctionIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-go="`cloudfunctions.FunctionIamBinding`" pulumi-lang-python="`cloudfunctions.FunctionIamBinding`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamBinding`">`gcp.cloudfunctions.FunctionIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-go="`cloudfunctions.FunctionIamMember`" pulumi-lang-python="`cloudfunctions.FunctionIamMember`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamMember`">`gcp.cloudfunctions.FunctionIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-go="`cloudfunctions.FunctionIamBinding`" pulumi-lang-python="`cloudfunctions.FunctionIamBinding`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamBinding`">`gcp.cloudfunctions.FunctionIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-go="`cloudfunctions.FunctionIamMember`" pulumi-lang-python="`cloudfunctions.FunctionIamMember`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamMember`">`gcp.cloudfunctions.FunctionIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudfunctions.FunctionIamPolicy
/// " pulumi-lang-dotnet=" gcp.cloudfunctions.FunctionIamPolicy
/// " pulumi-lang-go=" cloudfunctions.FunctionIamPolicy
/// " pulumi-lang-python=" cloudfunctions.FunctionIamPolicy
/// " pulumi-lang-yaml=" gcp.cloudfunctions.FunctionIamPolicy
/// " pulumi-lang-java=" gcp.cloudfunctions.FunctionIamPolicy
/// "> gcp.cloudfunctions.FunctionIamPolicy
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
/// const policy = new gcp.cloudfunctions.FunctionIamPolicy("policy", {
/// project: _function.project,
/// region: _function.region,
/// cloudFunction: _function.name,
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
/// policy = gcp.cloudfunctions.FunctionIamPolicy("policy",
/// project=function["project"],
/// region=function["region"],
/// cloud_function=function["name"],
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
/// var policy = new Gcp.CloudFunctions.FunctionIamPolicy("policy", new()
/// {
/// Project = function.Project,
/// Region = function.Region,
/// CloudFunction = function.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctions"
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
/// _, err = cloudfunctions.NewFunctionIamPolicy(ctx, "policy", &cloudfunctions.FunctionIamPolicyArgs{
/// Project:       pulumi.Any(function.Project),
/// Region:        pulumi.Any(function.Region),
/// CloudFunction: pulumi.Any(function.Name),
/// PolicyData:    pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.cloudfunctions.FunctionIamPolicy;
/// import com.pulumi.gcp.cloudfunctions.FunctionIamPolicyArgs;
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
/// var policy = new FunctionIamPolicy("policy", FunctionIamPolicyArgs.builder()
/// .project(function.project())
/// .region(function.region())
/// .cloudFunction(function.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:cloudfunctions:FunctionIamPolicy
/// properties:
/// project: ${function.project}
/// region: ${function.region}
/// cloudFunction: ${function.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.cloudfunctions.FunctionIamBinding
/// " pulumi-lang-dotnet=" gcp.cloudfunctions.FunctionIamBinding
/// " pulumi-lang-go=" cloudfunctions.FunctionIamBinding
/// " pulumi-lang-python=" cloudfunctions.FunctionIamBinding
/// " pulumi-lang-yaml=" gcp.cloudfunctions.FunctionIamBinding
/// " pulumi-lang-java=" gcp.cloudfunctions.FunctionIamBinding
/// "> gcp.cloudfunctions.FunctionIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudfunctions.FunctionIamBinding("binding", {
/// project: _function.project,
/// region: _function.region,
/// cloudFunction: _function.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudfunctions.FunctionIamBinding("binding",
/// project=function["project"],
/// region=function["region"],
/// cloud_function=function["name"],
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
/// var binding = new Gcp.CloudFunctions.FunctionIamBinding("binding", new()
/// {
/// Project = function.Project,
/// Region = function.Region,
/// CloudFunction = function.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctions"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfunctions.NewFunctionIamBinding(ctx, "binding", &cloudfunctions.FunctionIamBindingArgs{
/// Project:       pulumi.Any(function.Project),
/// Region:        pulumi.Any(function.Region),
/// CloudFunction: pulumi.Any(function.Name),
/// Role:          pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.cloudfunctions.FunctionIamBinding;
/// import com.pulumi.gcp.cloudfunctions.FunctionIamBindingArgs;
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
/// var binding = new FunctionIamBinding("binding", FunctionIamBindingArgs.builder()
/// .project(function.project())
/// .region(function.region())
/// .cloudFunction(function.name())
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
/// type: gcp:cloudfunctions:FunctionIamBinding
/// properties:
/// project: ${function.project}
/// region: ${function.region}
/// cloudFunction: ${function.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudfunctions.FunctionIamMember
/// " pulumi-lang-dotnet=" gcp.cloudfunctions.FunctionIamMember
/// " pulumi-lang-go=" cloudfunctions.FunctionIamMember
/// " pulumi-lang-python=" cloudfunctions.FunctionIamMember
/// " pulumi-lang-yaml=" gcp.cloudfunctions.FunctionIamMember
/// " pulumi-lang-java=" gcp.cloudfunctions.FunctionIamMember
/// "> gcp.cloudfunctions.FunctionIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudfunctions.FunctionIamMember("member", {
/// project: _function.project,
/// region: _function.region,
/// cloudFunction: _function.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudfunctions.FunctionIamMember("member",
/// project=function["project"],
/// region=function["region"],
/// cloud_function=function["name"],
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
/// var member = new Gcp.CloudFunctions.FunctionIamMember("member", new()
/// {
/// Project = function.Project,
/// Region = function.Region,
/// CloudFunction = function.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctions"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfunctions.NewFunctionIamMember(ctx, "member", &cloudfunctions.FunctionIamMemberArgs{
/// Project:       pulumi.Any(function.Project),
/// Region:        pulumi.Any(function.Region),
/// CloudFunction: pulumi.Any(function.Name),
/// Role:          pulumi.String("roles/viewer"),
/// Member:        pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.cloudfunctions.FunctionIamMember;
/// import com.pulumi.gcp.cloudfunctions.FunctionIamMemberArgs;
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
/// var member = new FunctionIamMember("member", FunctionIamMemberArgs.builder()
/// .project(function.project())
/// .region(function.region())
/// .cloudFunction(function.name())
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
/// type: gcp:cloudfunctions:FunctionIamMember
/// properties:
/// project: ${function.project}
/// region: ${function.region}
/// cloudFunction: ${function.name}
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
/// # IAM policy for Cloud Functions CloudFunction
///
/// Three different resources help you manage your IAM policy for Cloud Functions CloudFunction. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-go="`cloudfunctions.FunctionIamPolicy`" pulumi-lang-python="`cloudfunctions.FunctionIamPolicy`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamPolicy`">`gcp.cloudfunctions.FunctionIamPolicy`</span>: Authoritative. Sets the IAM policy for the cloudfunction and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-go="`cloudfunctions.FunctionIamBinding`" pulumi-lang-python="`cloudfunctions.FunctionIamBinding`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamBinding`">`gcp.cloudfunctions.FunctionIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the cloudfunction are preserved.
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-go="`cloudfunctions.FunctionIamMember`" pulumi-lang-python="`cloudfunctions.FunctionIamMember`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamMember`">`gcp.cloudfunctions.FunctionIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the cloudfunction are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-go="`cloudfunctions.FunctionIamPolicy`" pulumi-lang-python="`cloudfunctions.FunctionIamPolicy`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamPolicy`">`gcp.cloudfunctions.FunctionIamPolicy`</span>: Retrieves the IAM policy for the cloudfunction
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-go="`cloudfunctions.FunctionIamPolicy`" pulumi-lang-python="`cloudfunctions.FunctionIamPolicy`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamPolicy`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamPolicy`">`gcp.cloudfunctions.FunctionIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-go="`cloudfunctions.FunctionIamBinding`" pulumi-lang-python="`cloudfunctions.FunctionIamBinding`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamBinding`">`gcp.cloudfunctions.FunctionIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-go="`cloudfunctions.FunctionIamMember`" pulumi-lang-python="`cloudfunctions.FunctionIamMember`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamMember`">`gcp.cloudfunctions.FunctionIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-go="`cloudfunctions.FunctionIamBinding`" pulumi-lang-python="`cloudfunctions.FunctionIamBinding`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamBinding`">`gcp.cloudfunctions.FunctionIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-go="`cloudfunctions.FunctionIamMember`" pulumi-lang-python="`cloudfunctions.FunctionIamMember`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamMember`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamMember`">`gcp.cloudfunctions.FunctionIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudfunctions.FunctionIamPolicy
/// " pulumi-lang-dotnet=" gcp.cloudfunctions.FunctionIamPolicy
/// " pulumi-lang-go=" cloudfunctions.FunctionIamPolicy
/// " pulumi-lang-python=" cloudfunctions.FunctionIamPolicy
/// " pulumi-lang-yaml=" gcp.cloudfunctions.FunctionIamPolicy
/// " pulumi-lang-java=" gcp.cloudfunctions.FunctionIamPolicy
/// "> gcp.cloudfunctions.FunctionIamPolicy
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
/// const policy = new gcp.cloudfunctions.FunctionIamPolicy("policy", {
/// project: _function.project,
/// region: _function.region,
/// cloudFunction: _function.name,
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
/// policy = gcp.cloudfunctions.FunctionIamPolicy("policy",
/// project=function["project"],
/// region=function["region"],
/// cloud_function=function["name"],
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
/// var policy = new Gcp.CloudFunctions.FunctionIamPolicy("policy", new()
/// {
/// Project = function.Project,
/// Region = function.Region,
/// CloudFunction = function.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctions"
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
/// _, err = cloudfunctions.NewFunctionIamPolicy(ctx, "policy", &cloudfunctions.FunctionIamPolicyArgs{
/// Project:       pulumi.Any(function.Project),
/// Region:        pulumi.Any(function.Region),
/// CloudFunction: pulumi.Any(function.Name),
/// PolicyData:    pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.cloudfunctions.FunctionIamPolicy;
/// import com.pulumi.gcp.cloudfunctions.FunctionIamPolicyArgs;
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
/// var policy = new FunctionIamPolicy("policy", FunctionIamPolicyArgs.builder()
/// .project(function.project())
/// .region(function.region())
/// .cloudFunction(function.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:cloudfunctions:FunctionIamPolicy
/// properties:
/// project: ${function.project}
/// region: ${function.region}
/// cloudFunction: ${function.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.cloudfunctions.FunctionIamBinding
/// " pulumi-lang-dotnet=" gcp.cloudfunctions.FunctionIamBinding
/// " pulumi-lang-go=" cloudfunctions.FunctionIamBinding
/// " pulumi-lang-python=" cloudfunctions.FunctionIamBinding
/// " pulumi-lang-yaml=" gcp.cloudfunctions.FunctionIamBinding
/// " pulumi-lang-java=" gcp.cloudfunctions.FunctionIamBinding
/// "> gcp.cloudfunctions.FunctionIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudfunctions.FunctionIamBinding("binding", {
/// project: _function.project,
/// region: _function.region,
/// cloudFunction: _function.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudfunctions.FunctionIamBinding("binding",
/// project=function["project"],
/// region=function["region"],
/// cloud_function=function["name"],
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
/// var binding = new Gcp.CloudFunctions.FunctionIamBinding("binding", new()
/// {
/// Project = function.Project,
/// Region = function.Region,
/// CloudFunction = function.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctions"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfunctions.NewFunctionIamBinding(ctx, "binding", &cloudfunctions.FunctionIamBindingArgs{
/// Project:       pulumi.Any(function.Project),
/// Region:        pulumi.Any(function.Region),
/// CloudFunction: pulumi.Any(function.Name),
/// Role:          pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.cloudfunctions.FunctionIamBinding;
/// import com.pulumi.gcp.cloudfunctions.FunctionIamBindingArgs;
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
/// var binding = new FunctionIamBinding("binding", FunctionIamBindingArgs.builder()
/// .project(function.project())
/// .region(function.region())
/// .cloudFunction(function.name())
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
/// type: gcp:cloudfunctions:FunctionIamBinding
/// properties:
/// project: ${function.project}
/// region: ${function.region}
/// cloudFunction: ${function.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudfunctions.FunctionIamMember
/// " pulumi-lang-dotnet=" gcp.cloudfunctions.FunctionIamMember
/// " pulumi-lang-go=" cloudfunctions.FunctionIamMember
/// " pulumi-lang-python=" cloudfunctions.FunctionIamMember
/// " pulumi-lang-yaml=" gcp.cloudfunctions.FunctionIamMember
/// " pulumi-lang-java=" gcp.cloudfunctions.FunctionIamMember
/// "> gcp.cloudfunctions.FunctionIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudfunctions.FunctionIamMember("member", {
/// project: _function.project,
/// region: _function.region,
/// cloudFunction: _function.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudfunctions.FunctionIamMember("member",
/// project=function["project"],
/// region=function["region"],
/// cloud_function=function["name"],
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
/// var member = new Gcp.CloudFunctions.FunctionIamMember("member", new()
/// {
/// Project = function.Project,
/// Region = function.Region,
/// CloudFunction = function.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctions"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfunctions.NewFunctionIamMember(ctx, "member", &cloudfunctions.FunctionIamMemberArgs{
/// Project:       pulumi.Any(function.Project),
/// Region:        pulumi.Any(function.Region),
/// CloudFunction: pulumi.Any(function.Name),
/// Role:          pulumi.String("roles/viewer"),
/// Member:        pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.cloudfunctions.FunctionIamMember;
/// import com.pulumi.gcp.cloudfunctions.FunctionIamMemberArgs;
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
/// var member = new FunctionIamMember("member", FunctionIamMemberArgs.builder()
/// .project(function.project())
/// .region(function.region())
/// .cloudFunction(function.name())
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
/// type: gcp:cloudfunctions:FunctionIamMember
/// properties:
/// project: ${function.project}
/// region: ${function.region}
/// cloudFunction: ${function.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{region}}/functions/{{cloud_function}}
///
/// * {{project}}/{{region}}/{{cloud_function}}
///
/// * {{region}}/{{cloud_function}}
///
/// * {{cloud_function}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Functions cloudfunction IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudfunctions/functionIamBinding:FunctionIamBinding editor "projects/{{project}}/locations/{{region}}/functions/{{cloud_function}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudfunctions/functionIamBinding:FunctionIamBinding editor "projects/{{project}}/locations/{{region}}/functions/{{cloud_function}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudfunctions/functionIamBinding:FunctionIamBinding editor projects/{{project}}/locations/{{region}}/functions/{{cloud_function}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class FunctionIamBinding extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> cloudFunction;
  late final Output<FunctionIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

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
  late final Output<List<String>> members;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The location of this cloud function. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final Output<String> region;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-dotnet="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-go="`cloudfunctions.FunctionIamBinding`" pulumi-lang-python="`cloudfunctions.FunctionIamBinding`" pulumi-lang-yaml="`gcp.cloudfunctions.FunctionIamBinding`" pulumi-lang-java="`gcp.cloudfunctions.FunctionIamBinding`">`gcp.cloudfunctions.FunctionIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  FunctionIamBinding(
    String name, {
    FunctionIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudfunctions/functionIamBinding:FunctionIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloudFunction = registerOutput<String>('cloudFunction');
    this.condition = registerOutput<FunctionIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
