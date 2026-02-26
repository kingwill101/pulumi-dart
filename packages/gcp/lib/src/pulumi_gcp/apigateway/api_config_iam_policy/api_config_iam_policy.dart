import 'package:pulumi/pulumi.dart';
import 'api_config_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for API Gateway ApiConfig. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-go="`apigateway.ApiConfigIamPolicy`" pulumi-lang-python="`apigateway.ApiConfigIamPolicy`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamPolicy`">`gcp.apigateway.ApiConfigIamPolicy`</span>: Authoritative. Sets the IAM policy for the apiconfig and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-go="`apigateway.ApiConfigIamBinding`" pulumi-lang-python="`apigateway.ApiConfigIamBinding`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamBinding`">`gcp.apigateway.ApiConfigIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the apiconfig are preserved.
/// * <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-go="`apigateway.ApiConfigIamMember`" pulumi-lang-python="`apigateway.ApiConfigIamMember`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamMember`">`gcp.apigateway.ApiConfigIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the apiconfig are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-go="`apigateway.ApiConfigIamPolicy`" pulumi-lang-python="`apigateway.ApiConfigIamPolicy`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamPolicy`">`gcp.apigateway.ApiConfigIamPolicy`</span>: Retrieves the IAM policy for the apiconfig
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-go="`apigateway.ApiConfigIamPolicy`" pulumi-lang-python="`apigateway.ApiConfigIamPolicy`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamPolicy`">`gcp.apigateway.ApiConfigIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-go="`apigateway.ApiConfigIamBinding`" pulumi-lang-python="`apigateway.ApiConfigIamBinding`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamBinding`">`gcp.apigateway.ApiConfigIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-go="`apigateway.ApiConfigIamMember`" pulumi-lang-python="`apigateway.ApiConfigIamMember`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamMember`">`gcp.apigateway.ApiConfigIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-go="`apigateway.ApiConfigIamBinding`" pulumi-lang-python="`apigateway.ApiConfigIamBinding`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamBinding`">`gcp.apigateway.ApiConfigIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-go="`apigateway.ApiConfigIamMember`" pulumi-lang-python="`apigateway.ApiConfigIamMember`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamMember`">`gcp.apigateway.ApiConfigIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.apigateway.ApiConfigIamPolicy
/// " pulumi-lang-dotnet=" gcp.apigateway.ApiConfigIamPolicy
/// " pulumi-lang-go=" apigateway.ApiConfigIamPolicy
/// " pulumi-lang-python=" apigateway.ApiConfigIamPolicy
/// " pulumi-lang-yaml=" gcp.apigateway.ApiConfigIamPolicy
/// " pulumi-lang-java=" gcp.apigateway.ApiConfigIamPolicy
/// "> gcp.apigateway.ApiConfigIamPolicy
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
/// const policy = new gcp.apigateway.ApiConfigIamPolicy("policy", {
/// api: apiCfg.api,
/// apiConfig: apiCfg.apiConfigId,
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
/// policy = gcp.apigateway.ApiConfigIamPolicy("policy",
/// api=api_cfg["api"],
/// api_config=api_cfg["apiConfigId"],
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
/// var policy = new Gcp.ApiGateway.ApiConfigIamPolicy("policy", new()
/// {
/// Api = apiCfg.Api,
/// ApiConfig = apiCfg.ApiConfigId,
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
/// _, err = apigateway.NewApiConfigIamPolicy(ctx, "policy", &apigateway.ApiConfigIamPolicyArgs{
/// Api:        pulumi.Any(apiCfg.Api),
/// ApiConfig:  pulumi.Any(apiCfg.ApiConfigId),
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
/// import com.pulumi.gcp.apigateway.ApiConfigIamPolicy;
/// import com.pulumi.gcp.apigateway.ApiConfigIamPolicyArgs;
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
/// var policy = new ApiConfigIamPolicy("policy", ApiConfigIamPolicyArgs.builder()
/// .api(apiCfg.api())
/// .apiConfig(apiCfg.apiConfigId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:apigateway:ApiConfigIamPolicy
/// properties:
/// api: ${apiCfg.api}
/// apiConfig: ${apiCfg.apiConfigId}
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
/// ##<span pulumi-lang-nodejs=" gcp.apigateway.ApiConfigIamBinding
/// " pulumi-lang-dotnet=" gcp.apigateway.ApiConfigIamBinding
/// " pulumi-lang-go=" apigateway.ApiConfigIamBinding
/// " pulumi-lang-python=" apigateway.ApiConfigIamBinding
/// " pulumi-lang-yaml=" gcp.apigateway.ApiConfigIamBinding
/// " pulumi-lang-java=" gcp.apigateway.ApiConfigIamBinding
/// "> gcp.apigateway.ApiConfigIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.apigateway.ApiConfigIamBinding("binding", {
/// api: apiCfg.api,
/// apiConfig: apiCfg.apiConfigId,
/// role: "roles/apigateway.viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.apigateway.ApiConfigIamBinding("binding",
/// api=api_cfg["api"],
/// api_config=api_cfg["apiConfigId"],
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
/// var binding = new Gcp.ApiGateway.ApiConfigIamBinding("binding", new()
/// {
/// Api = apiCfg.Api,
/// ApiConfig = apiCfg.ApiConfigId,
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
/// _, err := apigateway.NewApiConfigIamBinding(ctx, "binding", &apigateway.ApiConfigIamBindingArgs{
/// Api:       pulumi.Any(apiCfg.Api),
/// ApiConfig: pulumi.Any(apiCfg.ApiConfigId),
/// Role:      pulumi.String("roles/apigateway.viewer"),
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
/// import com.pulumi.gcp.apigateway.ApiConfigIamBinding;
/// import com.pulumi.gcp.apigateway.ApiConfigIamBindingArgs;
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
/// var binding = new ApiConfigIamBinding("binding", ApiConfigIamBindingArgs.builder()
/// .api(apiCfg.api())
/// .apiConfig(apiCfg.apiConfigId())
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
/// type: gcp:apigateway:ApiConfigIamBinding
/// properties:
/// api: ${apiCfg.api}
/// apiConfig: ${apiCfg.apiConfigId}
/// role: roles/apigateway.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.apigateway.ApiConfigIamMember
/// " pulumi-lang-dotnet=" gcp.apigateway.ApiConfigIamMember
/// " pulumi-lang-go=" apigateway.ApiConfigIamMember
/// " pulumi-lang-python=" apigateway.ApiConfigIamMember
/// " pulumi-lang-yaml=" gcp.apigateway.ApiConfigIamMember
/// " pulumi-lang-java=" gcp.apigateway.ApiConfigIamMember
/// "> gcp.apigateway.ApiConfigIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.apigateway.ApiConfigIamMember("member", {
/// api: apiCfg.api,
/// apiConfig: apiCfg.apiConfigId,
/// role: "roles/apigateway.viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.apigateway.ApiConfigIamMember("member",
/// api=api_cfg["api"],
/// api_config=api_cfg["apiConfigId"],
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
/// var member = new Gcp.ApiGateway.ApiConfigIamMember("member", new()
/// {
/// Api = apiCfg.Api,
/// ApiConfig = apiCfg.ApiConfigId,
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
/// _, err := apigateway.NewApiConfigIamMember(ctx, "member", &apigateway.ApiConfigIamMemberArgs{
/// Api:       pulumi.Any(apiCfg.Api),
/// ApiConfig: pulumi.Any(apiCfg.ApiConfigId),
/// Role:      pulumi.String("roles/apigateway.viewer"),
/// Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.apigateway.ApiConfigIamMember;
/// import com.pulumi.gcp.apigateway.ApiConfigIamMemberArgs;
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
/// var member = new ApiConfigIamMember("member", ApiConfigIamMemberArgs.builder()
/// .api(apiCfg.api())
/// .apiConfig(apiCfg.apiConfigId())
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
/// type: gcp:apigateway:ApiConfigIamMember
/// properties:
/// api: ${apiCfg.api}
/// apiConfig: ${apiCfg.apiConfigId}
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
/// # IAM policy for API Gateway ApiConfig
///
/// Three different resources help you manage your IAM policy for API Gateway ApiConfig. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-go="`apigateway.ApiConfigIamPolicy`" pulumi-lang-python="`apigateway.ApiConfigIamPolicy`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamPolicy`">`gcp.apigateway.ApiConfigIamPolicy`</span>: Authoritative. Sets the IAM policy for the apiconfig and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-go="`apigateway.ApiConfigIamBinding`" pulumi-lang-python="`apigateway.ApiConfigIamBinding`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamBinding`">`gcp.apigateway.ApiConfigIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the apiconfig are preserved.
/// * <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-go="`apigateway.ApiConfigIamMember`" pulumi-lang-python="`apigateway.ApiConfigIamMember`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamMember`">`gcp.apigateway.ApiConfigIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the apiconfig are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-go="`apigateway.ApiConfigIamPolicy`" pulumi-lang-python="`apigateway.ApiConfigIamPolicy`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamPolicy`">`gcp.apigateway.ApiConfigIamPolicy`</span>: Retrieves the IAM policy for the apiconfig
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-go="`apigateway.ApiConfigIamPolicy`" pulumi-lang-python="`apigateway.ApiConfigIamPolicy`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamPolicy`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamPolicy`">`gcp.apigateway.ApiConfigIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-go="`apigateway.ApiConfigIamBinding`" pulumi-lang-python="`apigateway.ApiConfigIamBinding`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamBinding`">`gcp.apigateway.ApiConfigIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-go="`apigateway.ApiConfigIamMember`" pulumi-lang-python="`apigateway.ApiConfigIamMember`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamMember`">`gcp.apigateway.ApiConfigIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-go="`apigateway.ApiConfigIamBinding`" pulumi-lang-python="`apigateway.ApiConfigIamBinding`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamBinding`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamBinding`">`gcp.apigateway.ApiConfigIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-dotnet="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-go="`apigateway.ApiConfigIamMember`" pulumi-lang-python="`apigateway.ApiConfigIamMember`" pulumi-lang-yaml="`gcp.apigateway.ApiConfigIamMember`" pulumi-lang-java="`gcp.apigateway.ApiConfigIamMember`">`gcp.apigateway.ApiConfigIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.apigateway.ApiConfigIamPolicy
/// " pulumi-lang-dotnet=" gcp.apigateway.ApiConfigIamPolicy
/// " pulumi-lang-go=" apigateway.ApiConfigIamPolicy
/// " pulumi-lang-python=" apigateway.ApiConfigIamPolicy
/// " pulumi-lang-yaml=" gcp.apigateway.ApiConfigIamPolicy
/// " pulumi-lang-java=" gcp.apigateway.ApiConfigIamPolicy
/// "> gcp.apigateway.ApiConfigIamPolicy
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
/// const policy = new gcp.apigateway.ApiConfigIamPolicy("policy", {
/// api: apiCfg.api,
/// apiConfig: apiCfg.apiConfigId,
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
/// policy = gcp.apigateway.ApiConfigIamPolicy("policy",
/// api=api_cfg["api"],
/// api_config=api_cfg["apiConfigId"],
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
/// var policy = new Gcp.ApiGateway.ApiConfigIamPolicy("policy", new()
/// {
/// Api = apiCfg.Api,
/// ApiConfig = apiCfg.ApiConfigId,
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
/// _, err = apigateway.NewApiConfigIamPolicy(ctx, "policy", &apigateway.ApiConfigIamPolicyArgs{
/// Api:        pulumi.Any(apiCfg.Api),
/// ApiConfig:  pulumi.Any(apiCfg.ApiConfigId),
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
/// import com.pulumi.gcp.apigateway.ApiConfigIamPolicy;
/// import com.pulumi.gcp.apigateway.ApiConfigIamPolicyArgs;
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
/// var policy = new ApiConfigIamPolicy("policy", ApiConfigIamPolicyArgs.builder()
/// .api(apiCfg.api())
/// .apiConfig(apiCfg.apiConfigId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:apigateway:ApiConfigIamPolicy
/// properties:
/// api: ${apiCfg.api}
/// apiConfig: ${apiCfg.apiConfigId}
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
/// ##<span pulumi-lang-nodejs=" gcp.apigateway.ApiConfigIamBinding
/// " pulumi-lang-dotnet=" gcp.apigateway.ApiConfigIamBinding
/// " pulumi-lang-go=" apigateway.ApiConfigIamBinding
/// " pulumi-lang-python=" apigateway.ApiConfigIamBinding
/// " pulumi-lang-yaml=" gcp.apigateway.ApiConfigIamBinding
/// " pulumi-lang-java=" gcp.apigateway.ApiConfigIamBinding
/// "> gcp.apigateway.ApiConfigIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.apigateway.ApiConfigIamBinding("binding", {
/// api: apiCfg.api,
/// apiConfig: apiCfg.apiConfigId,
/// role: "roles/apigateway.viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.apigateway.ApiConfigIamBinding("binding",
/// api=api_cfg["api"],
/// api_config=api_cfg["apiConfigId"],
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
/// var binding = new Gcp.ApiGateway.ApiConfigIamBinding("binding", new()
/// {
/// Api = apiCfg.Api,
/// ApiConfig = apiCfg.ApiConfigId,
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
/// _, err := apigateway.NewApiConfigIamBinding(ctx, "binding", &apigateway.ApiConfigIamBindingArgs{
/// Api:       pulumi.Any(apiCfg.Api),
/// ApiConfig: pulumi.Any(apiCfg.ApiConfigId),
/// Role:      pulumi.String("roles/apigateway.viewer"),
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
/// import com.pulumi.gcp.apigateway.ApiConfigIamBinding;
/// import com.pulumi.gcp.apigateway.ApiConfigIamBindingArgs;
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
/// var binding = new ApiConfigIamBinding("binding", ApiConfigIamBindingArgs.builder()
/// .api(apiCfg.api())
/// .apiConfig(apiCfg.apiConfigId())
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
/// type: gcp:apigateway:ApiConfigIamBinding
/// properties:
/// api: ${apiCfg.api}
/// apiConfig: ${apiCfg.apiConfigId}
/// role: roles/apigateway.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.apigateway.ApiConfigIamMember
/// " pulumi-lang-dotnet=" gcp.apigateway.ApiConfigIamMember
/// " pulumi-lang-go=" apigateway.ApiConfigIamMember
/// " pulumi-lang-python=" apigateway.ApiConfigIamMember
/// " pulumi-lang-yaml=" gcp.apigateway.ApiConfigIamMember
/// " pulumi-lang-java=" gcp.apigateway.ApiConfigIamMember
/// "> gcp.apigateway.ApiConfigIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.apigateway.ApiConfigIamMember("member", {
/// api: apiCfg.api,
/// apiConfig: apiCfg.apiConfigId,
/// role: "roles/apigateway.viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.apigateway.ApiConfigIamMember("member",
/// api=api_cfg["api"],
/// api_config=api_cfg["apiConfigId"],
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
/// var member = new Gcp.ApiGateway.ApiConfigIamMember("member", new()
/// {
/// Api = apiCfg.Api,
/// ApiConfig = apiCfg.ApiConfigId,
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
/// _, err := apigateway.NewApiConfigIamMember(ctx, "member", &apigateway.ApiConfigIamMemberArgs{
/// Api:       pulumi.Any(apiCfg.Api),
/// ApiConfig: pulumi.Any(apiCfg.ApiConfigId),
/// Role:      pulumi.String("roles/apigateway.viewer"),
/// Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.apigateway.ApiConfigIamMember;
/// import com.pulumi.gcp.apigateway.ApiConfigIamMemberArgs;
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
/// var member = new ApiConfigIamMember("member", ApiConfigIamMemberArgs.builder()
/// .api(apiCfg.api())
/// .apiConfig(apiCfg.apiConfigId())
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
/// type: gcp:apigateway:ApiConfigIamMember
/// properties:
/// api: ${apiCfg.api}
/// apiConfig: ${apiCfg.apiConfigId}
/// role: roles/apigateway.viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/global/apis/{{api}}/configs/{{api_config}}
///
/// * {{project}}/{{api}}/{{api_config}}
///
/// * {{api}}/{{api_config}}
///
/// * {{api_config}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// API Gateway apiconfig IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/apiConfigIamPolicy:ApiConfigIamPolicy editor "projects/{{project}}/locations/global/apis/{{api}}/configs/{{api_config}} roles/apigateway.viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/apiConfigIamPolicy:ApiConfigIamPolicy editor "projects/{{project}}/locations/global/apis/{{api}}/configs/{{api_config}} roles/apigateway.viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/apiConfigIamPolicy:ApiConfigIamPolicy editor projects/{{project}}/locations/global/apis/{{api}}/configs/{{api_config}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ApiConfigIamPolicy extends CustomResource {
  /// The API to attach the config to.
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> api;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> apiConfig;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  ApiConfigIamPolicy(
    String name, {
    ApiConfigIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigateway/apiConfigIamPolicy:ApiConfigIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.api = Output.createUnknown<String>();
    this.apiConfig = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
