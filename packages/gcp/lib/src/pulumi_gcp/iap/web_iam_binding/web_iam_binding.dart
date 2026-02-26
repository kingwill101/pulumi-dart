import 'package:pulumi/pulumi.dart';
import '../web_iam_binding_condition/web_iam_binding_condition.dart';
import 'web_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy Web. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebIamPolicy`" pulumi-lang-go="`iap.WebIamPolicy`" pulumi-lang-python="`iap.WebIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebIamPolicy`" pulumi-lang-java="`gcp.iap.WebIamPolicy`">`gcp.iap.WebIamPolicy`</span>: Authoritative. Sets the IAM policy for the web and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebIamBinding`" pulumi-lang-go="`iap.WebIamBinding`" pulumi-lang-python="`iap.WebIamBinding`" pulumi-lang-yaml="`gcp.iap.WebIamBinding`" pulumi-lang-java="`gcp.iap.WebIamBinding`">`gcp.iap.WebIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the web are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebIamMember`" pulumi-lang-dotnet="`gcp.iap.WebIamMember`" pulumi-lang-go="`iap.WebIamMember`" pulumi-lang-python="`iap.WebIamMember`" pulumi-lang-yaml="`gcp.iap.WebIamMember`" pulumi-lang-java="`gcp.iap.WebIamMember`">`gcp.iap.WebIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the web are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebIamPolicy`" pulumi-lang-go="`iap.WebIamPolicy`" pulumi-lang-python="`iap.WebIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebIamPolicy`" pulumi-lang-java="`gcp.iap.WebIamPolicy`">`gcp.iap.WebIamPolicy`</span>: Retrieves the IAM policy for the web
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebIamPolicy`" pulumi-lang-go="`iap.WebIamPolicy`" pulumi-lang-python="`iap.WebIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebIamPolicy`" pulumi-lang-java="`gcp.iap.WebIamPolicy`">`gcp.iap.WebIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebIamBinding`" pulumi-lang-go="`iap.WebIamBinding`" pulumi-lang-python="`iap.WebIamBinding`" pulumi-lang-yaml="`gcp.iap.WebIamBinding`" pulumi-lang-java="`gcp.iap.WebIamBinding`">`gcp.iap.WebIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.WebIamMember`" pulumi-lang-dotnet="`gcp.iap.WebIamMember`" pulumi-lang-go="`iap.WebIamMember`" pulumi-lang-python="`iap.WebIamMember`" pulumi-lang-yaml="`gcp.iap.WebIamMember`" pulumi-lang-java="`gcp.iap.WebIamMember`">`gcp.iap.WebIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebIamBinding`" pulumi-lang-go="`iap.WebIamBinding`" pulumi-lang-python="`iap.WebIamBinding`" pulumi-lang-yaml="`gcp.iap.WebIamBinding`" pulumi-lang-java="`gcp.iap.WebIamBinding`">`gcp.iap.WebIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebIamMember`" pulumi-lang-dotnet="`gcp.iap.WebIamMember`" pulumi-lang-go="`iap.WebIamMember`" pulumi-lang-python="`iap.WebIamMember`" pulumi-lang-yaml="`gcp.iap.WebIamMember`" pulumi-lang-java="`gcp.iap.WebIamMember`">`gcp.iap.WebIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.WebIamPolicy
/// " pulumi-lang-go=" iap.WebIamPolicy
/// " pulumi-lang-python=" iap.WebIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.WebIamPolicy
/// " pulumi-lang-java=" gcp.iap.WebIamPolicy
/// "> gcp.iap.WebIamPolicy
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
/// const policy = new gcp.iap.WebIamPolicy("policy", {
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
/// policy = gcp.iap.WebIamPolicy("policy",
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
/// var policy = new Gcp.Iap.WebIamPolicy("policy", new()
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
/// _, err = iap.NewWebIamPolicy(ctx, "policy", &iap.WebIamPolicyArgs{
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
/// import com.pulumi.gcp.iap.WebIamPolicy;
/// import com.pulumi.gcp.iap.WebIamPolicyArgs;
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
/// var policy = new WebIamPolicy("policy", WebIamPolicyArgs.builder()
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
/// type: gcp:iap:WebIamPolicy
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
/// const policy = new gcp.iap.WebIamPolicy("policy", {
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
/// policy = gcp.iap.WebIamPolicy("policy",
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
/// var policy = new Gcp.Iap.WebIamPolicy("policy", new()
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
/// _, err = iap.NewWebIamPolicy(ctx, "policy", &iap.WebIamPolicyArgs{
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
/// import com.pulumi.gcp.iap.WebIamPolicy;
/// import com.pulumi.gcp.iap.WebIamPolicyArgs;
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
/// var policy = new WebIamPolicy("policy", WebIamPolicyArgs.builder()
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
/// type: gcp:iap:WebIamPolicy
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
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.WebIamBinding
/// " pulumi-lang-go=" iap.WebIamBinding
/// " pulumi-lang-python=" iap.WebIamBinding
/// " pulumi-lang-yaml=" gcp.iap.WebIamBinding
/// " pulumi-lang-java=" gcp.iap.WebIamBinding
/// "> gcp.iap.WebIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.WebIamBinding("binding", {
/// project: projectService.project,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.WebIamBinding("binding",
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
/// var binding = new Gcp.Iap.WebIamBinding("binding", new()
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
/// _, err := iap.NewWebIamBinding(ctx, "binding", &iap.WebIamBindingArgs{
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
/// import com.pulumi.gcp.iap.WebIamBinding;
/// import com.pulumi.gcp.iap.WebIamBindingArgs;
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
/// var binding = new WebIamBinding("binding", WebIamBindingArgs.builder()
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
/// type: gcp:iap:WebIamBinding
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
/// const binding = new gcp.iap.WebIamBinding("binding", {
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
/// binding = gcp.iap.WebIamBinding("binding",
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
/// var binding = new Gcp.Iap.WebIamBinding("binding", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.WebIamBindingConditionArgs
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
/// _, err := iap.NewWebIamBinding(ctx, "binding", &iap.WebIamBindingArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.WebIamBindingConditionArgs{
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
/// import com.pulumi.gcp.iap.WebIamBinding;
/// import com.pulumi.gcp.iap.WebIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.WebIamBindingConditionArgs;
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
/// var binding = new WebIamBinding("binding", WebIamBindingArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(WebIamBindingConditionArgs.builder()
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
/// type: gcp:iap:WebIamBinding
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
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebIamMember
/// " pulumi-lang-dotnet=" gcp.iap.WebIamMember
/// " pulumi-lang-go=" iap.WebIamMember
/// " pulumi-lang-python=" iap.WebIamMember
/// " pulumi-lang-yaml=" gcp.iap.WebIamMember
/// " pulumi-lang-java=" gcp.iap.WebIamMember
/// "> gcp.iap.WebIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.WebIamMember("member", {
/// project: projectService.project,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.WebIamMember("member",
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
/// var member = new Gcp.Iap.WebIamMember("member", new()
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
/// _, err := iap.NewWebIamMember(ctx, "member", &iap.WebIamMemberArgs{
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
/// import com.pulumi.gcp.iap.WebIamMember;
/// import com.pulumi.gcp.iap.WebIamMemberArgs;
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
/// var member = new WebIamMember("member", WebIamMemberArgs.builder()
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
/// type: gcp:iap:WebIamMember
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
/// const member = new gcp.iap.WebIamMember("member", {
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
/// member = gcp.iap.WebIamMember("member",
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
/// var member = new Gcp.Iap.WebIamMember("member", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.WebIamMemberConditionArgs
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
/// _, err := iap.NewWebIamMember(ctx, "member", &iap.WebIamMemberArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &iap.WebIamMemberConditionArgs{
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
/// import com.pulumi.gcp.iap.WebIamMember;
/// import com.pulumi.gcp.iap.WebIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.WebIamMemberConditionArgs;
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
/// var member = new WebIamMember("member", WebIamMemberArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(WebIamMemberConditionArgs.builder()
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
/// type: gcp:iap:WebIamMember
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
/// # IAM policy for Identity-Aware Proxy Web
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy Web. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebIamPolicy`" pulumi-lang-go="`iap.WebIamPolicy`" pulumi-lang-python="`iap.WebIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebIamPolicy`" pulumi-lang-java="`gcp.iap.WebIamPolicy`">`gcp.iap.WebIamPolicy`</span>: Authoritative. Sets the IAM policy for the web and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebIamBinding`" pulumi-lang-go="`iap.WebIamBinding`" pulumi-lang-python="`iap.WebIamBinding`" pulumi-lang-yaml="`gcp.iap.WebIamBinding`" pulumi-lang-java="`gcp.iap.WebIamBinding`">`gcp.iap.WebIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the web are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebIamMember`" pulumi-lang-dotnet="`gcp.iap.WebIamMember`" pulumi-lang-go="`iap.WebIamMember`" pulumi-lang-python="`iap.WebIamMember`" pulumi-lang-yaml="`gcp.iap.WebIamMember`" pulumi-lang-java="`gcp.iap.WebIamMember`">`gcp.iap.WebIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the web are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebIamPolicy`" pulumi-lang-go="`iap.WebIamPolicy`" pulumi-lang-python="`iap.WebIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebIamPolicy`" pulumi-lang-java="`gcp.iap.WebIamPolicy`">`gcp.iap.WebIamPolicy`</span>: Retrieves the IAM policy for the web
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebIamPolicy`" pulumi-lang-go="`iap.WebIamPolicy`" pulumi-lang-python="`iap.WebIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebIamPolicy`" pulumi-lang-java="`gcp.iap.WebIamPolicy`">`gcp.iap.WebIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebIamBinding`" pulumi-lang-go="`iap.WebIamBinding`" pulumi-lang-python="`iap.WebIamBinding`" pulumi-lang-yaml="`gcp.iap.WebIamBinding`" pulumi-lang-java="`gcp.iap.WebIamBinding`">`gcp.iap.WebIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.WebIamMember`" pulumi-lang-dotnet="`gcp.iap.WebIamMember`" pulumi-lang-go="`iap.WebIamMember`" pulumi-lang-python="`iap.WebIamMember`" pulumi-lang-yaml="`gcp.iap.WebIamMember`" pulumi-lang-java="`gcp.iap.WebIamMember`">`gcp.iap.WebIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebIamBinding`" pulumi-lang-go="`iap.WebIamBinding`" pulumi-lang-python="`iap.WebIamBinding`" pulumi-lang-yaml="`gcp.iap.WebIamBinding`" pulumi-lang-java="`gcp.iap.WebIamBinding`">`gcp.iap.WebIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebIamMember`" pulumi-lang-dotnet="`gcp.iap.WebIamMember`" pulumi-lang-go="`iap.WebIamMember`" pulumi-lang-python="`iap.WebIamMember`" pulumi-lang-yaml="`gcp.iap.WebIamMember`" pulumi-lang-java="`gcp.iap.WebIamMember`">`gcp.iap.WebIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.WebIamPolicy
/// " pulumi-lang-go=" iap.WebIamPolicy
/// " pulumi-lang-python=" iap.WebIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.WebIamPolicy
/// " pulumi-lang-java=" gcp.iap.WebIamPolicy
/// "> gcp.iap.WebIamPolicy
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
/// const policy = new gcp.iap.WebIamPolicy("policy", {
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
/// policy = gcp.iap.WebIamPolicy("policy",
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
/// var policy = new Gcp.Iap.WebIamPolicy("policy", new()
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
/// _, err = iap.NewWebIamPolicy(ctx, "policy", &iap.WebIamPolicyArgs{
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
/// import com.pulumi.gcp.iap.WebIamPolicy;
/// import com.pulumi.gcp.iap.WebIamPolicyArgs;
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
/// var policy = new WebIamPolicy("policy", WebIamPolicyArgs.builder()
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
/// type: gcp:iap:WebIamPolicy
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
/// const policy = new gcp.iap.WebIamPolicy("policy", {
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
/// policy = gcp.iap.WebIamPolicy("policy",
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
/// var policy = new Gcp.Iap.WebIamPolicy("policy", new()
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
/// _, err = iap.NewWebIamPolicy(ctx, "policy", &iap.WebIamPolicyArgs{
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
/// import com.pulumi.gcp.iap.WebIamPolicy;
/// import com.pulumi.gcp.iap.WebIamPolicyArgs;
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
/// var policy = new WebIamPolicy("policy", WebIamPolicyArgs.builder()
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
/// type: gcp:iap:WebIamPolicy
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
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.WebIamBinding
/// " pulumi-lang-go=" iap.WebIamBinding
/// " pulumi-lang-python=" iap.WebIamBinding
/// " pulumi-lang-yaml=" gcp.iap.WebIamBinding
/// " pulumi-lang-java=" gcp.iap.WebIamBinding
/// "> gcp.iap.WebIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.WebIamBinding("binding", {
/// project: projectService.project,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.WebIamBinding("binding",
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
/// var binding = new Gcp.Iap.WebIamBinding("binding", new()
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
/// _, err := iap.NewWebIamBinding(ctx, "binding", &iap.WebIamBindingArgs{
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
/// import com.pulumi.gcp.iap.WebIamBinding;
/// import com.pulumi.gcp.iap.WebIamBindingArgs;
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
/// var binding = new WebIamBinding("binding", WebIamBindingArgs.builder()
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
/// type: gcp:iap:WebIamBinding
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
/// const binding = new gcp.iap.WebIamBinding("binding", {
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
/// binding = gcp.iap.WebIamBinding("binding",
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
/// var binding = new Gcp.Iap.WebIamBinding("binding", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.WebIamBindingConditionArgs
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
/// _, err := iap.NewWebIamBinding(ctx, "binding", &iap.WebIamBindingArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.WebIamBindingConditionArgs{
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
/// import com.pulumi.gcp.iap.WebIamBinding;
/// import com.pulumi.gcp.iap.WebIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.WebIamBindingConditionArgs;
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
/// var binding = new WebIamBinding("binding", WebIamBindingArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(WebIamBindingConditionArgs.builder()
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
/// type: gcp:iap:WebIamBinding
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
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebIamMember
/// " pulumi-lang-dotnet=" gcp.iap.WebIamMember
/// " pulumi-lang-go=" iap.WebIamMember
/// " pulumi-lang-python=" iap.WebIamMember
/// " pulumi-lang-yaml=" gcp.iap.WebIamMember
/// " pulumi-lang-java=" gcp.iap.WebIamMember
/// "> gcp.iap.WebIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.WebIamMember("member", {
/// project: projectService.project,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.WebIamMember("member",
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
/// var member = new Gcp.Iap.WebIamMember("member", new()
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
/// _, err := iap.NewWebIamMember(ctx, "member", &iap.WebIamMemberArgs{
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
/// import com.pulumi.gcp.iap.WebIamMember;
/// import com.pulumi.gcp.iap.WebIamMemberArgs;
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
/// var member = new WebIamMember("member", WebIamMemberArgs.builder()
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
/// type: gcp:iap:WebIamMember
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
/// const member = new gcp.iap.WebIamMember("member", {
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
/// member = gcp.iap.WebIamMember("member",
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
/// var member = new Gcp.Iap.WebIamMember("member", new()
/// {
/// Project = projectService.Project,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.WebIamMemberConditionArgs
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
/// _, err := iap.NewWebIamMember(ctx, "member", &iap.WebIamMemberArgs{
/// Project: pulumi.Any(projectService.Project),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &iap.WebIamMemberConditionArgs{
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
/// import com.pulumi.gcp.iap.WebIamMember;
/// import com.pulumi.gcp.iap.WebIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.WebIamMemberConditionArgs;
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
/// var member = new WebIamMember("member", WebIamMemberArgs.builder()
/// .project(projectService.project())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(WebIamMemberConditionArgs.builder()
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
/// type: gcp:iap:WebIamMember
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
/// * projects/{{project}}/iap_web
///
/// * {{project}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy web IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webIamBinding:WebIamBinding editor "projects/{{project}}/iap_web roles/iap.httpsResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webIamBinding:WebIamBinding editor "projects/{{project}}/iap_web roles/iap.httpsResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webIamBinding:WebIamBinding editor projects/{{project}}/iap_web
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WebIamBinding extends CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final Output<WebIamBindingCondition?> condition;

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

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.iap.WebIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebIamBinding`" pulumi-lang-go="`iap.WebIamBinding`" pulumi-lang-python="`iap.WebIamBinding`" pulumi-lang-yaml="`gcp.iap.WebIamBinding`" pulumi-lang-java="`gcp.iap.WebIamBinding`">`gcp.iap.WebIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  WebIamBinding(
    String name, {
    WebIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iap/webIamBinding:WebIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<WebIamBindingCondition?>();
    this.etag = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
