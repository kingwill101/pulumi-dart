import 'package:pulumi/pulumi.dart';
import 'account_iam_policy_args.dart';

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
/// $ pulumi import gcp:billing/accountIamPolicy:AccountIamPolicy default {{billing_account_id}}
/// ```
class AccountIamPolicy extends CustomResource {
  /// The billing account id.
  ///
  /// For <span pulumi-lang-nodejs="`gcp.billing.AccountIamMember`" pulumi-lang-dotnet="`gcp.billing.AccountIamMember`" pulumi-lang-go="`billing.AccountIamMember`" pulumi-lang-python="`billing.AccountIamMember`" pulumi-lang-yaml="`gcp.billing.AccountIamMember`" pulumi-lang-java="`gcp.billing.AccountIamMember`">`gcp.billing.AccountIamMember`</span> or <span pulumi-lang-nodejs="`gcp.billing.AccountIamBinding`" pulumi-lang-dotnet="`gcp.billing.AccountIamBinding`" pulumi-lang-go="`billing.AccountIamBinding`" pulumi-lang-python="`billing.AccountIamBinding`" pulumi-lang-yaml="`gcp.billing.AccountIamBinding`" pulumi-lang-java="`gcp.billing.AccountIamBinding`">`gcp.billing.AccountIamBinding`</span>:
  late final Output<String> billingAccountId;

  /// (Computed) The etag of the billing account's IAM policy.
  late final Output<String> etag;

  /// The policy data generated by a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  ///
  /// - - -
  late final Output<String> policyData;

  AccountIamPolicy(
    String name, {
    AccountIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:billing/accountIamPolicy:AccountIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.billingAccountId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
  }
}
