import 'package:pulumi/pulumi.dart';
import 'tunnel_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy Tunnel. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.TunnelIamPolicy`" pulumi-lang-dotnet="`gcp.iap.TunnelIamPolicy`" pulumi-lang-go="`iap.TunnelIamPolicy`" pulumi-lang-python="`iap.TunnelIamPolicy`" pulumi-lang-yaml="`gcp.iap.TunnelIamPolicy`" pulumi-lang-java="`gcp.iap.TunnelIamPolicy`">`gcp.iap.TunnelIamPolicy`</span>: Authoritative. Sets the IAM policy for the tunnel and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.TunnelIamBinding`" pulumi-lang-dotnet="`gcp.iap.TunnelIamBinding`" pulumi-lang-go="`iap.TunnelIamBinding`" pulumi-lang-python="`iap.TunnelIamBinding`" pulumi-lang-yaml="`gcp.iap.TunnelIamBinding`" pulumi-lang-java="`gcp.iap.TunnelIamBinding`">`gcp.iap.TunnelIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the tunnel are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.TunnelIamMember`" pulumi-lang-dotnet="`gcp.iap.TunnelIamMember`" pulumi-lang-go="`iap.TunnelIamMember`" pulumi-lang-python="`iap.TunnelIamMember`" pulumi-lang-yaml="`gcp.iap.TunnelIamMember`" pulumi-lang-java="`gcp.iap.TunnelIamMember`">`gcp.iap.TunnelIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the tunnel are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.TunnelIamPolicy`" pulumi-lang-dotnet="`gcp.iap.TunnelIamPolicy`" pulumi-lang-go="`iap.TunnelIamPolicy`" pulumi-lang-python="`iap.TunnelIamPolicy`" pulumi-lang-yaml="`gcp.iap.TunnelIamPolicy`" pulumi-lang-java="`gcp.iap.TunnelIamPolicy`">`gcp.iap.TunnelIamPolicy`</span>: Retrieves the IAM policy for the tunnel
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.TunnelIamPolicy`" pulumi-lang-dotnet="`gcp.iap.TunnelIamPolicy`" pulumi-lang-go="`iap.TunnelIamPolicy`" pulumi-lang-python="`iap.TunnelIamPolicy`" pulumi-lang-yaml="`gcp.iap.TunnelIamPolicy`" pulumi-lang-java="`gcp.iap.TunnelIamPolicy`">`gcp.iap.TunnelIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.TunnelIamBinding`" pulumi-lang-dotnet="`gcp.iap.TunnelIamBinding`" pulumi-lang-go="`iap.TunnelIamBinding`" pulumi-lang-python="`iap.TunnelIamBinding`" pulumi-lang-yaml="`gcp.iap.TunnelIamBinding`" pulumi-lang-java="`gcp.iap.TunnelIamBinding`">`gcp.iap.TunnelIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.TunnelIamMember`" pulumi-lang-dotnet="`gcp.iap.TunnelIamMember`" pulumi-lang-go="`iap.TunnelIamMember`" pulumi-lang-python="`iap.TunnelIamMember`" pulumi-lang-yaml="`gcp.iap.TunnelIamMember`" pulumi-lang-java="`gcp.iap.TunnelIamMember`">`gcp.iap.TunnelIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.TunnelIamBinding`" pulumi-lang-dotnet="`gcp.iap.TunnelIamBinding`" pulumi-lang-go="`iap.TunnelIamBinding`" pulumi-lang-python="`iap.TunnelIamBinding`" pulumi-lang-yaml="`gcp.iap.TunnelIamBinding`" pulumi-lang-java="`gcp.iap.TunnelIamBinding`">`gcp.iap.TunnelIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.TunnelIamMember`" pulumi-lang-dotnet="`gcp.iap.TunnelIamMember`" pulumi-lang-go="`iap.TunnelIamMember`" pulumi-lang-python="`iap.TunnelIamMember`" pulumi-lang-yaml="`gcp.iap.TunnelIamMember`" pulumi-lang-java="`gcp.iap.TunnelIamMember`">`gcp.iap.TunnelIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.TunnelIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.TunnelIamPolicy
/// " pulumi-lang-go=" iap.TunnelIamPolicy
/// " pulumi-lang-python=" iap.TunnelIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.TunnelIamPolicy
/// " pulumi-lang-java=" gcp.iap.TunnelIamPolicy
/// "> gcp.iap.TunnelIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iap.tunnelResourceAccessor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.iap.TunnelIamPolicy("policy", {
/// project: projectService.project,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.tunnelResourceAccessor",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.TunnelIamPolicy("policy",
/// project=project_service["project"],
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
/// Role = "roles/iap.tunnelResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iap.TunnelIamPolicy("policy", new()
/// {
/// Project = projectService.Project,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iap.tunnelResourceAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iap.NewTunnelIamPolicy(ctx, "policy", &iap.TunnelIamPolicyArgs{
/// Project:    pulumi.Any(projectService.Project),
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
/// import com.pulumi.gcp.iap.TunnelIamPolicy;
/// import com.pulumi.gcp.iap.TunnelIamPolicyArgs;
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
/// .role("roles/iap.tunnelResourceAccessor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new TunnelIamPolicy("policy", TunnelIamPolicyArgs.builder()
/// .project(projectService.project())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:TunnelIamPolicy
/// properties:
/// project: ${projectService.project}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.tunnelResourceAccessor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iap.tunnelResourceAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.iap.TunnelIamPolicy("policy", {
/// project: projectService.project,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.tunnelResourceAccessor",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.iap.TunnelIamPolicy("policy",
/// project=project_service["project"],
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
/// Role = "roles/iap.tunnelResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iap.TunnelIamPolicy("policy", new()
/// {
/// Project = projectService.Project,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iap.tunnelResourceAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// Condition: {
/// Title:       "expires_after_2019_12_31",
/// Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iap.NewTunnelIamPolicy(ctx, "policy", &iap.TunnelIamPolicyArgs{
/// Project:    pulumi.Any(projectService.Project),
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
/// import com.pulumi.gcp.iap.TunnelIamPolicy;
/// import com.pulumi.gcp.iap.TunnelIamPolicyArgs;
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
/// .role("roles/iap.tunnelResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new TunnelIamPolicy("policy", TunnelIamPolicyArgs.builder()
/// .project(projectService.project())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:TunnelIamPolicy
/// properties:
/// project: ${projectService.project}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.tunnelResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.TunnelIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.TunnelIamBinding
/// " pulumi-lang-go=" iap.TunnelIamBinding
/// " pulumi-lang-python=" iap.TunnelIamBinding
/// " pulumi-lang-yaml=" gcp.iap.TunnelIamBinding
/// " pulumi-lang-java=" gcp.iap.TunnelIamBinding
/// "> gcp.iap.TunnelIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.TunnelIamBinding("binding", {
/// project: projectService.project,
/// role: "roles/iap.tunnelResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.TunnelIamBinding("binding",
/// project=project_service["project"],
/// role="roles/iap.tunnelResourceAccessor",
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
/// var binding = new Gcp.Iap.TunnelIamBinding("binding", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.tunnelResourceAccessor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewTunnelIamBinding(ctx, "binding", &iap.TunnelIamBindingArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.tunnelResourceAccessor"),
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
/// import com.pulumi.gcp.iap.TunnelIamBinding;
/// import com.pulumi.gcp.iap.TunnelIamBindingArgs;
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
/// var binding = new TunnelIamBinding("binding", TunnelIamBindingArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.tunnelResourceAccessor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iap:TunnelIamBinding
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.tunnelResourceAccessor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.TunnelIamBinding("binding", {
/// project: projectService.project,
/// role: "roles/iap.tunnelResourceAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.TunnelIamBinding("binding",
/// project=project_service["project"],
/// role="roles/iap.tunnelResourceAccessor",
/// members=["user:jane@example.com"],
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var binding = new Gcp.Iap.TunnelIamBinding("binding", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.tunnelResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.TunnelIamBindingConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewTunnelIamBinding(ctx, "binding", &iap.TunnelIamBindingArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.tunnelResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.TunnelIamBindingConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.iap.TunnelIamBinding;
/// import com.pulumi.gcp.iap.TunnelIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.TunnelIamBindingConditionArgs;
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
/// var binding = new TunnelIamBinding("binding", TunnelIamBindingArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.tunnelResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(TunnelIamBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iap:TunnelIamBinding
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.tunnelResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.TunnelIamMember
/// " pulumi-lang-dotnet=" gcp.iap.TunnelIamMember
/// " pulumi-lang-go=" iap.TunnelIamMember
/// " pulumi-lang-python=" iap.TunnelIamMember
/// " pulumi-lang-yaml=" gcp.iap.TunnelIamMember
/// " pulumi-lang-java=" gcp.iap.TunnelIamMember
/// "> gcp.iap.TunnelIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.TunnelIamMember("member", {
/// project: projectService.project,
/// role: "roles/iap.tunnelResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.TunnelIamMember("member",
/// project=project_service["project"],
/// role="roles/iap.tunnelResourceAccessor",
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
/// var member = new Gcp.Iap.TunnelIamMember("member", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.tunnelResourceAccessor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewTunnelIamMember(ctx, "member", &iap.TunnelIamMemberArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.tunnelResourceAccessor"),
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
/// import com.pulumi.gcp.iap.TunnelIamMember;
/// import com.pulumi.gcp.iap.TunnelIamMemberArgs;
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
/// var member = new TunnelIamMember("member", TunnelIamMemberArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.tunnelResourceAccessor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iap:TunnelIamMember
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.tunnelResourceAccessor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.TunnelIamMember("member", {
/// project: projectService.project,
/// role: "roles/iap.tunnelResourceAccessor",
/// member: "user:jane@example.com",
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.TunnelIamMember("member",
/// project=project_service["project"],
/// role="roles/iap.tunnelResourceAccessor",
/// member="user:jane@example.com",
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var member = new Gcp.Iap.TunnelIamMember("member", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.tunnelResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.TunnelIamMemberConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewTunnelIamMember(ctx, "member", &iap.TunnelIamMemberArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.tunnelResourceAccessor"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &iap.TunnelIamMemberConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.iap.TunnelIamMember;
/// import com.pulumi.gcp.iap.TunnelIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.TunnelIamMemberConditionArgs;
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
/// var member = new TunnelIamMember("member", TunnelIamMemberArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.tunnelResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(TunnelIamMemberConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iap:TunnelIamMember
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.tunnelResourceAccessor
/// member: user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Identity-Aware Proxy Tunnel
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy Tunnel. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.TunnelIamPolicy`" pulumi-lang-dotnet="`gcp.iap.TunnelIamPolicy`" pulumi-lang-go="`iap.TunnelIamPolicy`" pulumi-lang-python="`iap.TunnelIamPolicy`" pulumi-lang-yaml="`gcp.iap.TunnelIamPolicy`" pulumi-lang-java="`gcp.iap.TunnelIamPolicy`">`gcp.iap.TunnelIamPolicy`</span>: Authoritative. Sets the IAM policy for the tunnel and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.TunnelIamBinding`" pulumi-lang-dotnet="`gcp.iap.TunnelIamBinding`" pulumi-lang-go="`iap.TunnelIamBinding`" pulumi-lang-python="`iap.TunnelIamBinding`" pulumi-lang-yaml="`gcp.iap.TunnelIamBinding`" pulumi-lang-java="`gcp.iap.TunnelIamBinding`">`gcp.iap.TunnelIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the tunnel are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.TunnelIamMember`" pulumi-lang-dotnet="`gcp.iap.TunnelIamMember`" pulumi-lang-go="`iap.TunnelIamMember`" pulumi-lang-python="`iap.TunnelIamMember`" pulumi-lang-yaml="`gcp.iap.TunnelIamMember`" pulumi-lang-java="`gcp.iap.TunnelIamMember`">`gcp.iap.TunnelIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the tunnel are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.TunnelIamPolicy`" pulumi-lang-dotnet="`gcp.iap.TunnelIamPolicy`" pulumi-lang-go="`iap.TunnelIamPolicy`" pulumi-lang-python="`iap.TunnelIamPolicy`" pulumi-lang-yaml="`gcp.iap.TunnelIamPolicy`" pulumi-lang-java="`gcp.iap.TunnelIamPolicy`">`gcp.iap.TunnelIamPolicy`</span>: Retrieves the IAM policy for the tunnel
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.TunnelIamPolicy`" pulumi-lang-dotnet="`gcp.iap.TunnelIamPolicy`" pulumi-lang-go="`iap.TunnelIamPolicy`" pulumi-lang-python="`iap.TunnelIamPolicy`" pulumi-lang-yaml="`gcp.iap.TunnelIamPolicy`" pulumi-lang-java="`gcp.iap.TunnelIamPolicy`">`gcp.iap.TunnelIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.TunnelIamBinding`" pulumi-lang-dotnet="`gcp.iap.TunnelIamBinding`" pulumi-lang-go="`iap.TunnelIamBinding`" pulumi-lang-python="`iap.TunnelIamBinding`" pulumi-lang-yaml="`gcp.iap.TunnelIamBinding`" pulumi-lang-java="`gcp.iap.TunnelIamBinding`">`gcp.iap.TunnelIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.TunnelIamMember`" pulumi-lang-dotnet="`gcp.iap.TunnelIamMember`" pulumi-lang-go="`iap.TunnelIamMember`" pulumi-lang-python="`iap.TunnelIamMember`" pulumi-lang-yaml="`gcp.iap.TunnelIamMember`" pulumi-lang-java="`gcp.iap.TunnelIamMember`">`gcp.iap.TunnelIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.TunnelIamBinding`" pulumi-lang-dotnet="`gcp.iap.TunnelIamBinding`" pulumi-lang-go="`iap.TunnelIamBinding`" pulumi-lang-python="`iap.TunnelIamBinding`" pulumi-lang-yaml="`gcp.iap.TunnelIamBinding`" pulumi-lang-java="`gcp.iap.TunnelIamBinding`">`gcp.iap.TunnelIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.TunnelIamMember`" pulumi-lang-dotnet="`gcp.iap.TunnelIamMember`" pulumi-lang-go="`iap.TunnelIamMember`" pulumi-lang-python="`iap.TunnelIamMember`" pulumi-lang-yaml="`gcp.iap.TunnelIamMember`" pulumi-lang-java="`gcp.iap.TunnelIamMember`">`gcp.iap.TunnelIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.TunnelIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.TunnelIamPolicy
/// " pulumi-lang-go=" iap.TunnelIamPolicy
/// " pulumi-lang-python=" iap.TunnelIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.TunnelIamPolicy
/// " pulumi-lang-java=" gcp.iap.TunnelIamPolicy
/// "> gcp.iap.TunnelIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iap.tunnelResourceAccessor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.iap.TunnelIamPolicy("policy", {
/// project: projectService.project,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.tunnelResourceAccessor",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.TunnelIamPolicy("policy",
/// project=project_service["project"],
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
/// Role = "roles/iap.tunnelResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iap.TunnelIamPolicy("policy", new()
/// {
/// Project = projectService.Project,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iap.tunnelResourceAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iap.NewTunnelIamPolicy(ctx, "policy", &iap.TunnelIamPolicyArgs{
/// Project:    pulumi.Any(projectService.Project),
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
/// import com.pulumi.gcp.iap.TunnelIamPolicy;
/// import com.pulumi.gcp.iap.TunnelIamPolicyArgs;
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
/// .role("roles/iap.tunnelResourceAccessor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new TunnelIamPolicy("policy", TunnelIamPolicyArgs.builder()
/// .project(projectService.project())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:TunnelIamPolicy
/// properties:
/// project: ${projectService.project}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.tunnelResourceAccessor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iap.tunnelResourceAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.iap.TunnelIamPolicy("policy", {
/// project: projectService.project,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.tunnelResourceAccessor",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.iap.TunnelIamPolicy("policy",
/// project=project_service["project"],
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
/// Role = "roles/iap.tunnelResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iap.TunnelIamPolicy("policy", new()
/// {
/// Project = projectService.Project,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/iap.tunnelResourceAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// Condition: {
/// Title:       "expires_after_2019_12_31",
/// Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iap.NewTunnelIamPolicy(ctx, "policy", &iap.TunnelIamPolicyArgs{
/// Project:    pulumi.Any(projectService.Project),
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
/// import com.pulumi.gcp.iap.TunnelIamPolicy;
/// import com.pulumi.gcp.iap.TunnelIamPolicyArgs;
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
/// .role("roles/iap.tunnelResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new TunnelIamPolicy("policy", TunnelIamPolicyArgs.builder()
/// .project(projectService.project())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:TunnelIamPolicy
/// properties:
/// project: ${projectService.project}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.tunnelResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.TunnelIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.TunnelIamBinding
/// " pulumi-lang-go=" iap.TunnelIamBinding
/// " pulumi-lang-python=" iap.TunnelIamBinding
/// " pulumi-lang-yaml=" gcp.iap.TunnelIamBinding
/// " pulumi-lang-java=" gcp.iap.TunnelIamBinding
/// "> gcp.iap.TunnelIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.TunnelIamBinding("binding", {
/// project: projectService.project,
/// role: "roles/iap.tunnelResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.TunnelIamBinding("binding",
/// project=project_service["project"],
/// role="roles/iap.tunnelResourceAccessor",
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
/// var binding = new Gcp.Iap.TunnelIamBinding("binding", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.tunnelResourceAccessor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewTunnelIamBinding(ctx, "binding", &iap.TunnelIamBindingArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.tunnelResourceAccessor"),
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
/// import com.pulumi.gcp.iap.TunnelIamBinding;
/// import com.pulumi.gcp.iap.TunnelIamBindingArgs;
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
/// var binding = new TunnelIamBinding("binding", TunnelIamBindingArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.tunnelResourceAccessor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iap:TunnelIamBinding
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.tunnelResourceAccessor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.TunnelIamBinding("binding", {
/// project: projectService.project,
/// role: "roles/iap.tunnelResourceAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.TunnelIamBinding("binding",
/// project=project_service["project"],
/// role="roles/iap.tunnelResourceAccessor",
/// members=["user:jane@example.com"],
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var binding = new Gcp.Iap.TunnelIamBinding("binding", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.tunnelResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.TunnelIamBindingConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewTunnelIamBinding(ctx, "binding", &iap.TunnelIamBindingArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.tunnelResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.TunnelIamBindingConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.iap.TunnelIamBinding;
/// import com.pulumi.gcp.iap.TunnelIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.TunnelIamBindingConditionArgs;
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
/// var binding = new TunnelIamBinding("binding", TunnelIamBindingArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.tunnelResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(TunnelIamBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iap:TunnelIamBinding
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.tunnelResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.TunnelIamMember
/// " pulumi-lang-dotnet=" gcp.iap.TunnelIamMember
/// " pulumi-lang-go=" iap.TunnelIamMember
/// " pulumi-lang-python=" iap.TunnelIamMember
/// " pulumi-lang-yaml=" gcp.iap.TunnelIamMember
/// " pulumi-lang-java=" gcp.iap.TunnelIamMember
/// "> gcp.iap.TunnelIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.TunnelIamMember("member", {
/// project: projectService.project,
/// role: "roles/iap.tunnelResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.TunnelIamMember("member",
/// project=project_service["project"],
/// role="roles/iap.tunnelResourceAccessor",
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
/// var member = new Gcp.Iap.TunnelIamMember("member", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.tunnelResourceAccessor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewTunnelIamMember(ctx, "member", &iap.TunnelIamMemberArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.tunnelResourceAccessor"),
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
/// import com.pulumi.gcp.iap.TunnelIamMember;
/// import com.pulumi.gcp.iap.TunnelIamMemberArgs;
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
/// var member = new TunnelIamMember("member", TunnelIamMemberArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.tunnelResourceAccessor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iap:TunnelIamMember
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.tunnelResourceAccessor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With IAM Conditions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.TunnelIamMember("member", {
/// project: projectService.project,
/// role: "roles/iap.tunnelResourceAccessor",
/// member: "user:jane@example.com",
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.TunnelIamMember("member",
/// project=project_service["project"],
/// role="roles/iap.tunnelResourceAccessor",
/// member="user:jane@example.com",
/// condition={
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var member = new Gcp.Iap.TunnelIamMember("member", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.tunnelResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.TunnelIamMemberConditionArgs
/// {
/// Title = "expires_after_2019_12_31",
/// Description = "Expiring at midnight of 2019-12-31",
/// Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewTunnelIamMember(ctx, "member", &iap.TunnelIamMemberArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.tunnelResourceAccessor"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &iap.TunnelIamMemberConditionArgs{
/// Title:       pulumi.String("expires_after_2019_12_31"),
/// Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// import com.pulumi.gcp.iap.TunnelIamMember;
/// import com.pulumi.gcp.iap.TunnelIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.TunnelIamMemberConditionArgs;
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
/// var member = new TunnelIamMember("member", TunnelIamMemberArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.tunnelResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(TunnelIamMemberConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iap:TunnelIamMember
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.tunnelResourceAccessor
/// member: user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/iap_tunnel
///
/// * {{project}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy tunnel IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelIamPolicy:TunnelIamPolicy editor "projects/{{project}}/iap_tunnel roles/iap.tunnelResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelIamPolicy:TunnelIamPolicy editor "projects/{{project}}/iap_tunnel roles/iap.tunnelResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelIamPolicy:TunnelIamPolicy editor projects/{{project}}/iap_tunnel
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class TunnelIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  TunnelIamPolicy(
    String name, {
    TunnelIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iap/tunnelIamPolicy:TunnelIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
