import 'package:pulumi/pulumi.dart';
import 'consent_store_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Healthcare ConsentStore. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-go="`healthcare.ConsentStoreIamPolicy`" pulumi-lang-python="`healthcare.ConsentStoreIamPolicy`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamPolicy`">`gcp.healthcare.ConsentStoreIamPolicy`</span>: Authoritative. Sets the IAM policy for the consentstore and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-go="`healthcare.ConsentStoreIamBinding`" pulumi-lang-python="`healthcare.ConsentStoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamBinding`">`gcp.healthcare.ConsentStoreIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the consentstore are preserved.
/// * <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-go="`healthcare.ConsentStoreIamMember`" pulumi-lang-python="`healthcare.ConsentStoreIamMember`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamMember`">`gcp.healthcare.ConsentStoreIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the consentstore are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-go="`healthcare.ConsentStoreIamPolicy`" pulumi-lang-python="`healthcare.ConsentStoreIamPolicy`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamPolicy`">`gcp.healthcare.ConsentStoreIamPolicy`</span>: Retrieves the IAM policy for the consentstore
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-go="`healthcare.ConsentStoreIamPolicy`" pulumi-lang-python="`healthcare.ConsentStoreIamPolicy`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamPolicy`">`gcp.healthcare.ConsentStoreIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-go="`healthcare.ConsentStoreIamBinding`" pulumi-lang-python="`healthcare.ConsentStoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamBinding`">`gcp.healthcare.ConsentStoreIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-go="`healthcare.ConsentStoreIamMember`" pulumi-lang-python="`healthcare.ConsentStoreIamMember`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamMember`">`gcp.healthcare.ConsentStoreIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-go="`healthcare.ConsentStoreIamBinding`" pulumi-lang-python="`healthcare.ConsentStoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamBinding`">`gcp.healthcare.ConsentStoreIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-go="`healthcare.ConsentStoreIamMember`" pulumi-lang-python="`healthcare.ConsentStoreIamMember`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamMember`">`gcp.healthcare.ConsentStoreIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.ConsentStoreIamPolicy
/// " pulumi-lang-dotnet=" gcp.healthcare.ConsentStoreIamPolicy
/// " pulumi-lang-go=" healthcare.ConsentStoreIamPolicy
/// " pulumi-lang-python=" healthcare.ConsentStoreIamPolicy
/// " pulumi-lang-yaml=" gcp.healthcare.ConsentStoreIamPolicy
/// " pulumi-lang-java=" gcp.healthcare.ConsentStoreIamPolicy
/// "> gcp.healthcare.ConsentStoreIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.healthcare.ConsentStoreIamPolicy("policy", {
/// dataset: my_consent.dataset,
/// consentStoreId: my_consent.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.healthcare.ConsentStoreIamPolicy("policy",
/// dataset=my_consent["dataset"],
/// consent_store_id=my_consent["name"],
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
/// Role = "roles/viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Healthcare.ConsentStoreIamPolicy("policy", new()
/// {
/// Dataset = my_consent.Dataset,
/// ConsentStoreId = my_consent.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = healthcare.NewConsentStoreIamPolicy(ctx, "policy", &healthcare.ConsentStoreIamPolicyArgs{
/// Dataset:        pulumi.Any(my_consent.Dataset),
/// ConsentStoreId: pulumi.Any(my_consent.Name),
/// PolicyData:     pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.healthcare.ConsentStoreIamPolicy;
/// import com.pulumi.gcp.healthcare.ConsentStoreIamPolicyArgs;
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
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new ConsentStoreIamPolicy("policy", ConsentStoreIamPolicyArgs.builder()
/// .dataset(my_consent.dataset())
/// .consentStoreId(my_consent.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:healthcare:ConsentStoreIamPolicy
/// properties:
/// dataset: ${["my-consent"].dataset}
/// consentStoreId: ${["my-consent"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.ConsentStoreIamBinding
/// " pulumi-lang-dotnet=" gcp.healthcare.ConsentStoreIamBinding
/// " pulumi-lang-go=" healthcare.ConsentStoreIamBinding
/// " pulumi-lang-python=" healthcare.ConsentStoreIamBinding
/// " pulumi-lang-yaml=" gcp.healthcare.ConsentStoreIamBinding
/// " pulumi-lang-java=" gcp.healthcare.ConsentStoreIamBinding
/// "> gcp.healthcare.ConsentStoreIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.healthcare.ConsentStoreIamBinding("binding", {
/// dataset: my_consent.dataset,
/// consentStoreId: my_consent.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.healthcare.ConsentStoreIamBinding("binding",
/// dataset=my_consent["dataset"],
/// consent_store_id=my_consent["name"],
/// role="roles/viewer",
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
/// var binding = new Gcp.Healthcare.ConsentStoreIamBinding("binding", new()
/// {
/// Dataset = my_consent.Dataset,
/// ConsentStoreId = my_consent.Name,
/// Role = "roles/viewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := healthcare.NewConsentStoreIamBinding(ctx, "binding", &healthcare.ConsentStoreIamBindingArgs{
/// Dataset:        pulumi.Any(my_consent.Dataset),
/// ConsentStoreId: pulumi.Any(my_consent.Name),
/// Role:           pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.healthcare.ConsentStoreIamBinding;
/// import com.pulumi.gcp.healthcare.ConsentStoreIamBindingArgs;
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
/// var binding = new ConsentStoreIamBinding("binding", ConsentStoreIamBindingArgs.builder()
/// .dataset(my_consent.dataset())
/// .consentStoreId(my_consent.name())
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:healthcare:ConsentStoreIamBinding
/// properties:
/// dataset: ${["my-consent"].dataset}
/// consentStoreId: ${["my-consent"].name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.ConsentStoreIamMember
/// " pulumi-lang-dotnet=" gcp.healthcare.ConsentStoreIamMember
/// " pulumi-lang-go=" healthcare.ConsentStoreIamMember
/// " pulumi-lang-python=" healthcare.ConsentStoreIamMember
/// " pulumi-lang-yaml=" gcp.healthcare.ConsentStoreIamMember
/// " pulumi-lang-java=" gcp.healthcare.ConsentStoreIamMember
/// "> gcp.healthcare.ConsentStoreIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.healthcare.ConsentStoreIamMember("member", {
/// dataset: my_consent.dataset,
/// consentStoreId: my_consent.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.healthcare.ConsentStoreIamMember("member",
/// dataset=my_consent["dataset"],
/// consent_store_id=my_consent["name"],
/// role="roles/viewer",
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
/// var member = new Gcp.Healthcare.ConsentStoreIamMember("member", new()
/// {
/// Dataset = my_consent.Dataset,
/// ConsentStoreId = my_consent.Name,
/// Role = "roles/viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := healthcare.NewConsentStoreIamMember(ctx, "member", &healthcare.ConsentStoreIamMemberArgs{
/// Dataset:        pulumi.Any(my_consent.Dataset),
/// ConsentStoreId: pulumi.Any(my_consent.Name),
/// Role:           pulumi.String("roles/viewer"),
/// Member:         pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.healthcare.ConsentStoreIamMember;
/// import com.pulumi.gcp.healthcare.ConsentStoreIamMemberArgs;
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
/// var member = new ConsentStoreIamMember("member", ConsentStoreIamMemberArgs.builder()
/// .dataset(my_consent.dataset())
/// .consentStoreId(my_consent.name())
/// .role("roles/viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:healthcare:ConsentStoreIamMember
/// properties:
/// dataset: ${["my-consent"].dataset}
/// consentStoreId: ${["my-consent"].name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## > **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
/// -
///
/// # IAM policy for Cloud Healthcare ConsentStore
///
/// Three different resources help you manage your IAM policy for Cloud Healthcare ConsentStore. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-go="`healthcare.ConsentStoreIamPolicy`" pulumi-lang-python="`healthcare.ConsentStoreIamPolicy`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamPolicy`">`gcp.healthcare.ConsentStoreIamPolicy`</span>: Authoritative. Sets the IAM policy for the consentstore and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-go="`healthcare.ConsentStoreIamBinding`" pulumi-lang-python="`healthcare.ConsentStoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamBinding`">`gcp.healthcare.ConsentStoreIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the consentstore are preserved.
/// * <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-go="`healthcare.ConsentStoreIamMember`" pulumi-lang-python="`healthcare.ConsentStoreIamMember`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamMember`">`gcp.healthcare.ConsentStoreIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the consentstore are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-go="`healthcare.ConsentStoreIamPolicy`" pulumi-lang-python="`healthcare.ConsentStoreIamPolicy`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamPolicy`">`gcp.healthcare.ConsentStoreIamPolicy`</span>: Retrieves the IAM policy for the consentstore
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-go="`healthcare.ConsentStoreIamPolicy`" pulumi-lang-python="`healthcare.ConsentStoreIamPolicy`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamPolicy`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamPolicy`">`gcp.healthcare.ConsentStoreIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-go="`healthcare.ConsentStoreIamBinding`" pulumi-lang-python="`healthcare.ConsentStoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamBinding`">`gcp.healthcare.ConsentStoreIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-go="`healthcare.ConsentStoreIamMember`" pulumi-lang-python="`healthcare.ConsentStoreIamMember`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamMember`">`gcp.healthcare.ConsentStoreIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-go="`healthcare.ConsentStoreIamBinding`" pulumi-lang-python="`healthcare.ConsentStoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamBinding`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamBinding`">`gcp.healthcare.ConsentStoreIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-dotnet="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-go="`healthcare.ConsentStoreIamMember`" pulumi-lang-python="`healthcare.ConsentStoreIamMember`" pulumi-lang-yaml="`gcp.healthcare.ConsentStoreIamMember`" pulumi-lang-java="`gcp.healthcare.ConsentStoreIamMember`">`gcp.healthcare.ConsentStoreIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.ConsentStoreIamPolicy
/// " pulumi-lang-dotnet=" gcp.healthcare.ConsentStoreIamPolicy
/// " pulumi-lang-go=" healthcare.ConsentStoreIamPolicy
/// " pulumi-lang-python=" healthcare.ConsentStoreIamPolicy
/// " pulumi-lang-yaml=" gcp.healthcare.ConsentStoreIamPolicy
/// " pulumi-lang-java=" gcp.healthcare.ConsentStoreIamPolicy
/// "> gcp.healthcare.ConsentStoreIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.healthcare.ConsentStoreIamPolicy("policy", {
/// dataset: my_consent.dataset,
/// consentStoreId: my_consent.name,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.healthcare.ConsentStoreIamPolicy("policy",
/// dataset=my_consent["dataset"],
/// consent_store_id=my_consent["name"],
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
/// Role = "roles/viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.Healthcare.ConsentStoreIamPolicy("policy", new()
/// {
/// Dataset = my_consent.Dataset,
/// ConsentStoreId = my_consent.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = healthcare.NewConsentStoreIamPolicy(ctx, "policy", &healthcare.ConsentStoreIamPolicyArgs{
/// Dataset:        pulumi.Any(my_consent.Dataset),
/// ConsentStoreId: pulumi.Any(my_consent.Name),
/// PolicyData:     pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.healthcare.ConsentStoreIamPolicy;
/// import com.pulumi.gcp.healthcare.ConsentStoreIamPolicyArgs;
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
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new ConsentStoreIamPolicy("policy", ConsentStoreIamPolicyArgs.builder()
/// .dataset(my_consent.dataset())
/// .consentStoreId(my_consent.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:healthcare:ConsentStoreIamPolicy
/// properties:
/// dataset: ${["my-consent"].dataset}
/// consentStoreId: ${["my-consent"].name}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.ConsentStoreIamBinding
/// " pulumi-lang-dotnet=" gcp.healthcare.ConsentStoreIamBinding
/// " pulumi-lang-go=" healthcare.ConsentStoreIamBinding
/// " pulumi-lang-python=" healthcare.ConsentStoreIamBinding
/// " pulumi-lang-yaml=" gcp.healthcare.ConsentStoreIamBinding
/// " pulumi-lang-java=" gcp.healthcare.ConsentStoreIamBinding
/// "> gcp.healthcare.ConsentStoreIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.healthcare.ConsentStoreIamBinding("binding", {
/// dataset: my_consent.dataset,
/// consentStoreId: my_consent.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.healthcare.ConsentStoreIamBinding("binding",
/// dataset=my_consent["dataset"],
/// consent_store_id=my_consent["name"],
/// role="roles/viewer",
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
/// var binding = new Gcp.Healthcare.ConsentStoreIamBinding("binding", new()
/// {
/// Dataset = my_consent.Dataset,
/// ConsentStoreId = my_consent.Name,
/// Role = "roles/viewer",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := healthcare.NewConsentStoreIamBinding(ctx, "binding", &healthcare.ConsentStoreIamBindingArgs{
/// Dataset:        pulumi.Any(my_consent.Dataset),
/// ConsentStoreId: pulumi.Any(my_consent.Name),
/// Role:           pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.healthcare.ConsentStoreIamBinding;
/// import com.pulumi.gcp.healthcare.ConsentStoreIamBindingArgs;
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
/// var binding = new ConsentStoreIamBinding("binding", ConsentStoreIamBindingArgs.builder()
/// .dataset(my_consent.dataset())
/// .consentStoreId(my_consent.name())
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:healthcare:ConsentStoreIamBinding
/// properties:
/// dataset: ${["my-consent"].dataset}
/// consentStoreId: ${["my-consent"].name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.ConsentStoreIamMember
/// " pulumi-lang-dotnet=" gcp.healthcare.ConsentStoreIamMember
/// " pulumi-lang-go=" healthcare.ConsentStoreIamMember
/// " pulumi-lang-python=" healthcare.ConsentStoreIamMember
/// " pulumi-lang-yaml=" gcp.healthcare.ConsentStoreIamMember
/// " pulumi-lang-java=" gcp.healthcare.ConsentStoreIamMember
/// "> gcp.healthcare.ConsentStoreIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.healthcare.ConsentStoreIamMember("member", {
/// dataset: my_consent.dataset,
/// consentStoreId: my_consent.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.healthcare.ConsentStoreIamMember("member",
/// dataset=my_consent["dataset"],
/// consent_store_id=my_consent["name"],
/// role="roles/viewer",
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
/// var member = new Gcp.Healthcare.ConsentStoreIamMember("member", new()
/// {
/// Dataset = my_consent.Dataset,
/// ConsentStoreId = my_consent.Name,
/// Role = "roles/viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := healthcare.NewConsentStoreIamMember(ctx, "member", &healthcare.ConsentStoreIamMemberArgs{
/// Dataset:        pulumi.Any(my_consent.Dataset),
/// ConsentStoreId: pulumi.Any(my_consent.Name),
/// Role:           pulumi.String("roles/viewer"),
/// Member:         pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.healthcare.ConsentStoreIamMember;
/// import com.pulumi.gcp.healthcare.ConsentStoreIamMemberArgs;
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
/// var member = new ConsentStoreIamMember("member", ConsentStoreIamMemberArgs.builder()
/// .dataset(my_consent.dataset())
/// .consentStoreId(my_consent.name())
/// .role("roles/viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:healthcare:ConsentStoreIamMember
/// properties:
/// dataset: ${["my-consent"].dataset}
/// consentStoreId: ${["my-consent"].name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * {{dataset}}/consentStores/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Healthcare consentstore IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:healthcare/consentStoreIamPolicy:ConsentStoreIamPolicy editor "{{dataset}}/consentStores/{{consent_store}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:healthcare/consentStoreIamPolicy:ConsentStoreIamPolicy editor "{{dataset}}/consentStores/{{consent_store}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:healthcare/consentStoreIamPolicy:ConsentStoreIamPolicy editor {{dataset}}/consentStores/{{consent_store}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ConsentStoreIamPolicy extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> consentStoreId;

  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> dataset;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  ConsentStoreIamPolicy(
    String name, {
    ConsentStoreIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/consentStoreIamPolicy:ConsentStoreIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.consentStoreId = registerOutput<String>('consentStoreId');
    this.dataset = registerOutput<String>('dataset');
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
  }
}
