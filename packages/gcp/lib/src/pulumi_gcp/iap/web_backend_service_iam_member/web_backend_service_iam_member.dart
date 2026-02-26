import 'package:pulumi/pulumi.dart';
import '../web_backend_service_iam_member_condition/web_backend_service_iam_member_condition.dart';
import 'web_backend_service_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebBackendService. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-go="`iap.WebBackendServiceIamPolicy`" pulumi-lang-python="`iap.WebBackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamPolicy`">`gcp.iap.WebBackendServiceIamPolicy`</span>: Authoritative. Sets the IAM policy for the webbackendservice and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-go="`iap.WebBackendServiceIamBinding`" pulumi-lang-python="`iap.WebBackendServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamBinding`">`gcp.iap.WebBackendServiceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webbackendservice are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-go="`iap.WebBackendServiceIamMember`" pulumi-lang-python="`iap.WebBackendServiceIamMember`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamMember`">`gcp.iap.WebBackendServiceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webbackendservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-go="`iap.WebBackendServiceIamPolicy`" pulumi-lang-python="`iap.WebBackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamPolicy`">`gcp.iap.WebBackendServiceIamPolicy`</span>: Retrieves the IAM policy for the webbackendservice
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-go="`iap.WebBackendServiceIamPolicy`" pulumi-lang-python="`iap.WebBackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamPolicy`">`gcp.iap.WebBackendServiceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-go="`iap.WebBackendServiceIamBinding`" pulumi-lang-python="`iap.WebBackendServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamBinding`">`gcp.iap.WebBackendServiceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-go="`iap.WebBackendServiceIamMember`" pulumi-lang-python="`iap.WebBackendServiceIamMember`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamMember`">`gcp.iap.WebBackendServiceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-go="`iap.WebBackendServiceIamBinding`" pulumi-lang-python="`iap.WebBackendServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamBinding`">`gcp.iap.WebBackendServiceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-go="`iap.WebBackendServiceIamMember`" pulumi-lang-python="`iap.WebBackendServiceIamMember`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamMember`">`gcp.iap.WebBackendServiceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebBackendServiceIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.WebBackendServiceIamPolicy
/// " pulumi-lang-go=" iap.WebBackendServiceIamPolicy
/// " pulumi-lang-python=" iap.WebBackendServiceIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.WebBackendServiceIamPolicy
/// " pulumi-lang-java=" gcp.iap.WebBackendServiceIamPolicy
/// "> gcp.iap.WebBackendServiceIamPolicy
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
/// const policy = new gcp.iap.WebBackendServiceIamPolicy("policy", {
/// project: _default.project,
/// webBackendService: _default.name,
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
/// policy = gcp.iap.WebBackendServiceIamPolicy("policy",
/// project=default["project"],
/// web_backend_service=default["name"],
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
/// var policy = new Gcp.Iap.WebBackendServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// WebBackendService = @default.Name,
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
/// _, err = iap.NewWebBackendServiceIamPolicy(ctx, "policy", &iap.WebBackendServiceIamPolicyArgs{
/// Project:           pulumi.Any(_default.Project),
/// WebBackendService: pulumi.Any(_default.Name),
/// PolicyData:        pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.iap.WebBackendServiceIamPolicy;
/// import com.pulumi.gcp.iap.WebBackendServiceIamPolicyArgs;
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
/// var policy = new WebBackendServiceIamPolicy("policy", WebBackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .webBackendService(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:WebBackendServiceIamPolicy
/// properties:
/// project: ${default.project}
/// webBackendService: ${default.name}
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
/// const policy = new gcp.iap.WebBackendServiceIamPolicy("policy", {
/// project: _default.project,
/// webBackendService: _default.name,
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
/// policy = gcp.iap.WebBackendServiceIamPolicy("policy",
/// project=default["project"],
/// web_backend_service=default["name"],
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
/// var policy = new Gcp.Iap.WebBackendServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// WebBackendService = @default.Name,
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
/// _, err = iap.NewWebBackendServiceIamPolicy(ctx, "policy", &iap.WebBackendServiceIamPolicyArgs{
/// Project:           pulumi.Any(_default.Project),
/// WebBackendService: pulumi.Any(_default.Name),
/// PolicyData:        pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.iap.WebBackendServiceIamPolicy;
/// import com.pulumi.gcp.iap.WebBackendServiceIamPolicyArgs;
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
/// var policy = new WebBackendServiceIamPolicy("policy", WebBackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .webBackendService(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:WebBackendServiceIamPolicy
/// properties:
/// project: ${default.project}
/// webBackendService: ${default.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebBackendServiceIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.WebBackendServiceIamBinding
/// " pulumi-lang-go=" iap.WebBackendServiceIamBinding
/// " pulumi-lang-python=" iap.WebBackendServiceIamBinding
/// " pulumi-lang-yaml=" gcp.iap.WebBackendServiceIamBinding
/// " pulumi-lang-java=" gcp.iap.WebBackendServiceIamBinding
/// "> gcp.iap.WebBackendServiceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.WebBackendServiceIamBinding("binding", {
/// project: _default.project,
/// webBackendService: _default.name,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.WebBackendServiceIamBinding("binding",
/// project=default["project"],
/// web_backend_service=default["name"],
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
/// var binding = new Gcp.Iap.WebBackendServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// WebBackendService = @default.Name,
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
/// _, err := iap.NewWebBackendServiceIamBinding(ctx, "binding", &iap.WebBackendServiceIamBindingArgs{
/// Project:           pulumi.Any(_default.Project),
/// WebBackendService: pulumi.Any(_default.Name),
/// Role:              pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// import com.pulumi.gcp.iap.WebBackendServiceIamBinding;
/// import com.pulumi.gcp.iap.WebBackendServiceIamBindingArgs;
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
/// var binding = new WebBackendServiceIamBinding("binding", WebBackendServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .webBackendService(default_.name())
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
/// type: gcp:iap:WebBackendServiceIamBinding
/// properties:
/// project: ${default.project}
/// webBackendService: ${default.name}
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
/// const binding = new gcp.iap.WebBackendServiceIamBinding("binding", {
/// project: _default.project,
/// webBackendService: _default.name,
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
/// binding = gcp.iap.WebBackendServiceIamBinding("binding",
/// project=default["project"],
/// web_backend_service=default["name"],
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
/// var binding = new Gcp.Iap.WebBackendServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// WebBackendService = @default.Name,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.WebBackendServiceIamBindingConditionArgs
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
/// _, err := iap.NewWebBackendServiceIamBinding(ctx, "binding", &iap.WebBackendServiceIamBindingArgs{
/// Project:           pulumi.Any(_default.Project),
/// WebBackendService: pulumi.Any(_default.Name),
/// Role:              pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.WebBackendServiceIamBindingConditionArgs{
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
/// import com.pulumi.gcp.iap.WebBackendServiceIamBinding;
/// import com.pulumi.gcp.iap.WebBackendServiceIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.WebBackendServiceIamBindingConditionArgs;
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
/// var binding = new WebBackendServiceIamBinding("binding", WebBackendServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .webBackendService(default_.name())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(WebBackendServiceIamBindingConditionArgs.builder()
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
/// type: gcp:iap:WebBackendServiceIamBinding
/// properties:
/// project: ${default.project}
/// webBackendService: ${default.name}
/// role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebBackendServiceIamMember
/// " pulumi-lang-dotnet=" gcp.iap.WebBackendServiceIamMember
/// " pulumi-lang-go=" iap.WebBackendServiceIamMember
/// " pulumi-lang-python=" iap.WebBackendServiceIamMember
/// " pulumi-lang-yaml=" gcp.iap.WebBackendServiceIamMember
/// " pulumi-lang-java=" gcp.iap.WebBackendServiceIamMember
/// "> gcp.iap.WebBackendServiceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.WebBackendServiceIamMember("member", {
/// project: _default.project,
/// webBackendService: _default.name,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.WebBackendServiceIamMember("member",
/// project=default["project"],
/// web_backend_service=default["name"],
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
/// var member = new Gcp.Iap.WebBackendServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// WebBackendService = @default.Name,
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
/// _, err := iap.NewWebBackendServiceIamMember(ctx, "member", &iap.WebBackendServiceIamMemberArgs{
/// Project:           pulumi.Any(_default.Project),
/// WebBackendService: pulumi.Any(_default.Name),
/// Role:              pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:            pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.iap.WebBackendServiceIamMember;
/// import com.pulumi.gcp.iap.WebBackendServiceIamMemberArgs;
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
/// var member = new WebBackendServiceIamMember("member", WebBackendServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .webBackendService(default_.name())
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
/// type: gcp:iap:WebBackendServiceIamMember
/// properties:
/// project: ${default.project}
/// webBackendService: ${default.name}
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
/// const member = new gcp.iap.WebBackendServiceIamMember("member", {
/// project: _default.project,
/// webBackendService: _default.name,
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
/// member = gcp.iap.WebBackendServiceIamMember("member",
/// project=default["project"],
/// web_backend_service=default["name"],
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
/// var member = new Gcp.Iap.WebBackendServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// WebBackendService = @default.Name,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.WebBackendServiceIamMemberConditionArgs
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
/// _, err := iap.NewWebBackendServiceIamMember(ctx, "member", &iap.WebBackendServiceIamMemberArgs{
/// Project:           pulumi.Any(_default.Project),
/// WebBackendService: pulumi.Any(_default.Name),
/// Role:              pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:            pulumi.String("user:jane@example.com"),
/// Condition: &iap.WebBackendServiceIamMemberConditionArgs{
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
/// import com.pulumi.gcp.iap.WebBackendServiceIamMember;
/// import com.pulumi.gcp.iap.WebBackendServiceIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.WebBackendServiceIamMemberConditionArgs;
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
/// var member = new WebBackendServiceIamMember("member", WebBackendServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .webBackendService(default_.name())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(WebBackendServiceIamMemberConditionArgs.builder()
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
/// type: gcp:iap:WebBackendServiceIamMember
/// properties:
/// project: ${default.project}
/// webBackendService: ${default.name}
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
/// # IAM policy for Identity-Aware Proxy WebBackendService
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebBackendService. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-go="`iap.WebBackendServiceIamPolicy`" pulumi-lang-python="`iap.WebBackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamPolicy`">`gcp.iap.WebBackendServiceIamPolicy`</span>: Authoritative. Sets the IAM policy for the webbackendservice and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-go="`iap.WebBackendServiceIamBinding`" pulumi-lang-python="`iap.WebBackendServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamBinding`">`gcp.iap.WebBackendServiceIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webbackendservice are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-go="`iap.WebBackendServiceIamMember`" pulumi-lang-python="`iap.WebBackendServiceIamMember`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamMember`">`gcp.iap.WebBackendServiceIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webbackendservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-go="`iap.WebBackendServiceIamPolicy`" pulumi-lang-python="`iap.WebBackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamPolicy`">`gcp.iap.WebBackendServiceIamPolicy`</span>: Retrieves the IAM policy for the webbackendservice
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-go="`iap.WebBackendServiceIamPolicy`" pulumi-lang-python="`iap.WebBackendServiceIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamPolicy`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamPolicy`">`gcp.iap.WebBackendServiceIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-go="`iap.WebBackendServiceIamBinding`" pulumi-lang-python="`iap.WebBackendServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamBinding`">`gcp.iap.WebBackendServiceIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-go="`iap.WebBackendServiceIamMember`" pulumi-lang-python="`iap.WebBackendServiceIamMember`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamMember`">`gcp.iap.WebBackendServiceIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-go="`iap.WebBackendServiceIamBinding`" pulumi-lang-python="`iap.WebBackendServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamBinding`">`gcp.iap.WebBackendServiceIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-go="`iap.WebBackendServiceIamMember`" pulumi-lang-python="`iap.WebBackendServiceIamMember`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamMember`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamMember`">`gcp.iap.WebBackendServiceIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebBackendServiceIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.WebBackendServiceIamPolicy
/// " pulumi-lang-go=" iap.WebBackendServiceIamPolicy
/// " pulumi-lang-python=" iap.WebBackendServiceIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.WebBackendServiceIamPolicy
/// " pulumi-lang-java=" gcp.iap.WebBackendServiceIamPolicy
/// "> gcp.iap.WebBackendServiceIamPolicy
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
/// const policy = new gcp.iap.WebBackendServiceIamPolicy("policy", {
/// project: _default.project,
/// webBackendService: _default.name,
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
/// policy = gcp.iap.WebBackendServiceIamPolicy("policy",
/// project=default["project"],
/// web_backend_service=default["name"],
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
/// var policy = new Gcp.Iap.WebBackendServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// WebBackendService = @default.Name,
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
/// _, err = iap.NewWebBackendServiceIamPolicy(ctx, "policy", &iap.WebBackendServiceIamPolicyArgs{
/// Project:           pulumi.Any(_default.Project),
/// WebBackendService: pulumi.Any(_default.Name),
/// PolicyData:        pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.iap.WebBackendServiceIamPolicy;
/// import com.pulumi.gcp.iap.WebBackendServiceIamPolicyArgs;
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
/// var policy = new WebBackendServiceIamPolicy("policy", WebBackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .webBackendService(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:WebBackendServiceIamPolicy
/// properties:
/// project: ${default.project}
/// webBackendService: ${default.name}
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
/// const policy = new gcp.iap.WebBackendServiceIamPolicy("policy", {
/// project: _default.project,
/// webBackendService: _default.name,
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
/// policy = gcp.iap.WebBackendServiceIamPolicy("policy",
/// project=default["project"],
/// web_backend_service=default["name"],
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
/// var policy = new Gcp.Iap.WebBackendServiceIamPolicy("policy", new()
/// {
/// Project = @default.Project,
/// WebBackendService = @default.Name,
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
/// _, err = iap.NewWebBackendServiceIamPolicy(ctx, "policy", &iap.WebBackendServiceIamPolicyArgs{
/// Project:           pulumi.Any(_default.Project),
/// WebBackendService: pulumi.Any(_default.Name),
/// PolicyData:        pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.iap.WebBackendServiceIamPolicy;
/// import com.pulumi.gcp.iap.WebBackendServiceIamPolicyArgs;
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
/// var policy = new WebBackendServiceIamPolicy("policy", WebBackendServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .webBackendService(default_.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:WebBackendServiceIamPolicy
/// properties:
/// project: ${default.project}
/// webBackendService: ${default.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebBackendServiceIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.WebBackendServiceIamBinding
/// " pulumi-lang-go=" iap.WebBackendServiceIamBinding
/// " pulumi-lang-python=" iap.WebBackendServiceIamBinding
/// " pulumi-lang-yaml=" gcp.iap.WebBackendServiceIamBinding
/// " pulumi-lang-java=" gcp.iap.WebBackendServiceIamBinding
/// "> gcp.iap.WebBackendServiceIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.WebBackendServiceIamBinding("binding", {
/// project: _default.project,
/// webBackendService: _default.name,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.WebBackendServiceIamBinding("binding",
/// project=default["project"],
/// web_backend_service=default["name"],
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
/// var binding = new Gcp.Iap.WebBackendServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// WebBackendService = @default.Name,
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
/// _, err := iap.NewWebBackendServiceIamBinding(ctx, "binding", &iap.WebBackendServiceIamBindingArgs{
/// Project:           pulumi.Any(_default.Project),
/// WebBackendService: pulumi.Any(_default.Name),
/// Role:              pulumi.String("roles/iap.httpsResourceAccessor"),
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
/// import com.pulumi.gcp.iap.WebBackendServiceIamBinding;
/// import com.pulumi.gcp.iap.WebBackendServiceIamBindingArgs;
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
/// var binding = new WebBackendServiceIamBinding("binding", WebBackendServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .webBackendService(default_.name())
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
/// type: gcp:iap:WebBackendServiceIamBinding
/// properties:
/// project: ${default.project}
/// webBackendService: ${default.name}
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
/// const binding = new gcp.iap.WebBackendServiceIamBinding("binding", {
/// project: _default.project,
/// webBackendService: _default.name,
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
/// binding = gcp.iap.WebBackendServiceIamBinding("binding",
/// project=default["project"],
/// web_backend_service=default["name"],
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
/// var binding = new Gcp.Iap.WebBackendServiceIamBinding("binding", new()
/// {
/// Project = @default.Project,
/// WebBackendService = @default.Name,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.WebBackendServiceIamBindingConditionArgs
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
/// _, err := iap.NewWebBackendServiceIamBinding(ctx, "binding", &iap.WebBackendServiceIamBindingArgs{
/// Project:           pulumi.Any(_default.Project),
/// WebBackendService: pulumi.Any(_default.Name),
/// Role:              pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.WebBackendServiceIamBindingConditionArgs{
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
/// import com.pulumi.gcp.iap.WebBackendServiceIamBinding;
/// import com.pulumi.gcp.iap.WebBackendServiceIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.WebBackendServiceIamBindingConditionArgs;
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
/// var binding = new WebBackendServiceIamBinding("binding", WebBackendServiceIamBindingArgs.builder()
/// .project(default_.project())
/// .webBackendService(default_.name())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(WebBackendServiceIamBindingConditionArgs.builder()
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
/// type: gcp:iap:WebBackendServiceIamBinding
/// properties:
/// project: ${default.project}
/// webBackendService: ${default.name}
/// role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebBackendServiceIamMember
/// " pulumi-lang-dotnet=" gcp.iap.WebBackendServiceIamMember
/// " pulumi-lang-go=" iap.WebBackendServiceIamMember
/// " pulumi-lang-python=" iap.WebBackendServiceIamMember
/// " pulumi-lang-yaml=" gcp.iap.WebBackendServiceIamMember
/// " pulumi-lang-java=" gcp.iap.WebBackendServiceIamMember
/// "> gcp.iap.WebBackendServiceIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.WebBackendServiceIamMember("member", {
/// project: _default.project,
/// webBackendService: _default.name,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.WebBackendServiceIamMember("member",
/// project=default["project"],
/// web_backend_service=default["name"],
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
/// var member = new Gcp.Iap.WebBackendServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// WebBackendService = @default.Name,
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
/// _, err := iap.NewWebBackendServiceIamMember(ctx, "member", &iap.WebBackendServiceIamMemberArgs{
/// Project:           pulumi.Any(_default.Project),
/// WebBackendService: pulumi.Any(_default.Name),
/// Role:              pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:            pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.iap.WebBackendServiceIamMember;
/// import com.pulumi.gcp.iap.WebBackendServiceIamMemberArgs;
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
/// var member = new WebBackendServiceIamMember("member", WebBackendServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .webBackendService(default_.name())
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
/// type: gcp:iap:WebBackendServiceIamMember
/// properties:
/// project: ${default.project}
/// webBackendService: ${default.name}
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
/// const member = new gcp.iap.WebBackendServiceIamMember("member", {
/// project: _default.project,
/// webBackendService: _default.name,
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
/// member = gcp.iap.WebBackendServiceIamMember("member",
/// project=default["project"],
/// web_backend_service=default["name"],
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
/// var member = new Gcp.Iap.WebBackendServiceIamMember("member", new()
/// {
/// Project = @default.Project,
/// WebBackendService = @default.Name,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.WebBackendServiceIamMemberConditionArgs
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
/// _, err := iap.NewWebBackendServiceIamMember(ctx, "member", &iap.WebBackendServiceIamMemberArgs{
/// Project:           pulumi.Any(_default.Project),
/// WebBackendService: pulumi.Any(_default.Name),
/// Role:              pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:            pulumi.String("user:jane@example.com"),
/// Condition: &iap.WebBackendServiceIamMemberConditionArgs{
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
/// import com.pulumi.gcp.iap.WebBackendServiceIamMember;
/// import com.pulumi.gcp.iap.WebBackendServiceIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.WebBackendServiceIamMemberConditionArgs;
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
/// var member = new WebBackendServiceIamMember("member", WebBackendServiceIamMemberArgs.builder()
/// .project(default_.project())
/// .webBackendService(default_.name())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(WebBackendServiceIamMemberConditionArgs.builder()
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
/// type: gcp:iap:WebBackendServiceIamMember
/// properties:
/// project: ${default.project}
/// webBackendService: ${default.name}
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
/// * projects/{{project}}/iap_web/compute/services/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy webbackendservice IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webBackendServiceIamMember:WebBackendServiceIamMember editor "projects/{{project}}/iap_web/compute/services/{{web_backend_service}} roles/iap.httpsResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webBackendServiceIamMember:WebBackendServiceIamMember editor "projects/{{project}}/iap_web/compute/services/{{web_backend_service}} roles/iap.httpsResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webBackendServiceIamMember:WebBackendServiceIamMember editor projects/{{project}}/iap_web/compute/services/{{web_backend_service}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WebBackendServiceIamMember extends CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final Output<WebBackendServiceIamMemberCondition?> condition;

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
  /// <span pulumi-lang-nodejs="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-go="`iap.WebBackendServiceIamBinding`" pulumi-lang-python="`iap.WebBackendServiceIamBinding`" pulumi-lang-yaml="`gcp.iap.WebBackendServiceIamBinding`" pulumi-lang-java="`gcp.iap.WebBackendServiceIamBinding`">`gcp.iap.WebBackendServiceIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> webBackendService;

  WebBackendServiceIamMember(
    String name, {
    WebBackendServiceIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iap/webBackendServiceIamMember:WebBackendServiceIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        Output.createUnknown<WebBackendServiceIamMemberCondition?>();
    this.etag = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
    this.webBackendService = Output.createUnknown<String>();
  }
}
