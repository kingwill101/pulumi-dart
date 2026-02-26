import 'package:pulumi/pulumi.dart';
import '../account_iam_member_condition/account_iam_member_condition.dart';
import 'account_iam_member_args.dart';

/// Three different resources help you manage IAM policies on billing accounts. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.billing.AccountIamPolicy`" pulumi-lang-dotnet="`gcp.billing.AccountIamPolicy`" pulumi-lang-go="`billing.AccountIamPolicy`" pulumi-lang-python="`billing.AccountIamPolicy`" pulumi-lang-yaml="`gcp.billing.AccountIamPolicy`" pulumi-lang-java="`gcp.billing.AccountIamPolicy`">`gcp.billing.AccountIamPolicy`</span>: Authoritative. Sets the IAM policy for the billing accounts and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.billing.AccountIamBinding`" pulumi-lang-dotnet="`gcp.billing.AccountIamBinding`" pulumi-lang-go="`billing.AccountIamBinding`" pulumi-lang-python="`billing.AccountIamBinding`" pulumi-lang-yaml="`gcp.billing.AccountIamBinding`" pulumi-lang-java="`gcp.billing.AccountIamBinding`">`gcp.billing.AccountIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the table are preserved.
/// * <span pulumi-lang-nodejs="`gcp.billing.AccountIamMember`" pulumi-lang-dotnet="`gcp.billing.AccountIamMember`" pulumi-lang-go="`billing.AccountIamMember`" pulumi-lang-python="`billing.AccountIamMember`" pulumi-lang-yaml="`gcp.billing.AccountIamMember`" pulumi-lang-java="`gcp.billing.AccountIamMember`">`gcp.billing.AccountIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role of the billing accounts are preserved.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.billing.AccountIamPolicy`" pulumi-lang-dotnet="`gcp.billing.AccountIamPolicy`" pulumi-lang-go="`billing.AccountIamPolicy`" pulumi-lang-python="`billing.AccountIamPolicy`" pulumi-lang-yaml="`gcp.billing.AccountIamPolicy`" pulumi-lang-java="`gcp.billing.AccountIamPolicy`">`gcp.billing.AccountIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.billing.AccountIamBinding`" pulumi-lang-dotnet="`gcp.billing.AccountIamBinding`" pulumi-lang-go="`billing.AccountIamBinding`" pulumi-lang-python="`billing.AccountIamBinding`" pulumi-lang-yaml="`gcp.billing.AccountIamBinding`" pulumi-lang-java="`gcp.billing.AccountIamBinding`">`gcp.billing.AccountIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.billing.AccountIamMember`" pulumi-lang-dotnet="`gcp.billing.AccountIamMember`" pulumi-lang-go="`billing.AccountIamMember`" pulumi-lang-python="`billing.AccountIamMember`" pulumi-lang-yaml="`gcp.billing.AccountIamMember`" pulumi-lang-java="`gcp.billing.AccountIamMember`">`gcp.billing.AccountIamMember`</span> or they will fight over what your policy should be. In addition, be careful not to accidentally unset ownership of the billing account as <span pulumi-lang-nodejs="`gcp.billing.AccountIamPolicy`" pulumi-lang-dotnet="`gcp.billing.AccountIamPolicy`" pulumi-lang-go="`billing.AccountIamPolicy`" pulumi-lang-python="`billing.AccountIamPolicy`" pulumi-lang-yaml="`gcp.billing.AccountIamPolicy`" pulumi-lang-java="`gcp.billing.AccountIamPolicy`">`gcp.billing.AccountIamPolicy`</span> replaces the entire policy.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.billing.AccountIamBinding`" pulumi-lang-dotnet="`gcp.billing.AccountIamBinding`" pulumi-lang-go="`billing.AccountIamBinding`" pulumi-lang-python="`billing.AccountIamBinding`" pulumi-lang-yaml="`gcp.billing.AccountIamBinding`" pulumi-lang-java="`gcp.billing.AccountIamBinding`">`gcp.billing.AccountIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.billing.AccountIamMember`" pulumi-lang-dotnet="`gcp.billing.AccountIamMember`" pulumi-lang-go="`billing.AccountIamMember`" pulumi-lang-python="`billing.AccountIamMember`" pulumi-lang-yaml="`gcp.billing.AccountIamMember`" pulumi-lang-java="`gcp.billing.AccountIamMember`">`gcp.billing.AccountIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// ##<span pulumi-lang-nodejs=" gcp.billing.AccountIamPolicy
/// " pulumi-lang-dotnet=" gcp.billing.AccountIamPolicy
/// " pulumi-lang-go=" billing.AccountIamPolicy
/// " pulumi-lang-python=" billing.AccountIamPolicy
/// " pulumi-lang-yaml=" gcp.billing.AccountIamPolicy
/// " pulumi-lang-java=" gcp.billing.AccountIamPolicy
/// "> gcp.billing.AccountIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/billing.viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const editor = new gcp.billing.AccountIamPolicy("editor", {
/// billingAccountId: "00AA00-000AAA-00AA0A",
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/billing.viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.billing.AccountIamPolicy("editor",
/// billing_account_id="00AA00-000AAA-00AA0A",
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
/// Role = "roles/billing.viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var editor = new Gcp.Billing.AccountIamPolicy("editor", new()
/// {
/// BillingAccountId = "00AA00-000AAA-00AA0A",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/billing.viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = billing.NewAccountIamPolicy(ctx, "editor", &billing.AccountIamPolicyArgs{
/// BillingAccountId: pulumi.String("00AA00-000AAA-00AA0A"),
/// PolicyData:       pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.billing.AccountIamPolicy;
/// import com.pulumi.gcp.billing.AccountIamPolicyArgs;
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
/// .role("roles/billing.viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var editor = new AccountIamPolicy("editor", AccountIamPolicyArgs.builder()
/// .billingAccountId("00AA00-000AAA-00AA0A")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:billing:AccountIamPolicy
/// properties:
/// billingAccountId: 00AA00-000AAA-00AA0A
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/billing.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.billing.AccountIamBinding
/// " pulumi-lang-dotnet=" gcp.billing.AccountIamBinding
/// " pulumi-lang-go=" billing.AccountIamBinding
/// " pulumi-lang-python=" billing.AccountIamBinding
/// " pulumi-lang-yaml=" gcp.billing.AccountIamBinding
/// " pulumi-lang-java=" gcp.billing.AccountIamBinding
/// "> gcp.billing.AccountIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.billing.AccountIamBinding("editor", {
/// billingAccountId: "00AA00-000AAA-00AA0A",
/// role: "roles/billing.viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.billing.AccountIamBinding("editor",
/// billing_account_id="00AA00-000AAA-00AA0A",
/// role="roles/billing.viewer",
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
/// var editor = new Gcp.Billing.AccountIamBinding("editor", new()
/// {
/// BillingAccountId = "00AA00-000AAA-00AA0A",
/// Role = "roles/billing.viewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := billing.NewAccountIamBinding(ctx, "editor", &billing.AccountIamBindingArgs{
/// BillingAccountId: pulumi.String("00AA00-000AAA-00AA0A"),
/// Role:             pulumi.String("roles/billing.viewer"),
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
/// import com.pulumi.gcp.billing.AccountIamBinding;
/// import com.pulumi.gcp.billing.AccountIamBindingArgs;
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
/// var editor = new AccountIamBinding("editor", AccountIamBindingArgs.builder()
/// .billingAccountId("00AA00-000AAA-00AA0A")
/// .role("roles/billing.viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:billing:AccountIamBinding
/// properties:
/// billingAccountId: 00AA00-000AAA-00AA0A
/// role: roles/billing.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.billing.AccountIamMember
/// " pulumi-lang-dotnet=" gcp.billing.AccountIamMember
/// " pulumi-lang-go=" billing.AccountIamMember
/// " pulumi-lang-python=" billing.AccountIamMember
/// " pulumi-lang-yaml=" gcp.billing.AccountIamMember
/// " pulumi-lang-java=" gcp.billing.AccountIamMember
/// "> gcp.billing.AccountIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.billing.AccountIamMember("editor", {
/// billingAccountId: "00AA00-000AAA-00AA0A",
/// role: "roles/billing.viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.billing.AccountIamMember("editor",
/// billing_account_id="00AA00-000AAA-00AA0A",
/// role="roles/billing.viewer",
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
/// var editor = new Gcp.Billing.AccountIamMember("editor", new()
/// {
/// BillingAccountId = "00AA00-000AAA-00AA0A",
/// Role = "roles/billing.viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := billing.NewAccountIamMember(ctx, "editor", &billing.AccountIamMemberArgs{
/// BillingAccountId: pulumi.String("00AA00-000AAA-00AA0A"),
/// Role:             pulumi.String("roles/billing.viewer"),
/// Member:           pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.billing.AccountIamMember;
/// import com.pulumi.gcp.billing.AccountIamMemberArgs;
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
/// var editor = new AccountIamMember("editor", AccountIamMemberArgs.builder()
/// .billingAccountId("00AA00-000AAA-00AA0A")
/// .role("roles/billing.viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:billing:AccountIamMember
/// properties:
/// billingAccountId: 00AA00-000AAA-00AA0A
/// role: roles/billing.viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.billing.AccountIamPolicy
/// " pulumi-lang-dotnet=" gcp.billing.AccountIamPolicy
/// " pulumi-lang-go=" billing.AccountIamPolicy
/// " pulumi-lang-python=" billing.AccountIamPolicy
/// " pulumi-lang-yaml=" gcp.billing.AccountIamPolicy
/// " pulumi-lang-java=" gcp.billing.AccountIamPolicy
/// "> gcp.billing.AccountIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/billing.viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const editor = new gcp.billing.AccountIamPolicy("editor", {
/// billingAccountId: "00AA00-000AAA-00AA0A",
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/billing.viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// editor = gcp.billing.AccountIamPolicy("editor",
/// billing_account_id="00AA00-000AAA-00AA0A",
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
/// Role = "roles/billing.viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var editor = new Gcp.Billing.AccountIamPolicy("editor", new()
/// {
/// BillingAccountId = "00AA00-000AAA-00AA0A",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/billing.viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = billing.NewAccountIamPolicy(ctx, "editor", &billing.AccountIamPolicyArgs{
/// BillingAccountId: pulumi.String("00AA00-000AAA-00AA0A"),
/// PolicyData:       pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.billing.AccountIamPolicy;
/// import com.pulumi.gcp.billing.AccountIamPolicyArgs;
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
/// .role("roles/billing.viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var editor = new AccountIamPolicy("editor", AccountIamPolicyArgs.builder()
/// .billingAccountId("00AA00-000AAA-00AA0A")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:billing:AccountIamPolicy
/// properties:
/// billingAccountId: 00AA00-000AAA-00AA0A
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/billing.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.billing.AccountIamBinding
/// " pulumi-lang-dotnet=" gcp.billing.AccountIamBinding
/// " pulumi-lang-go=" billing.AccountIamBinding
/// " pulumi-lang-python=" billing.AccountIamBinding
/// " pulumi-lang-yaml=" gcp.billing.AccountIamBinding
/// " pulumi-lang-java=" gcp.billing.AccountIamBinding
/// "> gcp.billing.AccountIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.billing.AccountIamBinding("editor", {
/// billingAccountId: "00AA00-000AAA-00AA0A",
/// role: "roles/billing.viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.billing.AccountIamBinding("editor",
/// billing_account_id="00AA00-000AAA-00AA0A",
/// role="roles/billing.viewer",
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
/// var editor = new Gcp.Billing.AccountIamBinding("editor", new()
/// {
/// BillingAccountId = "00AA00-000AAA-00AA0A",
/// Role = "roles/billing.viewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := billing.NewAccountIamBinding(ctx, "editor", &billing.AccountIamBindingArgs{
/// BillingAccountId: pulumi.String("00AA00-000AAA-00AA0A"),
/// Role:             pulumi.String("roles/billing.viewer"),
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
/// import com.pulumi.gcp.billing.AccountIamBinding;
/// import com.pulumi.gcp.billing.AccountIamBindingArgs;
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
/// var editor = new AccountIamBinding("editor", AccountIamBindingArgs.builder()
/// .billingAccountId("00AA00-000AAA-00AA0A")
/// .role("roles/billing.viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:billing:AccountIamBinding
/// properties:
/// billingAccountId: 00AA00-000AAA-00AA0A
/// role: roles/billing.viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.billing.AccountIamMember
/// " pulumi-lang-dotnet=" gcp.billing.AccountIamMember
/// " pulumi-lang-go=" billing.AccountIamMember
/// " pulumi-lang-python=" billing.AccountIamMember
/// " pulumi-lang-yaml=" gcp.billing.AccountIamMember
/// " pulumi-lang-java=" gcp.billing.AccountIamMember
/// "> gcp.billing.AccountIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const editor = new gcp.billing.AccountIamMember("editor", {
/// billingAccountId: "00AA00-000AAA-00AA0A",
/// role: "roles/billing.viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// editor = gcp.billing.AccountIamMember("editor",
/// billing_account_id="00AA00-000AAA-00AA0A",
/// role="roles/billing.viewer",
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
/// var editor = new Gcp.Billing.AccountIamMember("editor", new()
/// {
/// BillingAccountId = "00AA00-000AAA-00AA0A",
/// Role = "roles/billing.viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := billing.NewAccountIamMember(ctx, "editor", &billing.AccountIamMemberArgs{
/// BillingAccountId: pulumi.String("00AA00-000AAA-00AA0A"),
/// Role:             pulumi.String("roles/billing.viewer"),
/// Member:           pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.billing.AccountIamMember;
/// import com.pulumi.gcp.billing.AccountIamMemberArgs;
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
/// var editor = new AccountIamMember("editor", AccountIamMemberArgs.builder()
/// .billingAccountId("00AA00-000AAA-00AA0A")
/// .role("roles/billing.viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// editor:
/// type: gcp:billing:AccountIamMember
/// properties:
/// billingAccountId: 00AA00-000AAA-00AA0A
/// role: roles/billing.viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the `billing_account_id` identifier of the Billing Account resource only. For example:
///
/// * `{{billing_account_id}}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = {{billing_account_id}}
///
/// to = google_billing_account_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:billing/accountIamMember:AccountIamMember default {{billing_account_id}}
/// ```
class AccountIamMember extends CustomResource {
  /// The billing account id.
  ///
  /// For <span pulumi-lang-nodejs="`gcp.billing.AccountIamMember`" pulumi-lang-dotnet="`gcp.billing.AccountIamMember`" pulumi-lang-go="`billing.AccountIamMember`" pulumi-lang-python="`billing.AccountIamMember`" pulumi-lang-yaml="`gcp.billing.AccountIamMember`" pulumi-lang-java="`gcp.billing.AccountIamMember`">`gcp.billing.AccountIamMember`</span> or <span pulumi-lang-nodejs="`gcp.billing.AccountIamBinding`" pulumi-lang-dotnet="`gcp.billing.AccountIamBinding`" pulumi-lang-go="`billing.AccountIamBinding`" pulumi-lang-python="`billing.AccountIamBinding`" pulumi-lang-yaml="`gcp.billing.AccountIamBinding`" pulumi-lang-java="`gcp.billing.AccountIamBinding`">`gcp.billing.AccountIamBinding`</span>:
  late final Output<String> billingAccountId;
  late final Output<AccountIamMemberCondition?> condition;

  /// (Computed) The etag of the billing account's IAM policy.
  late final Output<String> etag;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final Output<String> member;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.billing.AccountIamBinding`" pulumi-lang-dotnet="`gcp.billing.AccountIamBinding`" pulumi-lang-go="`billing.AccountIamBinding`" pulumi-lang-python="`billing.AccountIamBinding`" pulumi-lang-yaml="`gcp.billing.AccountIamBinding`" pulumi-lang-java="`gcp.billing.AccountIamBinding`">`gcp.billing.AccountIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  ///
  /// <span pulumi-lang-nodejs="`gcp.billing.AccountIamPolicy`" pulumi-lang-dotnet="`gcp.billing.AccountIamPolicy`" pulumi-lang-go="`billing.AccountIamPolicy`" pulumi-lang-python="`billing.AccountIamPolicy`" pulumi-lang-yaml="`gcp.billing.AccountIamPolicy`" pulumi-lang-java="`gcp.billing.AccountIamPolicy`">`gcp.billing.AccountIamPolicy`</span> only:
  late final Output<String> role;

  AccountIamMember(
    String name, {
    AccountIamMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:billing/accountIamMember:AccountIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.billingAccountId = registerOutput<String>('billingAccountId');
    this.condition = registerOutput<AccountIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.role = registerOutput<String>('role');
  }
}
