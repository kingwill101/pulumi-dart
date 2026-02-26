import 'package:pulumi/pulumi.dart';
import 'function_iam_policy_args2.dart';

/// Three different resources help you manage your IAM policy for Cloud Functions (2nd gen) function. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamPolicy`">`gcp.cloudfunctionsv2.FunctionIamPolicy`</span>: Authoritative. Sets the IAM policy for the function and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamBinding`">`gcp.cloudfunctionsv2.FunctionIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the function are preserved.
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamMember`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamMember`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamMember`">`gcp.cloudfunctionsv2.FunctionIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the function are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamPolicy`">`gcp.cloudfunctionsv2.FunctionIamPolicy`</span>: Retrieves the IAM policy for the function
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamPolicy`">`gcp.cloudfunctionsv2.FunctionIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamBinding`">`gcp.cloudfunctionsv2.FunctionIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamMember`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamMember`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamMember`">`gcp.cloudfunctionsv2.FunctionIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamBinding`">`gcp.cloudfunctionsv2.FunctionIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamMember`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamMember`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamMember`">`gcp.cloudfunctionsv2.FunctionIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudfunctionsv2.FunctionIamPolicy
/// " pulumi-lang-dotnet=" gcp.cloudfunctionsv2.FunctionIamPolicy
/// " pulumi-lang-go=" cloudfunctionsv2.FunctionIamPolicy
/// " pulumi-lang-python=" cloudfunctionsv2.FunctionIamPolicy
/// " pulumi-lang-yaml=" gcp.cloudfunctionsv2.FunctionIamPolicy
/// " pulumi-lang-java=" gcp.cloudfunctionsv2.FunctionIamPolicy
/// "> gcp.cloudfunctionsv2.FunctionIamPolicy
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
/// const policy = new gcp.cloudfunctionsv2.FunctionIamPolicy("policy", {
/// project: _function.project,
/// location: _function.location,
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
/// policy = gcp.cloudfunctionsv2.FunctionIamPolicy("policy",
/// project=function["project"],
/// location=function["location"],
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
/// var policy = new Gcp.CloudFunctionsV2.FunctionIamPolicy("policy", new()
/// {
/// Project = function.Project,
/// Location = function.Location,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
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
/// _, err = cloudfunctionsv2.NewFunctionIamPolicy(ctx, "policy", &cloudfunctionsv2.FunctionIamPolicyArgs{
/// Project:       pulumi.Any(function.Project),
/// Location:      pulumi.Any(function.Location),
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
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamPolicy;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamPolicyArgs;
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
/// .location(function.location())
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
/// type: gcp:cloudfunctionsv2:FunctionIamPolicy
/// properties:
/// project: ${function.project}
/// location: ${function.location}
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
/// ##<span pulumi-lang-nodejs=" gcp.cloudfunctionsv2.FunctionIamBinding
/// " pulumi-lang-dotnet=" gcp.cloudfunctionsv2.FunctionIamBinding
/// " pulumi-lang-go=" cloudfunctionsv2.FunctionIamBinding
/// " pulumi-lang-python=" cloudfunctionsv2.FunctionIamBinding
/// " pulumi-lang-yaml=" gcp.cloudfunctionsv2.FunctionIamBinding
/// " pulumi-lang-java=" gcp.cloudfunctionsv2.FunctionIamBinding
/// "> gcp.cloudfunctionsv2.FunctionIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudfunctionsv2.FunctionIamBinding("binding", {
/// project: _function.project,
/// location: _function.location,
/// cloudFunction: _function.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudfunctionsv2.FunctionIamBinding("binding",
/// project=function["project"],
/// location=function["location"],
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
/// var binding = new Gcp.CloudFunctionsV2.FunctionIamBinding("binding", new()
/// {
/// Project = function.Project,
/// Location = function.Location,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfunctionsv2.NewFunctionIamBinding(ctx, "binding", &cloudfunctionsv2.FunctionIamBindingArgs{
/// Project:       pulumi.Any(function.Project),
/// Location:      pulumi.Any(function.Location),
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
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamBinding;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamBindingArgs;
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
/// .location(function.location())
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
/// type: gcp:cloudfunctionsv2:FunctionIamBinding
/// properties:
/// project: ${function.project}
/// location: ${function.location}
/// cloudFunction: ${function.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudfunctionsv2.FunctionIamMember
/// " pulumi-lang-dotnet=" gcp.cloudfunctionsv2.FunctionIamMember
/// " pulumi-lang-go=" cloudfunctionsv2.FunctionIamMember
/// " pulumi-lang-python=" cloudfunctionsv2.FunctionIamMember
/// " pulumi-lang-yaml=" gcp.cloudfunctionsv2.FunctionIamMember
/// " pulumi-lang-java=" gcp.cloudfunctionsv2.FunctionIamMember
/// "> gcp.cloudfunctionsv2.FunctionIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudfunctionsv2.FunctionIamMember("member", {
/// project: _function.project,
/// location: _function.location,
/// cloudFunction: _function.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudfunctionsv2.FunctionIamMember("member",
/// project=function["project"],
/// location=function["location"],
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
/// var member = new Gcp.CloudFunctionsV2.FunctionIamMember("member", new()
/// {
/// Project = function.Project,
/// Location = function.Location,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfunctionsv2.NewFunctionIamMember(ctx, "member", &cloudfunctionsv2.FunctionIamMemberArgs{
/// Project:       pulumi.Any(function.Project),
/// Location:      pulumi.Any(function.Location),
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
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamMember;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamMemberArgs;
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
/// .location(function.location())
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
/// type: gcp:cloudfunctionsv2:FunctionIamMember
/// properties:
/// project: ${function.project}
/// location: ${function.location}
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
/// # IAM policy for Cloud Functions (2nd gen) function
///
/// Three different resources help you manage your IAM policy for Cloud Functions (2nd gen) function. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamPolicy`">`gcp.cloudfunctionsv2.FunctionIamPolicy`</span>: Authoritative. Sets the IAM policy for the function and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamBinding`">`gcp.cloudfunctionsv2.FunctionIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the function are preserved.
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamMember`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamMember`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamMember`">`gcp.cloudfunctionsv2.FunctionIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the function are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamPolicy`">`gcp.cloudfunctionsv2.FunctionIamPolicy`</span>: Retrieves the IAM policy for the function
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamPolicy`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamPolicy`">`gcp.cloudfunctionsv2.FunctionIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamBinding`">`gcp.cloudfunctionsv2.FunctionIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamMember`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamMember`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamMember`">`gcp.cloudfunctionsv2.FunctionIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamBinding`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamBinding`">`gcp.cloudfunctionsv2.FunctionIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-dotnet="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-go="`cloudfunctionsv2.FunctionIamMember`" pulumi-lang-python="`cloudfunctionsv2.FunctionIamMember`" pulumi-lang-yaml="`gcp.cloudfunctionsv2.FunctionIamMember`" pulumi-lang-java="`gcp.cloudfunctionsv2.FunctionIamMember`">`gcp.cloudfunctionsv2.FunctionIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudfunctionsv2.FunctionIamPolicy
/// " pulumi-lang-dotnet=" gcp.cloudfunctionsv2.FunctionIamPolicy
/// " pulumi-lang-go=" cloudfunctionsv2.FunctionIamPolicy
/// " pulumi-lang-python=" cloudfunctionsv2.FunctionIamPolicy
/// " pulumi-lang-yaml=" gcp.cloudfunctionsv2.FunctionIamPolicy
/// " pulumi-lang-java=" gcp.cloudfunctionsv2.FunctionIamPolicy
/// "> gcp.cloudfunctionsv2.FunctionIamPolicy
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
/// const policy = new gcp.cloudfunctionsv2.FunctionIamPolicy("policy", {
/// project: _function.project,
/// location: _function.location,
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
/// policy = gcp.cloudfunctionsv2.FunctionIamPolicy("policy",
/// project=function["project"],
/// location=function["location"],
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
/// var policy = new Gcp.CloudFunctionsV2.FunctionIamPolicy("policy", new()
/// {
/// Project = function.Project,
/// Location = function.Location,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
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
/// _, err = cloudfunctionsv2.NewFunctionIamPolicy(ctx, "policy", &cloudfunctionsv2.FunctionIamPolicyArgs{
/// Project:       pulumi.Any(function.Project),
/// Location:      pulumi.Any(function.Location),
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
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamPolicy;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamPolicyArgs;
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
/// .location(function.location())
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
/// type: gcp:cloudfunctionsv2:FunctionIamPolicy
/// properties:
/// project: ${function.project}
/// location: ${function.location}
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
/// ##<span pulumi-lang-nodejs=" gcp.cloudfunctionsv2.FunctionIamBinding
/// " pulumi-lang-dotnet=" gcp.cloudfunctionsv2.FunctionIamBinding
/// " pulumi-lang-go=" cloudfunctionsv2.FunctionIamBinding
/// " pulumi-lang-python=" cloudfunctionsv2.FunctionIamBinding
/// " pulumi-lang-yaml=" gcp.cloudfunctionsv2.FunctionIamBinding
/// " pulumi-lang-java=" gcp.cloudfunctionsv2.FunctionIamBinding
/// "> gcp.cloudfunctionsv2.FunctionIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudfunctionsv2.FunctionIamBinding("binding", {
/// project: _function.project,
/// location: _function.location,
/// cloudFunction: _function.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudfunctionsv2.FunctionIamBinding("binding",
/// project=function["project"],
/// location=function["location"],
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
/// var binding = new Gcp.CloudFunctionsV2.FunctionIamBinding("binding", new()
/// {
/// Project = function.Project,
/// Location = function.Location,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfunctionsv2.NewFunctionIamBinding(ctx, "binding", &cloudfunctionsv2.FunctionIamBindingArgs{
/// Project:       pulumi.Any(function.Project),
/// Location:      pulumi.Any(function.Location),
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
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamBinding;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamBindingArgs;
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
/// .location(function.location())
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
/// type: gcp:cloudfunctionsv2:FunctionIamBinding
/// properties:
/// project: ${function.project}
/// location: ${function.location}
/// cloudFunction: ${function.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.cloudfunctionsv2.FunctionIamMember
/// " pulumi-lang-dotnet=" gcp.cloudfunctionsv2.FunctionIamMember
/// " pulumi-lang-go=" cloudfunctionsv2.FunctionIamMember
/// " pulumi-lang-python=" cloudfunctionsv2.FunctionIamMember
/// " pulumi-lang-yaml=" gcp.cloudfunctionsv2.FunctionIamMember
/// " pulumi-lang-java=" gcp.cloudfunctionsv2.FunctionIamMember
/// "> gcp.cloudfunctionsv2.FunctionIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudfunctionsv2.FunctionIamMember("member", {
/// project: _function.project,
/// location: _function.location,
/// cloudFunction: _function.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudfunctionsv2.FunctionIamMember("member",
/// project=function["project"],
/// location=function["location"],
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
/// var member = new Gcp.CloudFunctionsV2.FunctionIamMember("member", new()
/// {
/// Project = function.Project,
/// Location = function.Location,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfunctionsv2.NewFunctionIamMember(ctx, "member", &cloudfunctionsv2.FunctionIamMemberArgs{
/// Project:       pulumi.Any(function.Project),
/// Location:      pulumi.Any(function.Location),
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
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamMember;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamMemberArgs;
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
/// .location(function.location())
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
/// type: gcp:cloudfunctionsv2:FunctionIamMember
/// properties:
/// project: ${function.project}
/// location: ${function.location}
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
/// * projects/{{project}}/locations/{{location}}/functions/{{cloud_function}}
///
/// * {{project}}/{{location}}/{{cloud_function}}
///
/// * {{location}}/{{cloud_function}}
///
/// * {{cloud_function}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Functions (2nd gen) function IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudfunctionsv2/functionIamPolicy:FunctionIamPolicy editor "projects/{{project}}/locations/{{location}}/functions/{{cloud_function}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudfunctionsv2/functionIamPolicy:FunctionIamPolicy editor "projects/{{project}}/locations/{{location}}/functions/{{cloud_function}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudfunctionsv2/functionIamPolicy:FunctionIamPolicy editor projects/{{project}}/locations/{{location}}/functions/{{cloud_function}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class FunctionIamPolicy2 extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> cloudFunction;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location of this cloud function. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  FunctionIamPolicy2(
    String name, {
    FunctionIamPolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudfunctionsv2/functionIamPolicy:FunctionIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloudFunction = registerOutput<String>('cloudFunction');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
