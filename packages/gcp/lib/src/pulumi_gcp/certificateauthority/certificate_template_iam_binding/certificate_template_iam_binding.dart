import 'package:pulumi/pulumi.dart';
import '../certificate_template_iam_binding_condition/certificate_template_iam_binding_condition.dart';
import 'certificate_template_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Certificate Authority Service CertificateTemplate. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamPolicy`">`gcp.certificateauthority.CertificateTemplateIamPolicy`</span>: Authoritative. Sets the IAM policy for the certificatetemplate and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamBinding`">`gcp.certificateauthority.CertificateTemplateIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the certificatetemplate are preserved.
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamMember`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamMember`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamMember`">`gcp.certificateauthority.CertificateTemplateIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the certificatetemplate are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamPolicy`">`gcp.certificateauthority.CertificateTemplateIamPolicy`</span>: Retrieves the IAM policy for the certificatetemplate
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamPolicy`">`gcp.certificateauthority.CertificateTemplateIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamBinding`">`gcp.certificateauthority.CertificateTemplateIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamMember`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamMember`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamMember`">`gcp.certificateauthority.CertificateTemplateIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamBinding`">`gcp.certificateauthority.CertificateTemplateIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamMember`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamMember`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamMember`">`gcp.certificateauthority.CertificateTemplateIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.certificateauthority.CertificateTemplateIamPolicy
/// " pulumi-lang-dotnet=" gcp.certificateauthority.CertificateTemplateIamPolicy
/// " pulumi-lang-go=" certificateauthority.CertificateTemplateIamPolicy
/// " pulumi-lang-python=" certificateauthority.CertificateTemplateIamPolicy
/// " pulumi-lang-yaml=" gcp.certificateauthority.CertificateTemplateIamPolicy
/// " pulumi-lang-java=" gcp.certificateauthority.CertificateTemplateIamPolicy
/// "> gcp.certificateauthority.CertificateTemplateIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/privateca.templateUser",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.certificateauthority.CertificateTemplateIamPolicy("policy", {
/// certificateTemplate: _default.id,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/privateca.templateUser",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.certificateauthority.CertificateTemplateIamPolicy("policy",
/// certificate_template=default["id"],
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
/// Role = "roles/privateca.templateUser",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.CertificateAuthority.CertificateTemplateIamPolicy("policy", new()
/// {
/// CertificateTemplate = @default.Id,
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
/// Role: "roles/privateca.templateUser",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = certificateauthority.NewCertificateTemplateIamPolicy(ctx, "policy", &certificateauthority.CertificateTemplateIamPolicyArgs{
/// CertificateTemplate: pulumi.Any(_default.Id),
/// PolicyData:          pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamPolicy;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamPolicyArgs;
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
/// .role("roles/privateca.templateUser")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new CertificateTemplateIamPolicy("policy", CertificateTemplateIamPolicyArgs.builder()
/// .certificateTemplate(default_.id())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:certificateauthority:CertificateTemplateIamPolicy
/// properties:
/// certificateTemplate: ${default.id}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/privateca.templateUser
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
/// role: "roles/privateca.templateUser",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.certificateauthority.CertificateTemplateIamPolicy("policy", {
/// certificateTemplate: _default.id,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/privateca.templateUser",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.certificateauthority.CertificateTemplateIamPolicy("policy",
/// certificate_template=default["id"],
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
/// Role = "roles/privateca.templateUser",
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
/// var policy = new Gcp.CertificateAuthority.CertificateTemplateIamPolicy("policy", new()
/// {
/// CertificateTemplate = @default.Id,
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
/// Role: "roles/privateca.templateUser",
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
/// _, err = certificateauthority.NewCertificateTemplateIamPolicy(ctx, "policy", &certificateauthority.CertificateTemplateIamPolicyArgs{
/// CertificateTemplate: pulumi.Any(_default.Id),
/// PolicyData:          pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamPolicy;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamPolicyArgs;
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
/// .role("roles/privateca.templateUser")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new CertificateTemplateIamPolicy("policy", CertificateTemplateIamPolicyArgs.builder()
/// .certificateTemplate(default_.id())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:certificateauthority:CertificateTemplateIamPolicy
/// properties:
/// certificateTemplate: ${default.id}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/privateca.templateUser
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.certificateauthority.CertificateTemplateIamBinding
/// " pulumi-lang-dotnet=" gcp.certificateauthority.CertificateTemplateIamBinding
/// " pulumi-lang-go=" certificateauthority.CertificateTemplateIamBinding
/// " pulumi-lang-python=" certificateauthority.CertificateTemplateIamBinding
/// " pulumi-lang-yaml=" gcp.certificateauthority.CertificateTemplateIamBinding
/// " pulumi-lang-java=" gcp.certificateauthority.CertificateTemplateIamBinding
/// "> gcp.certificateauthority.CertificateTemplateIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.certificateauthority.CertificateTemplateIamBinding("binding", {
/// certificateTemplate: _default.id,
/// role: "roles/privateca.templateUser",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.certificateauthority.CertificateTemplateIamBinding("binding",
/// certificate_template=default["id"],
/// role="roles/privateca.templateUser",
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
/// var binding = new Gcp.CertificateAuthority.CertificateTemplateIamBinding("binding", new()
/// {
/// CertificateTemplate = @default.Id,
/// Role = "roles/privateca.templateUser",
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
/// _, err := certificateauthority.NewCertificateTemplateIamBinding(ctx, "binding", &certificateauthority.CertificateTemplateIamBindingArgs{
/// CertificateTemplate: pulumi.Any(_default.Id),
/// Role:                pulumi.String("roles/privateca.templateUser"),
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
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamBinding;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamBindingArgs;
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
/// var binding = new CertificateTemplateIamBinding("binding", CertificateTemplateIamBindingArgs.builder()
/// .certificateTemplate(default_.id())
/// .role("roles/privateca.templateUser")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:certificateauthority:CertificateTemplateIamBinding
/// properties:
/// certificateTemplate: ${default.id}
/// role: roles/privateca.templateUser
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
/// const binding = new gcp.certificateauthority.CertificateTemplateIamBinding("binding", {
/// certificateTemplate: _default.id,
/// role: "roles/privateca.templateUser",
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
/// binding = gcp.certificateauthority.CertificateTemplateIamBinding("binding",
/// certificate_template=default["id"],
/// role="roles/privateca.templateUser",
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
/// var binding = new Gcp.CertificateAuthority.CertificateTemplateIamBinding("binding", new()
/// {
/// CertificateTemplate = @default.Id,
/// Role = "roles/privateca.templateUser",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.CertificateAuthority.Inputs.CertificateTemplateIamBindingConditionArgs
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
/// _, err := certificateauthority.NewCertificateTemplateIamBinding(ctx, "binding", &certificateauthority.CertificateTemplateIamBindingArgs{
/// CertificateTemplate: pulumi.Any(_default.Id),
/// Role:                pulumi.String("roles/privateca.templateUser"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &certificateauthority.CertificateTemplateIamBindingConditionArgs{
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
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamBinding;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamBindingArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplateIamBindingConditionArgs;
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
/// var binding = new CertificateTemplateIamBinding("binding", CertificateTemplateIamBindingArgs.builder()
/// .certificateTemplate(default_.id())
/// .role("roles/privateca.templateUser")
/// .members("user:jane@example.com")
/// .condition(CertificateTemplateIamBindingConditionArgs.builder()
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
/// type: gcp:certificateauthority:CertificateTemplateIamBinding
/// properties:
/// certificateTemplate: ${default.id}
/// role: roles/privateca.templateUser
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.certificateauthority.CertificateTemplateIamMember
/// " pulumi-lang-dotnet=" gcp.certificateauthority.CertificateTemplateIamMember
/// " pulumi-lang-go=" certificateauthority.CertificateTemplateIamMember
/// " pulumi-lang-python=" certificateauthority.CertificateTemplateIamMember
/// " pulumi-lang-yaml=" gcp.certificateauthority.CertificateTemplateIamMember
/// " pulumi-lang-java=" gcp.certificateauthority.CertificateTemplateIamMember
/// "> gcp.certificateauthority.CertificateTemplateIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.certificateauthority.CertificateTemplateIamMember("member", {
/// certificateTemplate: _default.id,
/// role: "roles/privateca.templateUser",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.certificateauthority.CertificateTemplateIamMember("member",
/// certificate_template=default["id"],
/// role="roles/privateca.templateUser",
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
/// var member = new Gcp.CertificateAuthority.CertificateTemplateIamMember("member", new()
/// {
/// CertificateTemplate = @default.Id,
/// Role = "roles/privateca.templateUser",
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
/// _, err := certificateauthority.NewCertificateTemplateIamMember(ctx, "member", &certificateauthority.CertificateTemplateIamMemberArgs{
/// CertificateTemplate: pulumi.Any(_default.Id),
/// Role:                pulumi.String("roles/privateca.templateUser"),
/// Member:              pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamMember;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamMemberArgs;
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
/// var member = new CertificateTemplateIamMember("member", CertificateTemplateIamMemberArgs.builder()
/// .certificateTemplate(default_.id())
/// .role("roles/privateca.templateUser")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:certificateauthority:CertificateTemplateIamMember
/// properties:
/// certificateTemplate: ${default.id}
/// role: roles/privateca.templateUser
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
/// const member = new gcp.certificateauthority.CertificateTemplateIamMember("member", {
/// certificateTemplate: _default.id,
/// role: "roles/privateca.templateUser",
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
/// member = gcp.certificateauthority.CertificateTemplateIamMember("member",
/// certificate_template=default["id"],
/// role="roles/privateca.templateUser",
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
/// var member = new Gcp.CertificateAuthority.CertificateTemplateIamMember("member", new()
/// {
/// CertificateTemplate = @default.Id,
/// Role = "roles/privateca.templateUser",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.CertificateAuthority.Inputs.CertificateTemplateIamMemberConditionArgs
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
/// _, err := certificateauthority.NewCertificateTemplateIamMember(ctx, "member", &certificateauthority.CertificateTemplateIamMemberArgs{
/// CertificateTemplate: pulumi.Any(_default.Id),
/// Role:                pulumi.String("roles/privateca.templateUser"),
/// Member:              pulumi.String("user:jane@example.com"),
/// Condition: &certificateauthority.CertificateTemplateIamMemberConditionArgs{
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
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamMember;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamMemberArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplateIamMemberConditionArgs;
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
/// var member = new CertificateTemplateIamMember("member", CertificateTemplateIamMemberArgs.builder()
/// .certificateTemplate(default_.id())
/// .role("roles/privateca.templateUser")
/// .member("user:jane@example.com")
/// .condition(CertificateTemplateIamMemberConditionArgs.builder()
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
/// type: gcp:certificateauthority:CertificateTemplateIamMember
/// properties:
/// certificateTemplate: ${default.id}
/// role: roles/privateca.templateUser
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
/// # IAM policy for Certificate Authority Service CertificateTemplate
///
/// Three different resources help you manage your IAM policy for Certificate Authority Service CertificateTemplate. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamPolicy`">`gcp.certificateauthority.CertificateTemplateIamPolicy`</span>: Authoritative. Sets the IAM policy for the certificatetemplate and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamBinding`">`gcp.certificateauthority.CertificateTemplateIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the certificatetemplate are preserved.
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamMember`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamMember`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamMember`">`gcp.certificateauthority.CertificateTemplateIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the certificatetemplate are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamPolicy`">`gcp.certificateauthority.CertificateTemplateIamPolicy`</span>: Retrieves the IAM policy for the certificatetemplate
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamPolicy`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamPolicy`">`gcp.certificateauthority.CertificateTemplateIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamBinding`">`gcp.certificateauthority.CertificateTemplateIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamMember`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamMember`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamMember`">`gcp.certificateauthority.CertificateTemplateIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamBinding`">`gcp.certificateauthority.CertificateTemplateIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamMember`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamMember`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamMember`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamMember`">`gcp.certificateauthority.CertificateTemplateIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.certificateauthority.CertificateTemplateIamPolicy
/// " pulumi-lang-dotnet=" gcp.certificateauthority.CertificateTemplateIamPolicy
/// " pulumi-lang-go=" certificateauthority.CertificateTemplateIamPolicy
/// " pulumi-lang-python=" certificateauthority.CertificateTemplateIamPolicy
/// " pulumi-lang-yaml=" gcp.certificateauthority.CertificateTemplateIamPolicy
/// " pulumi-lang-java=" gcp.certificateauthority.CertificateTemplateIamPolicy
/// "> gcp.certificateauthority.CertificateTemplateIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/privateca.templateUser",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.certificateauthority.CertificateTemplateIamPolicy("policy", {
/// certificateTemplate: _default.id,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/privateca.templateUser",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.certificateauthority.CertificateTemplateIamPolicy("policy",
/// certificate_template=default["id"],
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
/// Role = "roles/privateca.templateUser",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.CertificateAuthority.CertificateTemplateIamPolicy("policy", new()
/// {
/// CertificateTemplate = @default.Id,
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
/// Role: "roles/privateca.templateUser",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = certificateauthority.NewCertificateTemplateIamPolicy(ctx, "policy", &certificateauthority.CertificateTemplateIamPolicyArgs{
/// CertificateTemplate: pulumi.Any(_default.Id),
/// PolicyData:          pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamPolicy;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamPolicyArgs;
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
/// .role("roles/privateca.templateUser")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new CertificateTemplateIamPolicy("policy", CertificateTemplateIamPolicyArgs.builder()
/// .certificateTemplate(default_.id())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:certificateauthority:CertificateTemplateIamPolicy
/// properties:
/// certificateTemplate: ${default.id}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/privateca.templateUser
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
/// role: "roles/privateca.templateUser",
/// members: ["user:jane@example.com"],
/// condition: {
/// title: "expires_after_2019_12_31",
/// description: "Expiring at midnight of 2019-12-31",
/// expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }],
/// });
/// const policy = new gcp.certificateauthority.CertificateTemplateIamPolicy("policy", {
/// certificateTemplate: _default.id,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/privateca.templateUser",
/// "members": ["user:jane@example.com"],
/// "condition": {
/// "title": "expires_after_2019_12_31",
/// "description": "Expiring at midnight of 2019-12-31",
/// "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// },
/// }])
/// policy = gcp.certificateauthority.CertificateTemplateIamPolicy("policy",
/// certificate_template=default["id"],
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
/// Role = "roles/privateca.templateUser",
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
/// var policy = new Gcp.CertificateAuthority.CertificateTemplateIamPolicy("policy", new()
/// {
/// CertificateTemplate = @default.Id,
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
/// Role: "roles/privateca.templateUser",
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
/// _, err = certificateauthority.NewCertificateTemplateIamPolicy(ctx, "policy", &certificateauthority.CertificateTemplateIamPolicyArgs{
/// CertificateTemplate: pulumi.Any(_default.Id),
/// PolicyData:          pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamPolicy;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamPolicyArgs;
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
/// .role("roles/privateca.templateUser")
/// .members("user:jane@example.com")
/// .condition(GetIAMPolicyBindingConditionArgs.builder()
/// .title("expires_after_2019_12_31")
/// .description("Expiring at midnight of 2019-12-31")
/// .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
/// .build())
/// .build())
/// .build());
///
/// var policy = new CertificateTemplateIamPolicy("policy", CertificateTemplateIamPolicyArgs.builder()
/// .certificateTemplate(default_.id())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:certificateauthority:CertificateTemplateIamPolicy
/// properties:
/// certificateTemplate: ${default.id}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/privateca.templateUser
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.certificateauthority.CertificateTemplateIamBinding
/// " pulumi-lang-dotnet=" gcp.certificateauthority.CertificateTemplateIamBinding
/// " pulumi-lang-go=" certificateauthority.CertificateTemplateIamBinding
/// " pulumi-lang-python=" certificateauthority.CertificateTemplateIamBinding
/// " pulumi-lang-yaml=" gcp.certificateauthority.CertificateTemplateIamBinding
/// " pulumi-lang-java=" gcp.certificateauthority.CertificateTemplateIamBinding
/// "> gcp.certificateauthority.CertificateTemplateIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.certificateauthority.CertificateTemplateIamBinding("binding", {
/// certificateTemplate: _default.id,
/// role: "roles/privateca.templateUser",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.certificateauthority.CertificateTemplateIamBinding("binding",
/// certificate_template=default["id"],
/// role="roles/privateca.templateUser",
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
/// var binding = new Gcp.CertificateAuthority.CertificateTemplateIamBinding("binding", new()
/// {
/// CertificateTemplate = @default.Id,
/// Role = "roles/privateca.templateUser",
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
/// _, err := certificateauthority.NewCertificateTemplateIamBinding(ctx, "binding", &certificateauthority.CertificateTemplateIamBindingArgs{
/// CertificateTemplate: pulumi.Any(_default.Id),
/// Role:                pulumi.String("roles/privateca.templateUser"),
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
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamBinding;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamBindingArgs;
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
/// var binding = new CertificateTemplateIamBinding("binding", CertificateTemplateIamBindingArgs.builder()
/// .certificateTemplate(default_.id())
/// .role("roles/privateca.templateUser")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:certificateauthority:CertificateTemplateIamBinding
/// properties:
/// certificateTemplate: ${default.id}
/// role: roles/privateca.templateUser
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
/// const binding = new gcp.certificateauthority.CertificateTemplateIamBinding("binding", {
/// certificateTemplate: _default.id,
/// role: "roles/privateca.templateUser",
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
/// binding = gcp.certificateauthority.CertificateTemplateIamBinding("binding",
/// certificate_template=default["id"],
/// role="roles/privateca.templateUser",
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
/// var binding = new Gcp.CertificateAuthority.CertificateTemplateIamBinding("binding", new()
/// {
/// CertificateTemplate = @default.Id,
/// Role = "roles/privateca.templateUser",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// Condition = new Gcp.CertificateAuthority.Inputs.CertificateTemplateIamBindingConditionArgs
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
/// _, err := certificateauthority.NewCertificateTemplateIamBinding(ctx, "binding", &certificateauthority.CertificateTemplateIamBindingArgs{
/// CertificateTemplate: pulumi.Any(_default.Id),
/// Role:                pulumi.String("roles/privateca.templateUser"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
/// },
/// Condition: &certificateauthority.CertificateTemplateIamBindingConditionArgs{
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
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamBinding;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamBindingArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplateIamBindingConditionArgs;
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
/// var binding = new CertificateTemplateIamBinding("binding", CertificateTemplateIamBindingArgs.builder()
/// .certificateTemplate(default_.id())
/// .role("roles/privateca.templateUser")
/// .members("user:jane@example.com")
/// .condition(CertificateTemplateIamBindingConditionArgs.builder()
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
/// type: gcp:certificateauthority:CertificateTemplateIamBinding
/// properties:
/// certificateTemplate: ${default.id}
/// role: roles/privateca.templateUser
/// members:
/// - user:jane@example.com
/// condition:
/// title: expires_after_2019_12_31
/// description: Expiring at midnight of 2019-12-31
/// expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
/// <!--End PulumiCodeChooser -->
/// ##<span pulumi-lang-nodejs=" gcp.certificateauthority.CertificateTemplateIamMember
/// " pulumi-lang-dotnet=" gcp.certificateauthority.CertificateTemplateIamMember
/// " pulumi-lang-go=" certificateauthority.CertificateTemplateIamMember
/// " pulumi-lang-python=" certificateauthority.CertificateTemplateIamMember
/// " pulumi-lang-yaml=" gcp.certificateauthority.CertificateTemplateIamMember
/// " pulumi-lang-java=" gcp.certificateauthority.CertificateTemplateIamMember
/// "> gcp.certificateauthority.CertificateTemplateIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.certificateauthority.CertificateTemplateIamMember("member", {
/// certificateTemplate: _default.id,
/// role: "roles/privateca.templateUser",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.certificateauthority.CertificateTemplateIamMember("member",
/// certificate_template=default["id"],
/// role="roles/privateca.templateUser",
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
/// var member = new Gcp.CertificateAuthority.CertificateTemplateIamMember("member", new()
/// {
/// CertificateTemplate = @default.Id,
/// Role = "roles/privateca.templateUser",
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
/// _, err := certificateauthority.NewCertificateTemplateIamMember(ctx, "member", &certificateauthority.CertificateTemplateIamMemberArgs{
/// CertificateTemplate: pulumi.Any(_default.Id),
/// Role:                pulumi.String("roles/privateca.templateUser"),
/// Member:              pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamMember;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamMemberArgs;
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
/// var member = new CertificateTemplateIamMember("member", CertificateTemplateIamMemberArgs.builder()
/// .certificateTemplate(default_.id())
/// .role("roles/privateca.templateUser")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:certificateauthority:CertificateTemplateIamMember
/// properties:
/// certificateTemplate: ${default.id}
/// role: roles/privateca.templateUser
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
/// const member = new gcp.certificateauthority.CertificateTemplateIamMember("member", {
/// certificateTemplate: _default.id,
/// role: "roles/privateca.templateUser",
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
/// member = gcp.certificateauthority.CertificateTemplateIamMember("member",
/// certificate_template=default["id"],
/// role="roles/privateca.templateUser",
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
/// var member = new Gcp.CertificateAuthority.CertificateTemplateIamMember("member", new()
/// {
/// CertificateTemplate = @default.Id,
/// Role = "roles/privateca.templateUser",
/// Member = "user:jane@example.com",
/// Condition = new Gcp.CertificateAuthority.Inputs.CertificateTemplateIamMemberConditionArgs
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
/// _, err := certificateauthority.NewCertificateTemplateIamMember(ctx, "member", &certificateauthority.CertificateTemplateIamMemberArgs{
/// CertificateTemplate: pulumi.Any(_default.Id),
/// Role:                pulumi.String("roles/privateca.templateUser"),
/// Member:              pulumi.String("user:jane@example.com"),
/// Condition: &certificateauthority.CertificateTemplateIamMemberConditionArgs{
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
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamMember;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateIamMemberArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplateIamMemberConditionArgs;
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
/// var member = new CertificateTemplateIamMember("member", CertificateTemplateIamMemberArgs.builder()
/// .certificateTemplate(default_.id())
/// .role("roles/privateca.templateUser")
/// .member("user:jane@example.com")
/// .condition(CertificateTemplateIamMemberConditionArgs.builder()
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
/// type: gcp:certificateauthority:CertificateTemplateIamMember
/// properties:
/// certificateTemplate: ${default.id}
/// role: roles/privateca.templateUser
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
/// * projects/{{project}}/locations/{{location}}/certificateTemplates/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Certificate Authority Service certificatetemplate IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificateTemplateIamBinding:CertificateTemplateIamBinding editor "projects/{{project}}/locations/{{location}}/certificateTemplates/{{certificate_template}} roles/privateca.templateUser user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificateTemplateIamBinding:CertificateTemplateIamBinding editor "projects/{{project}}/locations/{{location}}/certificateTemplates/{{certificate_template}} roles/privateca.templateUser"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificateTemplateIamBinding:CertificateTemplateIamBinding editor projects/{{project}}/locations/{{location}}/certificateTemplates/{{certificate_template}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class CertificateTemplateIamBinding extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> certificateTemplate;

  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final Output<CertificateTemplateIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location for the resource Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

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
  /// <span pulumi-lang-nodejs="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-dotnet="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-go="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-python="`certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-yaml="`gcp.certificateauthority.CertificateTemplateIamBinding`" pulumi-lang-java="`gcp.certificateauthority.CertificateTemplateIamBinding`">`gcp.certificateauthority.CertificateTemplateIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  CertificateTemplateIamBinding(
    String name, {
    CertificateTemplateIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:certificateauthority/certificateTemplateIamBinding:CertificateTemplateIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateTemplate = Output.createUnknown<String>();
    this.condition =
        Output.createUnknown<CertificateTemplateIamBindingCondition?>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.project = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
