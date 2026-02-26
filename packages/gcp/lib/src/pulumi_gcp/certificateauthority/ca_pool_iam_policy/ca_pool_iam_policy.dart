import 'package:pulumi/pulumi.dart';
import 'ca_pool_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Certificate Authority Service CaPool. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-go="`certificateauthority.CaPoolIamPolicy`" pulumi-lang-python="`certificateauthority.CaPoolIamPolicy`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamPolicy`">`gcp.certificateauthority.CaPoolIamPolicy`</span>: Authoritative. Sets the IAM policy for the capool and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-go="`certificateauthority.CaPoolIamBinding`" pulumi-lang-python="`certificateauthority.CaPoolIamBinding`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamBinding`">`gcp.certificateauthority.CaPoolIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the capool are preserved.
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-go="`certificateauthority.CaPoolIamMember`" pulumi-lang-python="`certificateauthority.CaPoolIamMember`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamMember`">`gcp.certificateauthority.CaPoolIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the capool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-go="`certificateauthority.CaPoolIamPolicy`" pulumi-lang-python="`certificateauthority.CaPoolIamPolicy`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamPolicy`">`gcp.certificateauthority.CaPoolIamPolicy`</span>: Retrieves the IAM policy for the capool
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-go="`certificateauthority.CaPoolIamPolicy`" pulumi-lang-python="`certificateauthority.CaPoolIamPolicy`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamPolicy`">`gcp.certificateauthority.CaPoolIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-go="`certificateauthority.CaPoolIamBinding`" pulumi-lang-python="`certificateauthority.CaPoolIamBinding`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamBinding`">`gcp.certificateauthority.CaPoolIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-go="`certificateauthority.CaPoolIamMember`" pulumi-lang-python="`certificateauthority.CaPoolIamMember`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamMember`">`gcp.certificateauthority.CaPoolIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-go="`certificateauthority.CaPoolIamBinding`" pulumi-lang-python="`certificateauthority.CaPoolIamBinding`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamBinding`">`gcp.certificateauthority.CaPoolIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-go="`certificateauthority.CaPoolIamMember`" pulumi-lang-python="`certificateauthority.CaPoolIamMember`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamMember`">`gcp.certificateauthority.CaPoolIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.certificateauthority.CaPoolIamPolicy
/// " pulumi-lang-dotnet=" gcp.certificateauthority.CaPoolIamPolicy
/// " pulumi-lang-go=" certificateauthority.CaPoolIamPolicy
/// " pulumi-lang-python=" certificateauthority.CaPoolIamPolicy
/// " pulumi-lang-yaml=" gcp.certificateauthority.CaPoolIamPolicy
/// " pulumi-lang-java=" gcp.certificateauthority.CaPoolIamPolicy
/// "> gcp.certificateauthority.CaPoolIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/privateca.certificateManager",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.certificateauthority.CaPoolIamPolicy("policy", {
/// caPool: _default.id,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/privateca.certificateManager",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.certificateauthority.CaPoolIamPolicy("policy",
/// ca_pool=default["id"],
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
/// Role = "roles/privateca.certificateManager",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.CertificateAuthority.CaPoolIamPolicy("policy", new()
/// {
/// CaPool = @default.Id,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/privateca.certificateManager",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = certificateauthority.NewCaPoolIamPolicy(ctx, "policy", &certificateauthority.CaPoolIamPolicyArgs{
/// CaPool:     pulumi.Any(_default.Id),
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamPolicy;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamPolicyArgs;
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
/// .role("roles/privateca.certificateManager")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new CaPoolIamPolicy("policy", CaPoolIamPolicyArgs.builder()
/// .caPool(default_.id())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:certificateauthority:CaPoolIamPolicy
/// properties:
/// caPool: ${default.id}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/privateca.certificateManager
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
/// role: "roles/privateca.certificateManager",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.certificateauthority.CaPoolIamPolicy("policy", {
/// caPool: _default.id,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/privateca.certificateManager",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.certificateauthority.CaPoolIamPolicy("policy",
/// ca_pool=default["id"],
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
/// Role = "roles/privateca.certificateManager",
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
/// var policy = new Gcp.CertificateAuthority.CaPoolIamPolicy("policy", new()
/// {
/// CaPool = @default.Id,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/privateca.certificateManager",
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
/// _, err = certificateauthority.NewCaPoolIamPolicy(ctx, "policy", &certificateauthority.CaPoolIamPolicyArgs{
/// CaPool:     pulumi.Any(_default.Id),
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamPolicy;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamPolicyArgs;
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
/// .role("roles/privateca.certificateManager")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new CaPoolIamPolicy("policy", CaPoolIamPolicyArgs.builder()
/// .caPool(default_.id())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:certificateauthority:CaPoolIamPolicy
/// properties:
/// caPool: ${default.id}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/privateca.certificateManager
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.certificateauthority.CaPoolIamBinding
/// " pulumi-lang-dotnet=" gcp.certificateauthority.CaPoolIamBinding
/// " pulumi-lang-go=" certificateauthority.CaPoolIamBinding
/// " pulumi-lang-python=" certificateauthority.CaPoolIamBinding
/// " pulumi-lang-yaml=" gcp.certificateauthority.CaPoolIamBinding
/// " pulumi-lang-java=" gcp.certificateauthority.CaPoolIamBinding
/// "> gcp.certificateauthority.CaPoolIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.certificateauthority.CaPoolIamBinding("binding", {
/// caPool: _default.id,
/// role: "roles/privateca.certificateManager",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.certificateauthority.CaPoolIamBinding("binding",
/// ca_pool=default["id"],
/// role="roles/privateca.certificateManager",
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
/// var binding = new Gcp.CertificateAuthority.CaPoolIamBinding("binding", new()
/// {
/// CaPool = @default.Id,
/// Role = "roles/privateca.certificateManager",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := certificateauthority.NewCaPoolIamBinding(ctx, "binding", &certificateauthority.CaPoolIamBindingArgs{
/// CaPool: pulumi.Any(_default.Id),
/// Role:   pulumi.String("roles/privateca.certificateManager"),
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBinding;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBindingArgs;
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
/// var binding = new CaPoolIamBinding("binding", CaPoolIamBindingArgs.builder()
/// .caPool(default_.id())
/// .role("roles/privateca.certificateManager")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:certificateauthority:CaPoolIamBinding
/// properties:
/// caPool: ${default.id}
/// role: roles/privateca.certificateManager
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
/// const binding = new gcp.certificateauthority.CaPoolIamBinding("binding", {
/// caPool: _default.id,
/// role: "roles/privateca.certificateManager",
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
/// binding = gcp.certificateauthority.CaPoolIamBinding("binding",
/// ca_pool=default["id"],
/// role="roles/privateca.certificateManager",
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
/// var binding = new Gcp.CertificateAuthority.CaPoolIamBinding("binding", new()
/// {
/// CaPool = @default.Id,
/// Role = "roles/privateca.certificateManager",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.CertificateAuthority.Inputs.CaPoolIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := certificateauthority.NewCaPoolIamBinding(ctx, "binding", &certificateauthority.CaPoolIamBindingArgs{
/// CaPool: pulumi.Any(_default.Id),
/// Role:   pulumi.String("roles/privateca.certificateManager"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &certificateauthority.CaPoolIamBindingConditionArgs{
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBinding;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBindingArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIamBindingConditionArgs;
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
/// var binding = new CaPoolIamBinding("binding", CaPoolIamBindingArgs.builder()
/// .caPool(default_.id())
/// .role("roles/privateca.certificateManager")
/// .members("user:jane@example.com")
/// .condition(CaPoolIamBindingConditionArgs.builder()
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
/// type: gcp:certificateauthority:CaPoolIamBinding
/// properties:
/// caPool: ${default.id}
/// role: roles/privateca.certificateManager
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.certificateauthority.CaPoolIamMember
/// " pulumi-lang-dotnet=" gcp.certificateauthority.CaPoolIamMember
/// " pulumi-lang-go=" certificateauthority.CaPoolIamMember
/// " pulumi-lang-python=" certificateauthority.CaPoolIamMember
/// " pulumi-lang-yaml=" gcp.certificateauthority.CaPoolIamMember
/// " pulumi-lang-java=" gcp.certificateauthority.CaPoolIamMember
/// "> gcp.certificateauthority.CaPoolIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.certificateauthority.CaPoolIamMember("member", {
/// caPool: _default.id,
/// role: "roles/privateca.certificateManager",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.certificateauthority.CaPoolIamMember("member",
/// ca_pool=default["id"],
/// role="roles/privateca.certificateManager",
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
/// var member = new Gcp.CertificateAuthority.CaPoolIamMember("member", new()
/// {
/// CaPool = @default.Id,
/// Role = "roles/privateca.certificateManager",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := certificateauthority.NewCaPoolIamMember(ctx, "member", &certificateauthority.CaPoolIamMemberArgs{
/// CaPool: pulumi.Any(_default.Id),
/// Role:   pulumi.String("roles/privateca.certificateManager"),
/// Member: pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMember;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMemberArgs;
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
/// var member = new CaPoolIamMember("member", CaPoolIamMemberArgs.builder()
/// .caPool(default_.id())
/// .role("roles/privateca.certificateManager")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:certificateauthority:CaPoolIamMember
/// properties:
/// caPool: ${default.id}
/// role: roles/privateca.certificateManager
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
/// const member = new gcp.certificateauthority.CaPoolIamMember("member", {
/// caPool: _default.id,
/// role: "roles/privateca.certificateManager",
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
/// member = gcp.certificateauthority.CaPoolIamMember("member",
/// ca_pool=default["id"],
/// role="roles/privateca.certificateManager",
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
/// var member = new Gcp.CertificateAuthority.CaPoolIamMember("member", new()
/// {
/// CaPool = @default.Id,
/// Role = "roles/privateca.certificateManager",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.CertificateAuthority.Inputs.CaPoolIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := certificateauthority.NewCaPoolIamMember(ctx, "member", &certificateauthority.CaPoolIamMemberArgs{
/// CaPool: pulumi.Any(_default.Id),
/// Role:   pulumi.String("roles/privateca.certificateManager"),
/// Member: pulumi.String("user:jane@example.com"),
/// Condition: &certificateauthority.CaPoolIamMemberConditionArgs{
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMember;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMemberArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIamMemberConditionArgs;
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
/// var member = new CaPoolIamMember("member", CaPoolIamMemberArgs.builder()
/// .caPool(default_.id())
/// .role("roles/privateca.certificateManager")
/// .member("user:jane@example.com")
/// .condition(CaPoolIamMemberConditionArgs.builder()
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
/// type: gcp:certificateauthority:CaPoolIamMember
/// properties:
/// caPool: ${default.id}
/// role: roles/privateca.certificateManager
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
/// # IAM policy for Certificate Authority Service CaPool
///
/// Three different resources help you manage your IAM policy for Certificate Authority Service CaPool. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-go="`certificateauthority.CaPoolIamPolicy`" pulumi-lang-python="`certificateauthority.CaPoolIamPolicy`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamPolicy`">`gcp.certificateauthority.CaPoolIamPolicy`</span>: Authoritative. Sets the IAM policy for the capool and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-go="`certificateauthority.CaPoolIamBinding`" pulumi-lang-python="`certificateauthority.CaPoolIamBinding`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamBinding`">`gcp.certificateauthority.CaPoolIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the capool are preserved.
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-go="`certificateauthority.CaPoolIamMember`" pulumi-lang-python="`certificateauthority.CaPoolIamMember`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamMember`">`gcp.certificateauthority.CaPoolIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the capool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-go="`certificateauthority.CaPoolIamPolicy`" pulumi-lang-python="`certificateauthority.CaPoolIamPolicy`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamPolicy`">`gcp.certificateauthority.CaPoolIamPolicy`</span>: Retrieves the IAM policy for the capool
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-go="`certificateauthority.CaPoolIamPolicy`" pulumi-lang-python="`certificateauthority.CaPoolIamPolicy`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamPolicy`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamPolicy`">`gcp.certificateauthority.CaPoolIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-go="`certificateauthority.CaPoolIamBinding`" pulumi-lang-python="`certificateauthority.CaPoolIamBinding`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamBinding`">`gcp.certificateauthority.CaPoolIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-go="`certificateauthority.CaPoolIamMember`" pulumi-lang-python="`certificateauthority.CaPoolIamMember`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamMember`">`gcp.certificateauthority.CaPoolIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-go="`certificateauthority.CaPoolIamBinding`" pulumi-lang-python="`certificateauthority.CaPoolIamBinding`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamBinding`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamBinding`">`gcp.certificateauthority.CaPoolIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-dotnet="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-go="`certificateauthority.CaPoolIamMember`" pulumi-lang-python="`certificateauthority.CaPoolIamMember`" pulumi-lang-yaml="`gcp.certificateauthority.CaPoolIamMember`" pulumi-lang-java="`gcp.certificateauthority.CaPoolIamMember`">`gcp.certificateauthority.CaPoolIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.certificateauthority.CaPoolIamPolicy
/// " pulumi-lang-dotnet=" gcp.certificateauthority.CaPoolIamPolicy
/// " pulumi-lang-go=" certificateauthority.CaPoolIamPolicy
/// " pulumi-lang-python=" certificateauthority.CaPoolIamPolicy
/// " pulumi-lang-yaml=" gcp.certificateauthority.CaPoolIamPolicy
/// " pulumi-lang-java=" gcp.certificateauthority.CaPoolIamPolicy
/// "> gcp.certificateauthority.CaPoolIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/privateca.certificateManager",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.certificateauthority.CaPoolIamPolicy("policy", {
/// caPool: _default.id,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/privateca.certificateManager",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.certificateauthority.CaPoolIamPolicy("policy",
/// ca_pool=default["id"],
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
/// Role = "roles/privateca.certificateManager",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.CertificateAuthority.CaPoolIamPolicy("policy", new()
/// {
/// CaPool = @default.Id,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/privateca.certificateManager",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = certificateauthority.NewCaPoolIamPolicy(ctx, "policy", &certificateauthority.CaPoolIamPolicyArgs{
/// CaPool:     pulumi.Any(_default.Id),
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamPolicy;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamPolicyArgs;
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
/// .role("roles/privateca.certificateManager")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new CaPoolIamPolicy("policy", CaPoolIamPolicyArgs.builder()
/// .caPool(default_.id())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:certificateauthority:CaPoolIamPolicy
/// properties:
/// caPool: ${default.id}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/privateca.certificateManager
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
/// role: "roles/privateca.certificateManager",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.certificateauthority.CaPoolIamPolicy("policy", {
/// caPool: _default.id,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/privateca.certificateManager",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.certificateauthority.CaPoolIamPolicy("policy",
/// ca_pool=default["id"],
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
/// Role = "roles/privateca.certificateManager",
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
/// var policy = new Gcp.CertificateAuthority.CaPoolIamPolicy("policy", new()
/// {
/// CaPool = @default.Id,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/privateca.certificateManager",
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
/// _, err = certificateauthority.NewCaPoolIamPolicy(ctx, "policy", &certificateauthority.CaPoolIamPolicyArgs{
/// CaPool:     pulumi.Any(_default.Id),
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamPolicy;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamPolicyArgs;
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
/// .role("roles/privateca.certificateManager")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new CaPoolIamPolicy("policy", CaPoolIamPolicyArgs.builder()
/// .caPool(default_.id())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:certificateauthority:CaPoolIamPolicy
/// properties:
/// caPool: ${default.id}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/privateca.certificateManager
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.certificateauthority.CaPoolIamBinding
/// " pulumi-lang-dotnet=" gcp.certificateauthority.CaPoolIamBinding
/// " pulumi-lang-go=" certificateauthority.CaPoolIamBinding
/// " pulumi-lang-python=" certificateauthority.CaPoolIamBinding
/// " pulumi-lang-yaml=" gcp.certificateauthority.CaPoolIamBinding
/// " pulumi-lang-java=" gcp.certificateauthority.CaPoolIamBinding
/// "> gcp.certificateauthority.CaPoolIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.certificateauthority.CaPoolIamBinding("binding", {
/// caPool: _default.id,
/// role: "roles/privateca.certificateManager",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.certificateauthority.CaPoolIamBinding("binding",
/// ca_pool=default["id"],
/// role="roles/privateca.certificateManager",
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
/// var binding = new Gcp.CertificateAuthority.CaPoolIamBinding("binding", new()
/// {
/// CaPool = @default.Id,
/// Role = "roles/privateca.certificateManager",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := certificateauthority.NewCaPoolIamBinding(ctx, "binding", &certificateauthority.CaPoolIamBindingArgs{
/// CaPool: pulumi.Any(_default.Id),
/// Role:   pulumi.String("roles/privateca.certificateManager"),
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBinding;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBindingArgs;
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
/// var binding = new CaPoolIamBinding("binding", CaPoolIamBindingArgs.builder()
/// .caPool(default_.id())
/// .role("roles/privateca.certificateManager")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:certificateauthority:CaPoolIamBinding
/// properties:
/// caPool: ${default.id}
/// role: roles/privateca.certificateManager
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
/// const binding = new gcp.certificateauthority.CaPoolIamBinding("binding", {
/// caPool: _default.id,
/// role: "roles/privateca.certificateManager",
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
/// binding = gcp.certificateauthority.CaPoolIamBinding("binding",
/// ca_pool=default["id"],
/// role="roles/privateca.certificateManager",
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
/// var binding = new Gcp.CertificateAuthority.CaPoolIamBinding("binding", new()
/// {
/// CaPool = @default.Id,
/// Role = "roles/privateca.certificateManager",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.CertificateAuthority.Inputs.CaPoolIamBindingConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := certificateauthority.NewCaPoolIamBinding(ctx, "binding", &certificateauthority.CaPoolIamBindingArgs{
/// CaPool: pulumi.Any(_default.Id),
/// Role:   pulumi.String("roles/privateca.certificateManager"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &certificateauthority.CaPoolIamBindingConditionArgs{
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBinding;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamBindingArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIamBindingConditionArgs;
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
/// var binding = new CaPoolIamBinding("binding", CaPoolIamBindingArgs.builder()
/// .caPool(default_.id())
/// .role("roles/privateca.certificateManager")
/// .members("user:jane@example.com")
/// .condition(CaPoolIamBindingConditionArgs.builder()
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
/// type: gcp:certificateauthority:CaPoolIamBinding
/// properties:
/// caPool: ${default.id}
/// role: roles/privateca.certificateManager
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.certificateauthority.CaPoolIamMember
/// " pulumi-lang-dotnet=" gcp.certificateauthority.CaPoolIamMember
/// " pulumi-lang-go=" certificateauthority.CaPoolIamMember
/// " pulumi-lang-python=" certificateauthority.CaPoolIamMember
/// " pulumi-lang-yaml=" gcp.certificateauthority.CaPoolIamMember
/// " pulumi-lang-java=" gcp.certificateauthority.CaPoolIamMember
/// "> gcp.certificateauthority.CaPoolIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.certificateauthority.CaPoolIamMember("member", {
/// caPool: _default.id,
/// role: "roles/privateca.certificateManager",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.certificateauthority.CaPoolIamMember("member",
/// ca_pool=default["id"],
/// role="roles/privateca.certificateManager",
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
/// var member = new Gcp.CertificateAuthority.CaPoolIamMember("member", new()
/// {
/// CaPool = @default.Id,
/// Role = "roles/privateca.certificateManager",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := certificateauthority.NewCaPoolIamMember(ctx, "member", &certificateauthority.CaPoolIamMemberArgs{
/// CaPool: pulumi.Any(_default.Id),
/// Role:   pulumi.String("roles/privateca.certificateManager"),
/// Member: pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMember;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMemberArgs;
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
/// var member = new CaPoolIamMember("member", CaPoolIamMemberArgs.builder()
/// .caPool(default_.id())
/// .role("roles/privateca.certificateManager")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:certificateauthority:CaPoolIamMember
/// properties:
/// caPool: ${default.id}
/// role: roles/privateca.certificateManager
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
/// const member = new gcp.certificateauthority.CaPoolIamMember("member", {
/// caPool: _default.id,
/// role: "roles/privateca.certificateManager",
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
/// member = gcp.certificateauthority.CaPoolIamMember("member",
/// ca_pool=default["id"],
/// role="roles/privateca.certificateManager",
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
/// var member = new Gcp.CertificateAuthority.CaPoolIamMember("member", new()
/// {
/// CaPool = @default.Id,
/// Role = "roles/privateca.certificateManager",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.CertificateAuthority.Inputs.CaPoolIamMemberConditionArgs
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := certificateauthority.NewCaPoolIamMember(ctx, "member", &certificateauthority.CaPoolIamMemberArgs{
/// CaPool: pulumi.Any(_default.Id),
/// Role:   pulumi.String("roles/privateca.certificateManager"),
/// Member: pulumi.String("user:jane@example.com"),
/// Condition: &certificateauthority.CaPoolIamMemberConditionArgs{
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
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMember;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMemberArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CaPoolIamMemberConditionArgs;
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
/// var member = new CaPoolIamMember("member", CaPoolIamMemberArgs.builder()
/// .caPool(default_.id())
/// .role("roles/privateca.certificateManager")
/// .member("user:jane@example.com")
/// .condition(CaPoolIamMemberConditionArgs.builder()
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
/// type: gcp:certificateauthority:CaPoolIamMember
/// properties:
/// caPool: ${default.id}
/// role: roles/privateca.certificateManager
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
/// * projects/{{project}}/locations/{{location}}/caPools/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Certificate Authority Service capool IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/caPoolIamPolicy:CaPoolIamPolicy editor "projects/{{project}}/locations/{{location}}/caPools/{{ca_pool}} roles/privateca.certificateManager user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/caPoolIamPolicy:CaPoolIamPolicy editor "projects/{{project}}/locations/{{location}}/caPools/{{ca_pool}} roles/privateca.certificateManager"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/caPoolIamPolicy:CaPoolIamPolicy editor projects/{{project}}/locations/{{location}}/caPools/{{ca_pool}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class CaPoolIamPolicy extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> caPool;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Location of the CaPool. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  CaPoolIamPolicy(
    String name, {
    CaPoolIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:certificateauthority/caPoolIamPolicy:CaPoolIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.caPool = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
