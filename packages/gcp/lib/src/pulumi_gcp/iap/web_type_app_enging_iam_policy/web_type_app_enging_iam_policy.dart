import 'package:pulumi/pulumi.dart';
import 'web_type_app_enging_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebTypeAppEngine. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-go="`iap.WebTypeAppEngingIamPolicy`" pulumi-lang-python="`iap.WebTypeAppEngingIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamPolicy`">`gcp.iap.WebTypeAppEngingIamPolicy`</span>: Authoritative. Sets the IAM policy for the webtypeappengine and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-go="`iap.WebTypeAppEngingIamBinding`" pulumi-lang-python="`iap.WebTypeAppEngingIamBinding`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamBinding`">`gcp.iap.WebTypeAppEngingIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webtypeappengine are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-go="`iap.WebTypeAppEngingIamMember`" pulumi-lang-python="`iap.WebTypeAppEngingIamMember`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamMember`">`gcp.iap.WebTypeAppEngingIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webtypeappengine are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-go="`iap.WebTypeAppEngingIamPolicy`" pulumi-lang-python="`iap.WebTypeAppEngingIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamPolicy`">`gcp.iap.WebTypeAppEngingIamPolicy`</span>: Retrieves the IAM policy for the webtypeappengine
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-go="`iap.WebTypeAppEngingIamPolicy`" pulumi-lang-python="`iap.WebTypeAppEngingIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamPolicy`">`gcp.iap.WebTypeAppEngingIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-go="`iap.WebTypeAppEngingIamBinding`" pulumi-lang-python="`iap.WebTypeAppEngingIamBinding`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamBinding`">`gcp.iap.WebTypeAppEngingIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-go="`iap.WebTypeAppEngingIamMember`" pulumi-lang-python="`iap.WebTypeAppEngingIamMember`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamMember`">`gcp.iap.WebTypeAppEngingIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-go="`iap.WebTypeAppEngingIamBinding`" pulumi-lang-python="`iap.WebTypeAppEngingIamBinding`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamBinding`">`gcp.iap.WebTypeAppEngingIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-go="`iap.WebTypeAppEngingIamMember`" pulumi-lang-python="`iap.WebTypeAppEngingIamMember`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamMember`">`gcp.iap.WebTypeAppEngingIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebTypeAppEngingIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.WebTypeAppEngingIamPolicy
/// " pulumi-lang-go=" iap.WebTypeAppEngingIamPolicy
/// " pulumi-lang-python=" iap.WebTypeAppEngingIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.WebTypeAppEngingIamPolicy
/// " pulumi-lang-java=" gcp.iap.WebTypeAppEngingIamPolicy
/// "> gcp.iap.WebTypeAppEngingIamPolicy
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
/// const policy = new gcp.iap.WebTypeAppEngingIamPolicy("policy", {
/// project: app.project,
/// appId: app.appId,
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
/// policy = gcp.iap.WebTypeAppEngingIamPolicy("policy",
/// project=app["project"],
/// app_id=app["appId"],
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
/// var policy = new Gcp.Iap.WebTypeAppEngingIamPolicy("policy", new()
/// {
/// Project = app.Project,
/// AppId = app.AppId,
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
/// _, err = iap.NewWebTypeAppEngingIamPolicy(ctx, "policy", &iap.WebTypeAppEngingIamPolicyArgs{
/// Project:    pulumi.Any(app.Project),
/// AppId:      pulumi.Any(app.AppId),
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
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamPolicy;
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamPolicyArgs;
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
/// var policy = new WebTypeAppEngingIamPolicy("policy", WebTypeAppEngingIamPolicyArgs.builder()
/// .project(app.project())
/// .appId(app.appId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:WebTypeAppEngingIamPolicy
/// properties:
/// project: ${app.project}
/// appId: ${app.appId}
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
/// const policy = new gcp.iap.WebTypeAppEngingIamPolicy("policy", {
/// project: app.project,
/// appId: app.appId,
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
/// policy = gcp.iap.WebTypeAppEngingIamPolicy("policy",
/// project=app["project"],
/// app_id=app["appId"],
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
/// var policy = new Gcp.Iap.WebTypeAppEngingIamPolicy("policy", new()
/// {
/// Project = app.Project,
/// AppId = app.AppId,
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
/// _, err = iap.NewWebTypeAppEngingIamPolicy(ctx, "policy", &iap.WebTypeAppEngingIamPolicyArgs{
/// Project:    pulumi.Any(app.Project),
/// AppId:      pulumi.Any(app.AppId),
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
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamPolicy;
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamPolicyArgs;
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
/// var policy = new WebTypeAppEngingIamPolicy("policy", WebTypeAppEngingIamPolicyArgs.builder()
/// .project(app.project())
/// .appId(app.appId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:WebTypeAppEngingIamPolicy
/// properties:
/// project: ${app.project}
/// appId: ${app.appId}
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
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebTypeAppEngingIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.WebTypeAppEngingIamBinding
/// " pulumi-lang-go=" iap.WebTypeAppEngingIamBinding
/// " pulumi-lang-python=" iap.WebTypeAppEngingIamBinding
/// " pulumi-lang-yaml=" gcp.iap.WebTypeAppEngingIamBinding
/// " pulumi-lang-java=" gcp.iap.WebTypeAppEngingIamBinding
/// "> gcp.iap.WebTypeAppEngingIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.WebTypeAppEngingIamBinding("binding", {
/// project: app.project,
/// appId: app.appId,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.WebTypeAppEngingIamBinding("binding",
/// project=app["project"],
/// app_id=app["appId"],
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
/// var binding = new Gcp.Iap.WebTypeAppEngingIamBinding("binding", new()
/// {
/// Project = app.Project,
/// AppId = app.AppId,
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
/// _, err := iap.NewWebTypeAppEngingIamBinding(ctx, "binding", &iap.WebTypeAppEngingIamBindingArgs{
/// Project: pulumi.Any(app.Project),
/// AppId:   pulumi.Any(app.AppId),
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
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamBinding;
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamBindingArgs;
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
/// var binding = new WebTypeAppEngingIamBinding("binding", WebTypeAppEngingIamBindingArgs.builder()
/// .project(app.project())
/// .appId(app.appId())
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
/// type: gcp:iap:WebTypeAppEngingIamBinding
/// properties:
/// project: ${app.project}
/// appId: ${app.appId}
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
/// const binding = new gcp.iap.WebTypeAppEngingIamBinding("binding", {
/// project: app.project,
/// appId: app.appId,
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
/// binding = gcp.iap.WebTypeAppEngingIamBinding("binding",
/// project=app["project"],
/// app_id=app["appId"],
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
/// var binding = new Gcp.Iap.WebTypeAppEngingIamBinding("binding", new()
/// {
/// Project = app.Project,
/// AppId = app.AppId,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.WebTypeAppEngingIamBindingConditionArgs
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
/// _, err := iap.NewWebTypeAppEngingIamBinding(ctx, "binding", &iap.WebTypeAppEngingIamBindingArgs{
/// Project: pulumi.Any(app.Project),
/// AppId:   pulumi.Any(app.AppId),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.WebTypeAppEngingIamBindingConditionArgs{
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
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamBinding;
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.WebTypeAppEngingIamBindingConditionArgs;
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
/// var binding = new WebTypeAppEngingIamBinding("binding", WebTypeAppEngingIamBindingArgs.builder()
/// .project(app.project())
/// .appId(app.appId())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(WebTypeAppEngingIamBindingConditionArgs.builder()
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
/// type: gcp:iap:WebTypeAppEngingIamBinding
/// properties:
/// project: ${app.project}
/// appId: ${app.appId}
/// role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebTypeAppEngingIamMember
/// " pulumi-lang-dotnet=" gcp.iap.WebTypeAppEngingIamMember
/// " pulumi-lang-go=" iap.WebTypeAppEngingIamMember
/// " pulumi-lang-python=" iap.WebTypeAppEngingIamMember
/// " pulumi-lang-yaml=" gcp.iap.WebTypeAppEngingIamMember
/// " pulumi-lang-java=" gcp.iap.WebTypeAppEngingIamMember
/// "> gcp.iap.WebTypeAppEngingIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.WebTypeAppEngingIamMember("member", {
/// project: app.project,
/// appId: app.appId,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.WebTypeAppEngingIamMember("member",
/// project=app["project"],
/// app_id=app["appId"],
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
/// var member = new Gcp.Iap.WebTypeAppEngingIamMember("member", new()
/// {
/// Project = app.Project,
/// AppId = app.AppId,
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
/// _, err := iap.NewWebTypeAppEngingIamMember(ctx, "member", &iap.WebTypeAppEngingIamMemberArgs{
/// Project: pulumi.Any(app.Project),
/// AppId:   pulumi.Any(app.AppId),
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
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamMember;
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamMemberArgs;
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
/// var member = new WebTypeAppEngingIamMember("member", WebTypeAppEngingIamMemberArgs.builder()
/// .project(app.project())
/// .appId(app.appId())
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
/// type: gcp:iap:WebTypeAppEngingIamMember
/// properties:
/// project: ${app.project}
/// appId: ${app.appId}
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
/// const member = new gcp.iap.WebTypeAppEngingIamMember("member", {
/// project: app.project,
/// appId: app.appId,
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
/// member = gcp.iap.WebTypeAppEngingIamMember("member",
/// project=app["project"],
/// app_id=app["appId"],
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
/// var member = new Gcp.Iap.WebTypeAppEngingIamMember("member", new()
/// {
/// Project = app.Project,
/// AppId = app.AppId,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.WebTypeAppEngingIamMemberConditionArgs
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
/// _, err := iap.NewWebTypeAppEngingIamMember(ctx, "member", &iap.WebTypeAppEngingIamMemberArgs{
/// Project: pulumi.Any(app.Project),
/// AppId:   pulumi.Any(app.AppId),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &iap.WebTypeAppEngingIamMemberConditionArgs{
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
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamMember;
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.WebTypeAppEngingIamMemberConditionArgs;
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
/// var member = new WebTypeAppEngingIamMember("member", WebTypeAppEngingIamMemberArgs.builder()
/// .project(app.project())
/// .appId(app.appId())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(WebTypeAppEngingIamMemberConditionArgs.builder()
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
/// type: gcp:iap:WebTypeAppEngingIamMember
/// properties:
/// project: ${app.project}
/// appId: ${app.appId}
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
/// # IAM policy for Identity-Aware Proxy WebTypeAppEngine
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy WebTypeAppEngine. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-go="`iap.WebTypeAppEngingIamPolicy`" pulumi-lang-python="`iap.WebTypeAppEngingIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamPolicy`">`gcp.iap.WebTypeAppEngingIamPolicy`</span>: Authoritative. Sets the IAM policy for the webtypeappengine and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-go="`iap.WebTypeAppEngingIamBinding`" pulumi-lang-python="`iap.WebTypeAppEngingIamBinding`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamBinding`">`gcp.iap.WebTypeAppEngingIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the webtypeappengine are preserved.
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-go="`iap.WebTypeAppEngingIamMember`" pulumi-lang-python="`iap.WebTypeAppEngingIamMember`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamMember`">`gcp.iap.WebTypeAppEngingIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the webtypeappengine are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-go="`iap.WebTypeAppEngingIamPolicy`" pulumi-lang-python="`iap.WebTypeAppEngingIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamPolicy`">`gcp.iap.WebTypeAppEngingIamPolicy`</span>: Retrieves the IAM policy for the webtypeappengine
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-go="`iap.WebTypeAppEngingIamPolicy`" pulumi-lang-python="`iap.WebTypeAppEngingIamPolicy`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamPolicy`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamPolicy`">`gcp.iap.WebTypeAppEngingIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-go="`iap.WebTypeAppEngingIamBinding`" pulumi-lang-python="`iap.WebTypeAppEngingIamBinding`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamBinding`">`gcp.iap.WebTypeAppEngingIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-go="`iap.WebTypeAppEngingIamMember`" pulumi-lang-python="`iap.WebTypeAppEngingIamMember`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamMember`">`gcp.iap.WebTypeAppEngingIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-go="`iap.WebTypeAppEngingIamBinding`" pulumi-lang-python="`iap.WebTypeAppEngingIamBinding`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamBinding`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamBinding`">`gcp.iap.WebTypeAppEngingIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-dotnet="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-go="`iap.WebTypeAppEngingIamMember`" pulumi-lang-python="`iap.WebTypeAppEngingIamMember`" pulumi-lang-yaml="`gcp.iap.WebTypeAppEngingIamMember`" pulumi-lang-java="`gcp.iap.WebTypeAppEngingIamMember`">`gcp.iap.WebTypeAppEngingIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebTypeAppEngingIamPolicy
/// " pulumi-lang-dotnet=" gcp.iap.WebTypeAppEngingIamPolicy
/// " pulumi-lang-go=" iap.WebTypeAppEngingIamPolicy
/// " pulumi-lang-python=" iap.WebTypeAppEngingIamPolicy
/// " pulumi-lang-yaml=" gcp.iap.WebTypeAppEngingIamPolicy
/// " pulumi-lang-java=" gcp.iap.WebTypeAppEngingIamPolicy
/// "> gcp.iap.WebTypeAppEngingIamPolicy
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
/// const policy = new gcp.iap.WebTypeAppEngingIamPolicy("policy", {
/// project: app.project,
/// appId: app.appId,
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
/// policy = gcp.iap.WebTypeAppEngingIamPolicy("policy",
/// project=app["project"],
/// app_id=app["appId"],
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
/// var policy = new Gcp.Iap.WebTypeAppEngingIamPolicy("policy", new()
/// {
/// Project = app.Project,
/// AppId = app.AppId,
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
/// _, err = iap.NewWebTypeAppEngingIamPolicy(ctx, "policy", &iap.WebTypeAppEngingIamPolicyArgs{
/// Project:    pulumi.Any(app.Project),
/// AppId:      pulumi.Any(app.AppId),
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
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamPolicy;
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamPolicyArgs;
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
/// var policy = new WebTypeAppEngingIamPolicy("policy", WebTypeAppEngingIamPolicyArgs.builder()
/// .project(app.project())
/// .appId(app.appId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:WebTypeAppEngingIamPolicy
/// properties:
/// project: ${app.project}
/// appId: ${app.appId}
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
/// const policy = new gcp.iap.WebTypeAppEngingIamPolicy("policy", {
/// project: app.project,
/// appId: app.appId,
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
/// policy = gcp.iap.WebTypeAppEngingIamPolicy("policy",
/// project=app["project"],
/// app_id=app["appId"],
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
/// var policy = new Gcp.Iap.WebTypeAppEngingIamPolicy("policy", new()
/// {
/// Project = app.Project,
/// AppId = app.AppId,
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
/// _, err = iap.NewWebTypeAppEngingIamPolicy(ctx, "policy", &iap.WebTypeAppEngingIamPolicyArgs{
/// Project:    pulumi.Any(app.Project),
/// AppId:      pulumi.Any(app.AppId),
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
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamPolicy;
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamPolicyArgs;
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
/// var policy = new WebTypeAppEngingIamPolicy("policy", WebTypeAppEngingIamPolicyArgs.builder()
/// .project(app.project())
/// .appId(app.appId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:iap:WebTypeAppEngingIamPolicy
/// properties:
/// project: ${app.project}
/// appId: ${app.appId}
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
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebTypeAppEngingIamBinding
/// " pulumi-lang-dotnet=" gcp.iap.WebTypeAppEngingIamBinding
/// " pulumi-lang-go=" iap.WebTypeAppEngingIamBinding
/// " pulumi-lang-python=" iap.WebTypeAppEngingIamBinding
/// " pulumi-lang-yaml=" gcp.iap.WebTypeAppEngingIamBinding
/// " pulumi-lang-java=" gcp.iap.WebTypeAppEngingIamBinding
/// "> gcp.iap.WebTypeAppEngingIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.iap.WebTypeAppEngingIamBinding("binding", {
/// project: app.project,
/// appId: app.appId,
/// role: "roles/iap.httpsResourceAccessor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.iap.WebTypeAppEngingIamBinding("binding",
/// project=app["project"],
/// app_id=app["appId"],
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
/// var binding = new Gcp.Iap.WebTypeAppEngingIamBinding("binding", new()
/// {
/// Project = app.Project,
/// AppId = app.AppId,
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
/// _, err := iap.NewWebTypeAppEngingIamBinding(ctx, "binding", &iap.WebTypeAppEngingIamBindingArgs{
/// Project: pulumi.Any(app.Project),
/// AppId:   pulumi.Any(app.AppId),
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
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamBinding;
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamBindingArgs;
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
/// var binding = new WebTypeAppEngingIamBinding("binding", WebTypeAppEngingIamBindingArgs.builder()
/// .project(app.project())
/// .appId(app.appId())
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
/// type: gcp:iap:WebTypeAppEngingIamBinding
/// properties:
/// project: ${app.project}
/// appId: ${app.appId}
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
/// const binding = new gcp.iap.WebTypeAppEngingIamBinding("binding", {
/// project: app.project,
/// appId: app.appId,
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
/// binding = gcp.iap.WebTypeAppEngingIamBinding("binding",
/// project=app["project"],
/// app_id=app["appId"],
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
/// var binding = new Gcp.Iap.WebTypeAppEngingIamBinding("binding", new()
/// {
/// Project = app.Project,
/// AppId = app.AppId,
/// Role = "roles/iap.httpsResourceAccessor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.Iap.Inputs.WebTypeAppEngingIamBindingConditionArgs
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
/// _, err := iap.NewWebTypeAppEngingIamBinding(ctx, "binding", &iap.WebTypeAppEngingIamBindingArgs{
/// Project: pulumi.Any(app.Project),
/// AppId:   pulumi.Any(app.AppId),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &iap.WebTypeAppEngingIamBindingConditionArgs{
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
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamBinding;
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamBindingArgs;
/// import com.pulumi.gcp.iap.inputs.WebTypeAppEngingIamBindingConditionArgs;
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
/// var binding = new WebTypeAppEngingIamBinding("binding", WebTypeAppEngingIamBindingArgs.builder()
/// .project(app.project())
/// .appId(app.appId())
/// .role("roles/iap.httpsResourceAccessor")
/// .members("user:jane@example.com")
/// .condition(WebTypeAppEngingIamBindingConditionArgs.builder()
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
/// type: gcp:iap:WebTypeAppEngingIamBinding
/// properties:
/// project: ${app.project}
/// appId: ${app.appId}
/// role: roles/iap.httpsResourceAccessor
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.iap.WebTypeAppEngingIamMember
/// " pulumi-lang-dotnet=" gcp.iap.WebTypeAppEngingIamMember
/// " pulumi-lang-go=" iap.WebTypeAppEngingIamMember
/// " pulumi-lang-python=" iap.WebTypeAppEngingIamMember
/// " pulumi-lang-yaml=" gcp.iap.WebTypeAppEngingIamMember
/// " pulumi-lang-java=" gcp.iap.WebTypeAppEngingIamMember
/// "> gcp.iap.WebTypeAppEngingIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.iap.WebTypeAppEngingIamMember("member", {
/// project: app.project,
/// appId: app.appId,
/// role: "roles/iap.httpsResourceAccessor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.iap.WebTypeAppEngingIamMember("member",
/// project=app["project"],
/// app_id=app["appId"],
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
/// var member = new Gcp.Iap.WebTypeAppEngingIamMember("member", new()
/// {
/// Project = app.Project,
/// AppId = app.AppId,
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
/// _, err := iap.NewWebTypeAppEngingIamMember(ctx, "member", &iap.WebTypeAppEngingIamMemberArgs{
/// Project: pulumi.Any(app.Project),
/// AppId:   pulumi.Any(app.AppId),
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
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamMember;
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamMemberArgs;
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
/// var member = new WebTypeAppEngingIamMember("member", WebTypeAppEngingIamMemberArgs.builder()
/// .project(app.project())
/// .appId(app.appId())
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
/// type: gcp:iap:WebTypeAppEngingIamMember
/// properties:
/// project: ${app.project}
/// appId: ${app.appId}
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
/// const member = new gcp.iap.WebTypeAppEngingIamMember("member", {
/// project: app.project,
/// appId: app.appId,
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
/// member = gcp.iap.WebTypeAppEngingIamMember("member",
/// project=app["project"],
/// app_id=app["appId"],
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
/// var member = new Gcp.Iap.WebTypeAppEngingIamMember("member", new()
/// {
/// Project = app.Project,
/// AppId = app.AppId,
/// Role = "roles/iap.httpsResourceAccessor",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.Iap.Inputs.WebTypeAppEngingIamMemberConditionArgs
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
/// _, err := iap.NewWebTypeAppEngingIamMember(ctx, "member", &iap.WebTypeAppEngingIamMemberArgs{
/// Project: pulumi.Any(app.Project),
/// AppId:   pulumi.Any(app.AppId),
/// Role:    pulumi.String("roles/iap.httpsResourceAccessor"),
/// Member:  pulumi.String("user:jane@example.com"),
/// Condition: &iap.WebTypeAppEngingIamMemberConditionArgs{
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
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamMember;
/// import com.pulumi.gcp.iap.WebTypeAppEngingIamMemberArgs;
/// import com.pulumi.gcp.iap.inputs.WebTypeAppEngingIamMemberConditionArgs;
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
/// var member = new WebTypeAppEngingIamMember("member", WebTypeAppEngingIamMemberArgs.builder()
/// .project(app.project())
/// .appId(app.appId())
/// .role("roles/iap.httpsResourceAccessor")
/// .member("user:jane@example.com")
/// .condition(WebTypeAppEngingIamMemberConditionArgs.builder()
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
/// type: gcp:iap:WebTypeAppEngingIamMember
/// properties:
/// project: ${app.project}
/// appId: ${app.appId}
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
/// * projects/{{project}}/iap_web/appengine-{{appId}}
///
/// * {{project}}/{{appId}}
///
/// * {{appId}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy webtypeappengine IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webTypeAppEngingIamPolicy:WebTypeAppEngingIamPolicy editor "projects/{{project}}/iap_web/appengine-{{appId}} roles/iap.httpsResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webTypeAppEngingIamPolicy:WebTypeAppEngingIamPolicy editor "projects/{{project}}/iap_web/appengine-{{appId}} roles/iap.httpsResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/webTypeAppEngingIamPolicy:WebTypeAppEngingIamPolicy editor projects/{{project}}/iap_web/appengine-{{appId}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WebTypeAppEngingIamPolicy extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> appId;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  WebTypeAppEngingIamPolicy(
    String name, {
    WebTypeAppEngingIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iap/webTypeAppEngingIamPolicy:WebTypeAppEngingIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
