import 'package:pulumi/pulumi.dart';
import '../gateway_iam_member_condition/gateway_iam_member_condition.dart';
import 'gateway_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for API Gateway Gateway. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-go="`apigateway.GatewayIamPolicy`" pulumi-lang-python="`apigateway.GatewayIamPolicy`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-java="`gcp.apigateway.GatewayIamPolicy`">`gcp.apigateway.GatewayIamPolicy`</span>: Authoritative. Sets the IAM policy for the gateway and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-go="`apigateway.GatewayIamBinding`" pulumi-lang-python="`apigateway.GatewayIamBinding`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-java="`gcp.apigateway.GatewayIamBinding`">`gcp.apigateway.GatewayIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the gateway are preserved.
/// * <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamMember`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamMember`" pulumi-lang-go="`apigateway.GatewayIamMember`" pulumi-lang-python="`apigateway.GatewayIamMember`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamMember`" pulumi-lang-java="`gcp.apigateway.GatewayIamMember`">`gcp.apigateway.GatewayIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the gateway are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-go="`apigateway.GatewayIamPolicy`" pulumi-lang-python="`apigateway.GatewayIamPolicy`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-java="`gcp.apigateway.GatewayIamPolicy`">`gcp.apigateway.GatewayIamPolicy`</span>: Retrieves the IAM policy for the gateway
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-go="`apigateway.GatewayIamPolicy`" pulumi-lang-python="`apigateway.GatewayIamPolicy`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-java="`gcp.apigateway.GatewayIamPolicy`">`gcp.apigateway.GatewayIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-go="`apigateway.GatewayIamBinding`" pulumi-lang-python="`apigateway.GatewayIamBinding`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-java="`gcp.apigateway.GatewayIamBinding`">`gcp.apigateway.GatewayIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamMember`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamMember`" pulumi-lang-go="`apigateway.GatewayIamMember`" pulumi-lang-python="`apigateway.GatewayIamMember`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamMember`" pulumi-lang-java="`gcp.apigateway.GatewayIamMember`">`gcp.apigateway.GatewayIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-go="`apigateway.GatewayIamBinding`" pulumi-lang-python="`apigateway.GatewayIamBinding`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-java="`gcp.apigateway.GatewayIamBinding`">`gcp.apigateway.GatewayIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamMember`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamMember`" pulumi-lang-go="`apigateway.GatewayIamMember`" pulumi-lang-python="`apigateway.GatewayIamMember`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamMember`" pulumi-lang-java="`gcp.apigateway.GatewayIamMember`">`gcp.apigateway.GatewayIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.apigateway.GatewayIamPolicy
/// " pulumi-lang-dotnet=" gcp.apigateway.GatewayIamPolicy
/// " pulumi-lang-go=" apigateway.GatewayIamPolicy
/// " pulumi-lang-python=" apigateway.GatewayIamPolicy
/// " pulumi-lang-yaml=" gcp.apigateway.GatewayIamPolicy
/// " pulumi-lang-java=" gcp.apigateway.GatewayIamPolicy
/// "> gcp.apigateway.GatewayIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/apigateway.viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.apigateway.GatewayIamPolicy("policy", {
/// project: apiGw.project,
/// region: apiGw.region,
/// gateway: apiGw.gatewayId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/apigateway.viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.apigateway.GatewayIamPolicy("policy",
/// project=api_gw["project"],
/// region=api_gw["region"],
/// gateway=api_gw["gatewayId"],
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
/// Role = "roles/apigateway.viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.ApiGateway.GatewayIamPolicy("policy", new()
/// {
/// Project = apiGw.Project,
/// Region = apiGw.Region,
/// Gateway = apiGw.GatewayId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/apigateway.viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = apigateway.NewGatewayIamPolicy(ctx, "policy", &apigateway.GatewayIamPolicyArgs{
/// Project:    pulumi.Any(apiGw.Project),
/// Region:     pulumi.Any(apiGw.Region),
/// Gateway:    pulumi.Any(apiGw.GatewayId),
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
/// import com.pulumi.gcp.apigateway.GatewayIamPolicy;
/// import com.pulumi.gcp.apigateway.GatewayIamPolicyArgs;
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
/// .role("roles/apigateway.viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new GatewayIamPolicy("policy", GatewayIamPolicyArgs.builder()
/// .project(apiGw.project())
/// .region(apiGw.region())
/// .gateway(apiGw.gatewayId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:apigateway:GatewayIamPolicy
/// properties:
/// project: ${apiGw.project}
/// region: ${apiGw.region}
/// gateway: ${apiGw.gatewayId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/apigateway.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.apigateway.GatewayIamBinding
/// " pulumi-lang-dotnet=" gcp.apigateway.GatewayIamBinding
/// " pulumi-lang-go=" apigateway.GatewayIamBinding
/// " pulumi-lang-python=" apigateway.GatewayIamBinding
/// " pulumi-lang-yaml=" gcp.apigateway.GatewayIamBinding
/// " pulumi-lang-java=" gcp.apigateway.GatewayIamBinding
/// "> gcp.apigateway.GatewayIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.apigateway.GatewayIamBinding("binding", {
/// project: apiGw.project,
/// region: apiGw.region,
/// gateway: apiGw.gatewayId,
/// role: "roles/apigateway.viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.apigateway.GatewayIamBinding("binding",
/// project=api_gw["project"],
/// region=api_gw["region"],
/// gateway=api_gw["gatewayId"],
/// role="roles/apigateway.viewer",
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
/// var binding = new Gcp.ApiGateway.GatewayIamBinding("binding", new()
/// {
/// Project = apiGw.Project,
/// Region = apiGw.Region,
/// Gateway = apiGw.GatewayId,
/// Role = "roles/apigateway.viewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigateway.NewGatewayIamBinding(ctx, "binding", &apigateway.GatewayIamBindingArgs{
/// Project: pulumi.Any(apiGw.Project),
/// Region:  pulumi.Any(apiGw.Region),
/// Gateway: pulumi.Any(apiGw.GatewayId),
/// Role:    pulumi.String("roles/apigateway.viewer"),
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
/// import com.pulumi.gcp.apigateway.GatewayIamBinding;
/// import com.pulumi.gcp.apigateway.GatewayIamBindingArgs;
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
/// var binding = new GatewayIamBinding("binding", GatewayIamBindingArgs.builder()
/// .project(apiGw.project())
/// .region(apiGw.region())
/// .gateway(apiGw.gatewayId())
/// .role("roles/apigateway.viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:apigateway:GatewayIamBinding
/// properties:
/// project: ${apiGw.project}
/// region: ${apiGw.region}
/// gateway: ${apiGw.gatewayId}
/// role: roles/apigateway.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.apigateway.GatewayIamMember
/// " pulumi-lang-dotnet=" gcp.apigateway.GatewayIamMember
/// " pulumi-lang-go=" apigateway.GatewayIamMember
/// " pulumi-lang-python=" apigateway.GatewayIamMember
/// " pulumi-lang-yaml=" gcp.apigateway.GatewayIamMember
/// " pulumi-lang-java=" gcp.apigateway.GatewayIamMember
/// "> gcp.apigateway.GatewayIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.apigateway.GatewayIamMember("member", {
/// project: apiGw.project,
/// region: apiGw.region,
/// gateway: apiGw.gatewayId,
/// role: "roles/apigateway.viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.apigateway.GatewayIamMember("member",
/// project=api_gw["project"],
/// region=api_gw["region"],
/// gateway=api_gw["gatewayId"],
/// role="roles/apigateway.viewer",
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
/// var member = new Gcp.ApiGateway.GatewayIamMember("member", new()
/// {
/// Project = apiGw.Project,
/// Region = apiGw.Region,
/// Gateway = apiGw.GatewayId,
/// Role = "roles/apigateway.viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigateway.NewGatewayIamMember(ctx, "member", &apigateway.GatewayIamMemberArgs{
/// Project: pulumi.Any(apiGw.Project),
/// Region:  pulumi.Any(apiGw.Region),
/// Gateway: pulumi.Any(apiGw.GatewayId),
/// Role:    pulumi.String("roles/apigateway.viewer"),
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
/// import com.pulumi.gcp.apigateway.GatewayIamMember;
/// import com.pulumi.gcp.apigateway.GatewayIamMemberArgs;
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
/// var member = new GatewayIamMember("member", GatewayIamMemberArgs.builder()
/// .project(apiGw.project())
/// .region(apiGw.region())
/// .gateway(apiGw.gatewayId())
/// .role("roles/apigateway.viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:apigateway:GatewayIamMember
/// properties:
/// project: ${apiGw.project}
/// region: ${apiGw.region}
/// gateway: ${apiGw.gatewayId}
/// role: roles/apigateway.viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for API Gateway Gateway
///
/// Three different resources help you manage your IAM policy for API Gateway Gateway. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-go="`apigateway.GatewayIamPolicy`" pulumi-lang-python="`apigateway.GatewayIamPolicy`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-java="`gcp.apigateway.GatewayIamPolicy`">`gcp.apigateway.GatewayIamPolicy`</span>: Authoritative. Sets the IAM policy for the gateway and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-go="`apigateway.GatewayIamBinding`" pulumi-lang-python="`apigateway.GatewayIamBinding`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-java="`gcp.apigateway.GatewayIamBinding`">`gcp.apigateway.GatewayIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the gateway are preserved.
/// * <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamMember`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamMember`" pulumi-lang-go="`apigateway.GatewayIamMember`" pulumi-lang-python="`apigateway.GatewayIamMember`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamMember`" pulumi-lang-java="`gcp.apigateway.GatewayIamMember`">`gcp.apigateway.GatewayIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the gateway are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-go="`apigateway.GatewayIamPolicy`" pulumi-lang-python="`apigateway.GatewayIamPolicy`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-java="`gcp.apigateway.GatewayIamPolicy`">`gcp.apigateway.GatewayIamPolicy`</span>: Retrieves the IAM policy for the gateway
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-go="`apigateway.GatewayIamPolicy`" pulumi-lang-python="`apigateway.GatewayIamPolicy`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamPolicy`" pulumi-lang-java="`gcp.apigateway.GatewayIamPolicy`">`gcp.apigateway.GatewayIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-go="`apigateway.GatewayIamBinding`" pulumi-lang-python="`apigateway.GatewayIamBinding`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-java="`gcp.apigateway.GatewayIamBinding`">`gcp.apigateway.GatewayIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamMember`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamMember`" pulumi-lang-go="`apigateway.GatewayIamMember`" pulumi-lang-python="`apigateway.GatewayIamMember`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamMember`" pulumi-lang-java="`gcp.apigateway.GatewayIamMember`">`gcp.apigateway.GatewayIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-go="`apigateway.GatewayIamBinding`" pulumi-lang-python="`apigateway.GatewayIamBinding`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-java="`gcp.apigateway.GatewayIamBinding`">`gcp.apigateway.GatewayIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamMember`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamMember`" pulumi-lang-go="`apigateway.GatewayIamMember`" pulumi-lang-python="`apigateway.GatewayIamMember`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamMember`" pulumi-lang-java="`gcp.apigateway.GatewayIamMember`">`gcp.apigateway.GatewayIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.apigateway.GatewayIamPolicy
/// " pulumi-lang-dotnet=" gcp.apigateway.GatewayIamPolicy
/// " pulumi-lang-go=" apigateway.GatewayIamPolicy
/// " pulumi-lang-python=" apigateway.GatewayIamPolicy
/// " pulumi-lang-yaml=" gcp.apigateway.GatewayIamPolicy
/// " pulumi-lang-java=" gcp.apigateway.GatewayIamPolicy
/// "> gcp.apigateway.GatewayIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/apigateway.viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.apigateway.GatewayIamPolicy("policy", {
/// project: apiGw.project,
/// region: apiGw.region,
/// gateway: apiGw.gatewayId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/apigateway.viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.apigateway.GatewayIamPolicy("policy",
/// project=api_gw["project"],
/// region=api_gw["region"],
/// gateway=api_gw["gatewayId"],
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
/// Role = "roles/apigateway.viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.ApiGateway.GatewayIamPolicy("policy", new()
/// {
/// Project = apiGw.Project,
/// Region = apiGw.Region,
/// Gateway = apiGw.GatewayId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/apigateway.viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = apigateway.NewGatewayIamPolicy(ctx, "policy", &apigateway.GatewayIamPolicyArgs{
/// Project:    pulumi.Any(apiGw.Project),
/// Region:     pulumi.Any(apiGw.Region),
/// Gateway:    pulumi.Any(apiGw.GatewayId),
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
/// import com.pulumi.gcp.apigateway.GatewayIamPolicy;
/// import com.pulumi.gcp.apigateway.GatewayIamPolicyArgs;
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
/// .role("roles/apigateway.viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new GatewayIamPolicy("policy", GatewayIamPolicyArgs.builder()
/// .project(apiGw.project())
/// .region(apiGw.region())
/// .gateway(apiGw.gatewayId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:apigateway:GatewayIamPolicy
/// properties:
/// project: ${apiGw.project}
/// region: ${apiGw.region}
/// gateway: ${apiGw.gatewayId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/apigateway.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.apigateway.GatewayIamBinding
/// " pulumi-lang-dotnet=" gcp.apigateway.GatewayIamBinding
/// " pulumi-lang-go=" apigateway.GatewayIamBinding
/// " pulumi-lang-python=" apigateway.GatewayIamBinding
/// " pulumi-lang-yaml=" gcp.apigateway.GatewayIamBinding
/// " pulumi-lang-java=" gcp.apigateway.GatewayIamBinding
/// "> gcp.apigateway.GatewayIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.apigateway.GatewayIamBinding("binding", {
/// project: apiGw.project,
/// region: apiGw.region,
/// gateway: apiGw.gatewayId,
/// role: "roles/apigateway.viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.apigateway.GatewayIamBinding("binding",
/// project=api_gw["project"],
/// region=api_gw["region"],
/// gateway=api_gw["gatewayId"],
/// role="roles/apigateway.viewer",
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
/// var binding = new Gcp.ApiGateway.GatewayIamBinding("binding", new()
/// {
/// Project = apiGw.Project,
/// Region = apiGw.Region,
/// Gateway = apiGw.GatewayId,
/// Role = "roles/apigateway.viewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigateway.NewGatewayIamBinding(ctx, "binding", &apigateway.GatewayIamBindingArgs{
/// Project: pulumi.Any(apiGw.Project),
/// Region:  pulumi.Any(apiGw.Region),
/// Gateway: pulumi.Any(apiGw.GatewayId),
/// Role:    pulumi.String("roles/apigateway.viewer"),
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
/// import com.pulumi.gcp.apigateway.GatewayIamBinding;
/// import com.pulumi.gcp.apigateway.GatewayIamBindingArgs;
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
/// var binding = new GatewayIamBinding("binding", GatewayIamBindingArgs.builder()
/// .project(apiGw.project())
/// .region(apiGw.region())
/// .gateway(apiGw.gatewayId())
/// .role("roles/apigateway.viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:apigateway:GatewayIamBinding
/// properties:
/// project: ${apiGw.project}
/// region: ${apiGw.region}
/// gateway: ${apiGw.gatewayId}
/// role: roles/apigateway.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.apigateway.GatewayIamMember
/// " pulumi-lang-dotnet=" gcp.apigateway.GatewayIamMember
/// " pulumi-lang-go=" apigateway.GatewayIamMember
/// " pulumi-lang-python=" apigateway.GatewayIamMember
/// " pulumi-lang-yaml=" gcp.apigateway.GatewayIamMember
/// " pulumi-lang-java=" gcp.apigateway.GatewayIamMember
/// "> gcp.apigateway.GatewayIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.apigateway.GatewayIamMember("member", {
/// project: apiGw.project,
/// region: apiGw.region,
/// gateway: apiGw.gatewayId,
/// role: "roles/apigateway.viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.apigateway.GatewayIamMember("member",
/// project=api_gw["project"],
/// region=api_gw["region"],
/// gateway=api_gw["gatewayId"],
/// role="roles/apigateway.viewer",
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
/// var member = new Gcp.ApiGateway.GatewayIamMember("member", new()
/// {
/// Project = apiGw.Project,
/// Region = apiGw.Region,
/// Gateway = apiGw.GatewayId,
/// Role = "roles/apigateway.viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigateway.NewGatewayIamMember(ctx, "member", &apigateway.GatewayIamMemberArgs{
/// Project: pulumi.Any(apiGw.Project),
/// Region:  pulumi.Any(apiGw.Region),
/// Gateway: pulumi.Any(apiGw.GatewayId),
/// Role:    pulumi.String("roles/apigateway.viewer"),
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
/// import com.pulumi.gcp.apigateway.GatewayIamMember;
/// import com.pulumi.gcp.apigateway.GatewayIamMemberArgs;
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
/// var member = new GatewayIamMember("member", GatewayIamMemberArgs.builder()
/// .project(apiGw.project())
/// .region(apiGw.region())
/// .gateway(apiGw.gatewayId())
/// .role("roles/apigateway.viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:apigateway:GatewayIamMember
/// properties:
/// project: ${apiGw.project}
/// region: ${apiGw.region}
/// gateway: ${apiGw.gatewayId}
/// role: roles/apigateway.viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{region}}/gateways/{{gateway}}
///
/// * {{project}}/{{region}}/{{gateway}}
///
/// * {{region}}/{{gateway}}
///
/// * {{gateway}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// API Gateway gateway IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/gatewayIamMember:GatewayIamMember editor "projects/{{project}}/locations/{{region}}/gateways/{{gateway}} roles/apigateway.viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/gatewayIamMember:GatewayIamMember editor "projects/{{project}}/locations/{{region}}/gateways/{{gateway}} roles/apigateway.viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/gatewayIamMember:GatewayIamMember editor projects/{{project}}/locations/{{region}}/gateways/{{gateway}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class GatewayIamMember extends CustomResource {
  late final Output<GatewayIamMemberCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> gateway;

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

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The region of the gateway for the API.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final Output<String> region;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-dotnet="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-go="`apigateway.GatewayIamBinding`" pulumi-lang-python="`apigateway.GatewayIamBinding`" pulumi-lang-yaml="`gcp.apigateway.GatewayIamBinding`" pulumi-lang-java="`gcp.apigateway.GatewayIamBinding`">`gcp.apigateway.GatewayIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  GatewayIamMember(
    String name, {
    GatewayIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigateway/gatewayIamMember:GatewayIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<GatewayIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.gateway = registerOutput<String>('gateway');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
