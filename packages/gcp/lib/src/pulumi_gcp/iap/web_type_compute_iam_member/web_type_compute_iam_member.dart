import 'package:pulumi/pulumi.dart';
import '../web_type_compute_iam_member_condition/web_type_compute_iam_member_condition.dart';
import 'web_type_compute_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebTypeCompute. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-go="`iap.WebTypeComputeIamPolicy`" pulumi-lang-python="`iap.WebTypeComputeIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamPolicy`">`gcp.iap.WebTypeComputeIamPolicy`</span>: Authoritative. Sets the IAM policy for the webtypecompute and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-go="`iap.WebTypeComputeIamBinding`" pulumi-lang-python="`iap.WebTypeComputeIamBinding`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamBinding`">`gcp.iap.WebTypeComputeIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webtypecompute are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-go="`iap.WebTypeComputeIamMember`" pulumi-lang-python="`iap.WebTypeComputeIamMember`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamMember`">`gcp.iap.WebTypeComputeIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webtypecompute are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-go="`iap.WebTypeComputeIamPolicy`" pulumi-lang-python="`iap.WebTypeComputeIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamPolicy`">`gcp.iap.WebTypeComputeIamPolicy`</span>: Retrieves the IAM policy for the webtypecompute
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-go="`iap.WebTypeComputeIamPolicy`" pulumi-lang-python="`iap.WebTypeComputeIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamPolicy`">`gcp.iap.WebTypeComputeIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-go="`iap.WebTypeComputeIamBinding`" pulumi-lang-python="`iap.WebTypeComputeIamBinding`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamBinding`">`gcp.iap.WebTypeComputeIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-go="`iap.WebTypeComputeIamMember`" pulumi-lang-python="`iap.WebTypeComputeIamMember`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamMember`">`gcp.iap.WebTypeComputeIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-go="`iap.WebTypeComputeIamBinding`" pulumi-lang-python="`iap.WebTypeComputeIamBinding`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamBinding`">`gcp.iap.WebTypeComputeIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-go="`iap.WebTypeComputeIamMember`" pulumi-lang-python="`iap.WebTypeComputeIamMember`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamMember`">`gcp.iap.WebTypeComputeIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebTypeComputeIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.WebTypeComputeIamPolicy
/// " pulumi-lang-go=" iap.WebTypeComputeIamPolicy
/// " pulumi-lang-python=" iap.WebTypeComputeIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.WebTypeComputeIamPolicy
/// " pulumi-lang-java=" gcp.iap.WebTypeComputeIamPolicy
/// "> gcp.iap.WebTypeComputeIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.iap.WebTypeComputeIamPolicy("policy", {
/// project: projectService.project,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.httpsResourceAccessor",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.WebTypeComputeIamPolicy("policy",
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
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iap.WebTypeComputeIamPolicy("policy", new()
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
/// Role: "roles/iap.httpsResourceAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iap.NewWebTypeComputeIamPolicy(ctx, "policy", &iap.WebTypeComputeIamPolicyArgs{
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
/// import com.pulumi.gcp.iap.WebTypeComputeIamPolicy;
/// import com.pulumi.gcp.iap.WebTypeComputeIamPolicyArgs;
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
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new WebTypeComputeIamPolicy("policy", WebTypeComputeIamPolicyArgs.builder()
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
/// type: gcp:iap:WebTypeComputeIamPolicy
/// properties:
/// project: ${projectService.project}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.httpsResourceAccessor
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
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.iap.WebTypeComputeIamPolicy("policy", {
/// project: projectService.project,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.httpsResourceAccessor",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.iap.WebTypeComputeIamPolicy("policy",
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
/// Role = "roles/iap.httpsResourceAccessor",
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
/// var policy = new Gcp.Iap.WebTypeComputeIamPolicy("policy", new()
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
/// Role: "roles/iap.httpsResourceAccessor",
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
/// _, err = iap.NewWebTypeComputeIamPolicy(ctx, "policy", &iap.WebTypeComputeIamPolicyArgs{
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
/// import com.pulumi.gcp.iap.WebTypeComputeIamPolicy;
/// import com.pulumi.gcp.iap.WebTypeComputeIamPolicyArgs;
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
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new WebTypeComputeIamPolicy("policy", WebTypeComputeIamPolicyArgs.builder()
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
/// type: gcp:iap:WebTypeComputeIamPolicy
/// properties:
/// project: ${projectService.project}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebTypeComputeIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.WebTypeComputeIamBinding
/// " pulumi-lang-go=" iap.WebTypeComputeIamBinding
/// " pulumi-lang-python=" iap.WebTypeComputeIamBinding
/// " pulumi-lang-yaml=" gcp.iap.WebTypeComputeIamBinding
/// " pulumi-lang-java=" gcp.iap.WebTypeComputeIamBinding
/// "> gcp.iap.WebTypeComputeIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.WebTypeComputeIamBinding("binding", {
/// project: projectService.project,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.WebTypeComputeIamBinding("binding",
/// project=project_service["project"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var binding = new Gcp.Iap.WebTypeComputeIamBinding("binding", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.httpsResourceAccessor",
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
/// _, err := iap.NewWebTypeComputeIamBinding(ctx, "binding", &iap.WebTypeComputeIamBindingArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// import com.pulumi.gcp.iap.WebTypeComputeIamBinding;
/// import com.pulumi.gcp.iap.WebTypeComputeIamBindingArgs;
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
/// var binding = new WebTypeComputeIamBinding("binding", WebTypeComputeIamBindingArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iap:WebTypeComputeIamBinding
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.httpsResourceAccessor
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
/// const binding = new gcp.iap.WebTypeComputeIamBinding("binding", {
/// project: projectService.project,
/// role: "roles/iap.httpsResourceAccessor",
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
/// binding = gcp.iap.WebTypeComputeIamBinding("binding",
/// project=project_service["project"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var binding = new Gcp.Iap.WebTypeComputeIamBinding("binding", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.WebTypeComputeIamBindingConditionArgs
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
/// _, err := iap.NewWebTypeComputeIamBinding(ctx, "binding", &iap.WebTypeComputeIamBindingArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.WebTypeComputeIamBindingConditionArgs{
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
/// import com.pulumi.gcp.iap.WebTypeComputeIamBinding;
/// import com.pulumi.gcp.iap.WebTypeComputeIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.WebTypeComputeIamBindingConditionArgs;
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
/// var binding = new WebTypeComputeIamBinding("binding", WebTypeComputeIamBindingArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(WebTypeComputeIamBindingConditionArgs.builder()
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
/// type: gcp:iap:WebTypeComputeIamBinding
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebTypeComputeIamMember
/// " pulumi-lang-dotnet=" gcp.iap.WebTypeComputeIamMember
/// " pulumi-lang-go=" iap.WebTypeComputeIamMember
/// " pulumi-lang-python=" iap.WebTypeComputeIamMember
/// " pulumi-lang-yaml=" gcp.iap.WebTypeComputeIamMember
/// " pulumi-lang-java=" gcp.iap.WebTypeComputeIamMember
/// "> gcp.iap.WebTypeComputeIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.WebTypeComputeIamMember("member", {
/// project: projectService.project,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.WebTypeComputeIamMember("member",
/// project=project_service["project"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var member = new Gcp.Iap.WebTypeComputeIamMember("member", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.httpsResourceAccessor",
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
/// _, err := iap.NewWebTypeComputeIamMember(ctx, "member", &iap.WebTypeComputeIamMemberArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// import com.pulumi.gcp.iap.WebTypeComputeIamMember;
/// import com.pulumi.gcp.iap.WebTypeComputeIamMemberArgs;
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
/// var member = new WebTypeComputeIamMember("member", WebTypeComputeIamMemberArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iap:WebTypeComputeIamMember
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.httpsResourceAccessor
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
/// const member = new gcp.iap.WebTypeComputeIamMember("member", {
/// project: projectService.project,
/// role: "roles/iap.httpsResourceAccessor",
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
/// member = gcp.iap.WebTypeComputeIamMember("member",
/// project=project_service["project"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var member = new Gcp.Iap.WebTypeComputeIamMember("member", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.WebTypeComputeIamMemberConditionArgs
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
/// _, err := iap.NewWebTypeComputeIamMember(ctx, "member", &iap.WebTypeComputeIamMemberArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &iap.WebTypeComputeIamMemberConditionArgs{
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
/// import com.pulumi.gcp.iap.WebTypeComputeIamMember;
/// import com.pulumi.gcp.iap.WebTypeComputeIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.WebTypeComputeIamMemberConditionArgs;
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
/// var member = new WebTypeComputeIamMember("member", WebTypeComputeIamMemberArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(WebTypeComputeIamMemberConditionArgs.builder()
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
/// type: gcp:iap:WebTypeComputeIamMember
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.httpsResourceAccessor
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
/// # IAM policy for Identity-Aware Proxy WebTypeCompute
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebTypeCompute. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-go="`iap.WebTypeComputeIamPolicy`" pulumi-lang-python="`iap.WebTypeComputeIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamPolicy`">`gcp.iap.WebTypeComputeIamPolicy`</span>: Authoritative. Sets the IAM policy for the webtypecompute and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-go="`iap.WebTypeComputeIamBinding`" pulumi-lang-python="`iap.WebTypeComputeIamBinding`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamBinding`">`gcp.iap.WebTypeComputeIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webtypecompute are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-go="`iap.WebTypeComputeIamMember`" pulumi-lang-python="`iap.WebTypeComputeIamMember`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamMember`">`gcp.iap.WebTypeComputeIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webtypecompute are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-go="`iap.WebTypeComputeIamPolicy`" pulumi-lang-python="`iap.WebTypeComputeIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamPolicy`">`gcp.iap.WebTypeComputeIamPolicy`</span>: Retrieves the IAM policy for the webtypecompute
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-go="`iap.WebTypeComputeIamPolicy`" pulumi-lang-python="`iap.WebTypeComputeIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamPolicy`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamPolicy`">`gcp.iap.WebTypeComputeIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-go="`iap.WebTypeComputeIamBinding`" pulumi-lang-python="`iap.WebTypeComputeIamBinding`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamBinding`">`gcp.iap.WebTypeComputeIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-go="`iap.WebTypeComputeIamMember`" pulumi-lang-python="`iap.WebTypeComputeIamMember`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamMember`">`gcp.iap.WebTypeComputeIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-go="`iap.WebTypeComputeIamBinding`" pulumi-lang-python="`iap.WebTypeComputeIamBinding`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamBinding`">`gcp.iap.WebTypeComputeIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-go="`iap.WebTypeComputeIamMember`" pulumi-lang-python="`iap.WebTypeComputeIamMember`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamMember`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamMember`">`gcp.iap.WebTypeComputeIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebTypeComputeIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.WebTypeComputeIamPolicy
/// " pulumi-lang-go=" iap.WebTypeComputeIamPolicy
/// " pulumi-lang-python=" iap.WebTypeComputeIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.WebTypeComputeIamPolicy
/// " pulumi-lang-java=" gcp.iap.WebTypeComputeIamPolicy
/// "> gcp.iap.WebTypeComputeIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.iap.WebTypeComputeIamPolicy("policy", {
/// project: projectService.project,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.httpsResourceAccessor",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.iap.WebTypeComputeIamPolicy("policy",
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
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Iap.WebTypeComputeIamPolicy("policy", new()
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
/// Role: "roles/iap.httpsResourceAccessor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iap.NewWebTypeComputeIamPolicy(ctx, "policy", &iap.WebTypeComputeIamPolicyArgs{
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
/// import com.pulumi.gcp.iap.WebTypeComputeIamPolicy;
/// import com.pulumi.gcp.iap.WebTypeComputeIamPolicyArgs;
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
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new WebTypeComputeIamPolicy("policy", WebTypeComputeIamPolicyArgs.builder()
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
/// type: gcp:iap:WebTypeComputeIamPolicy
/// properties:
/// project: ${projectService.project}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.httpsResourceAccessor
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
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.iap.WebTypeComputeIamPolicy("policy", {
/// project: projectService.project,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/iap.httpsResourceAccessor",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.iap.WebTypeComputeIamPolicy("policy",
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
/// Role = "roles/iap.httpsResourceAccessor",
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
/// var policy = new Gcp.Iap.WebTypeComputeIamPolicy("policy", new()
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
/// Role: "roles/iap.httpsResourceAccessor",
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
/// _, err = iap.NewWebTypeComputeIamPolicy(ctx, "policy", &iap.WebTypeComputeIamPolicyArgs{
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
/// import com.pulumi.gcp.iap.WebTypeComputeIamPolicy;
/// import com.pulumi.gcp.iap.WebTypeComputeIamPolicyArgs;
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
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new WebTypeComputeIamPolicy("policy", WebTypeComputeIamPolicyArgs.builder()
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
/// type: gcp:iap:WebTypeComputeIamPolicy
/// properties:
/// project: ${projectService.project}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebTypeComputeIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.WebTypeComputeIamBinding
/// " pulumi-lang-go=" iap.WebTypeComputeIamBinding
/// " pulumi-lang-python=" iap.WebTypeComputeIamBinding
/// " pulumi-lang-yaml=" gcp.iap.WebTypeComputeIamBinding
/// " pulumi-lang-java=" gcp.iap.WebTypeComputeIamBinding
/// "> gcp.iap.WebTypeComputeIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.WebTypeComputeIamBinding("binding", {
/// project: projectService.project,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.WebTypeComputeIamBinding("binding",
/// project=project_service["project"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var binding = new Gcp.Iap.WebTypeComputeIamBinding("binding", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.httpsResourceAccessor",
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
/// _, err := iap.NewWebTypeComputeIamBinding(ctx, "binding", &iap.WebTypeComputeIamBindingArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// import com.pulumi.gcp.iap.WebTypeComputeIamBinding;
/// import com.pulumi.gcp.iap.WebTypeComputeIamBindingArgs;
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
/// var binding = new WebTypeComputeIamBinding("binding", WebTypeComputeIamBindingArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:iap:WebTypeComputeIamBinding
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.httpsResourceAccessor
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
/// const binding = new gcp.iap.WebTypeComputeIamBinding("binding", {
/// project: projectService.project,
/// role: "roles/iap.httpsResourceAccessor",
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
/// binding = gcp.iap.WebTypeComputeIamBinding("binding",
/// project=project_service["project"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var binding = new Gcp.Iap.WebTypeComputeIamBinding("binding", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.WebTypeComputeIamBindingConditionArgs
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
/// _, err := iap.NewWebTypeComputeIamBinding(ctx, "binding", &iap.WebTypeComputeIamBindingArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.WebTypeComputeIamBindingConditionArgs{
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
/// import com.pulumi.gcp.iap.WebTypeComputeIamBinding;
/// import com.pulumi.gcp.iap.WebTypeComputeIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.WebTypeComputeIamBindingConditionArgs;
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
/// var binding = new WebTypeComputeIamBinding("binding", WebTypeComputeIamBindingArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(WebTypeComputeIamBindingConditionArgs.builder()
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
/// type: gcp:iap:WebTypeComputeIamBinding
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebTypeComputeIamMember
/// " pulumi-lang-dotnet=" gcp.iap.WebTypeComputeIamMember
/// " pulumi-lang-go=" iap.WebTypeComputeIamMember
/// " pulumi-lang-python=" iap.WebTypeComputeIamMember
/// " pulumi-lang-yaml=" gcp.iap.WebTypeComputeIamMember
/// " pulumi-lang-java=" gcp.iap.WebTypeComputeIamMember
/// "> gcp.iap.WebTypeComputeIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.WebTypeComputeIamMember("member", {
/// project: projectService.project,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.WebTypeComputeIamMember("member",
/// project=project_service["project"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var member = new Gcp.Iap.WebTypeComputeIamMember("member", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.httpsResourceAccessor",
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
/// _, err := iap.NewWebTypeComputeIamMember(ctx, "member", &iap.WebTypeComputeIamMemberArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// import com.pulumi.gcp.iap.WebTypeComputeIamMember;
/// import com.pulumi.gcp.iap.WebTypeComputeIamMemberArgs;
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
/// var member = new WebTypeComputeIamMember("member", WebTypeComputeIamMemberArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:iap:WebTypeComputeIamMember
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.httpsResourceAccessor
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
/// const member = new gcp.iap.WebTypeComputeIamMember("member", {
/// project: projectService.project,
/// role: "roles/iap.httpsResourceAccessor",
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
/// member = gcp.iap.WebTypeComputeIamMember("member",
/// project=project_service["project"],
/// role="roles/iap.httpsResourceAccessor",
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
/// var member = new Gcp.Iap.WebTypeComputeIamMember("member", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.WebTypeComputeIamMemberConditionArgs
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
/// _, err := iap.NewWebTypeComputeIamMember(ctx, "member", &iap.WebTypeComputeIamMemberArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &iap.WebTypeComputeIamMemberConditionArgs{
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
/// import com.pulumi.gcp.iap.WebTypeComputeIamMember;
/// import com.pulumi.gcp.iap.WebTypeComputeIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.WebTypeComputeIamMemberConditionArgs;
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
/// var member = new WebTypeComputeIamMember("member", WebTypeComputeIamMemberArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(WebTypeComputeIamMemberConditionArgs.builder()
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
/// type: gcp:iap:WebTypeComputeIamMember
/// properties:
/// project: ${projectService.project}
/// role: roles/iap.httpsResourceAccessor
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
/// * projects/{{project}}/iap_web/compute
///
/// * {{project}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy webtypecompute IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webTypeComputeIamMember:WebTypeComputeIamMember editor "projects/{{project}}/iap_web/compute roles/iap.httpsResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webTypeComputeIamMember:WebTypeComputeIamMember editor "projects/{{project}}/iap_web/compute roles/iap.httpsResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webTypeComputeIamMember:WebTypeComputeIamMember editor projects/{{project}}/iap_web/compute
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WebTypeComputeIamMember extends CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final Output<WebTypeComputeIamMemberCondition?> condition;

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
  late final Output<String> member;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-go="`iap.WebTypeComputeIamBinding`" pulumi-lang-python="`iap.WebTypeComputeIamBinding`" pulumi-lang-yaml="`gcp.iap.WebTypeComputeIamBinding`" pulumi-lang-java="`gcp.iap.WebTypeComputeIamBinding`">`gcp.iap.WebTypeComputeIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  WebTypeComputeIamMember(
    String name, {
    WebTypeComputeIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iap/webTypeComputeIamMember:WebTypeComputeIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<WebTypeComputeIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
