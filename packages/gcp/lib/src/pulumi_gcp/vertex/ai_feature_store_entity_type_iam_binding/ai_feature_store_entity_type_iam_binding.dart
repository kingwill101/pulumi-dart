import 'package:pulumi/pulumi.dart';
import '../ai_feature_store_entity_type_iam_binding_condition/ai_feature_store_entity_type_iam_binding_condition.dart';
import 'ai_feature_store_entity_type_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Vertex AI FeaturestoreEntitytype. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`">`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`</span>: Authoritative. Sets the IAM policy for the featurestoreentitytype and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`">`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featurestoreentitytype are preserved.
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`">`gcp.vertex.AiFeatureStoreEntityTypeIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featurestoreentitytype are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`">`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`</span>: Retrieves the IAM policy for the featurestoreentitytype
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`">`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`">`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`">`gcp.vertex.AiFeatureStoreEntityTypeIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`">`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`">`gcp.vertex.AiFeatureStoreEntityTypeIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
/// " pulumi-lang-dotnet=" gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
/// " pulumi-lang-go=" vertex.AiFeatureStoreEntityTypeIamPolicy
/// " pulumi-lang-python=" vertex.AiFeatureStoreEntityTypeIamPolicy
/// " pulumi-lang-yaml=" gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
/// " pulumi-lang-java=" gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
/// "> gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
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
/// const policy = new gcp.vertex.AiFeatureStoreEntityTypeIamPolicy("policy", {
/// featurestore: entity.featurestore,
/// entitytype: entity.name,
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
/// policy = gcp.vertex.AiFeatureStoreEntityTypeIamPolicy("policy",
/// featurestore=entity["featurestore"],
/// entitytype=entity["name"],
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
/// var policy = new Gcp.Vertex.AiFeatureStoreEntityTypeIamPolicy("policy", new()
/// {
/// Featurestore = entity.Featurestore,
/// Entitytype = entity.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
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
/// _, err = vertex.NewAiFeatureStoreEntityTypeIamPolicy(ctx, "policy", &vertex.AiFeatureStoreEntityTypeIamPolicyArgs{
/// Featurestore: pulumi.Any(entity.Featurestore),
/// Entitytype:   pulumi.Any(entity.Name),
/// PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamPolicy;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamPolicyArgs;
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
/// var policy = new AiFeatureStoreEntityTypeIamPolicy("policy", AiFeatureStoreEntityTypeIamPolicyArgs.builder()
/// .featurestore(entity.featurestore())
/// .entitytype(entity.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:vertex:AiFeatureStoreEntityTypeIamPolicy
/// properties:
/// featurestore: ${entity.featurestore}
/// entitytype: ${entity.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.vertex.AiFeatureStoreEntityTypeIamBinding
/// " pulumi-lang-dotnet=" gcp.vertex.AiFeatureStoreEntityTypeIamBinding
/// " pulumi-lang-go=" vertex.AiFeatureStoreEntityTypeIamBinding
/// " pulumi-lang-python=" vertex.AiFeatureStoreEntityTypeIamBinding
/// " pulumi-lang-yaml=" gcp.vertex.AiFeatureStoreEntityTypeIamBinding
/// " pulumi-lang-java=" gcp.vertex.AiFeatureStoreEntityTypeIamBinding
/// "> gcp.vertex.AiFeatureStoreEntityTypeIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.vertex.AiFeatureStoreEntityTypeIamBinding("binding", {
/// featurestore: entity.featurestore,
/// entitytype: entity.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.vertex.AiFeatureStoreEntityTypeIamBinding("binding",
/// featurestore=entity["featurestore"],
/// entitytype=entity["name"],
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
/// var binding = new Gcp.Vertex.AiFeatureStoreEntityTypeIamBinding("binding", new()
/// {
/// Featurestore = entity.Featurestore,
/// Entitytype = entity.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vertex.NewAiFeatureStoreEntityTypeIamBinding(ctx, "binding", &vertex.AiFeatureStoreEntityTypeIamBindingArgs{
/// Featurestore: pulumi.Any(entity.Featurestore),
/// Entitytype:   pulumi.Any(entity.Name),
/// Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamBinding;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamBindingArgs;
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
/// var binding = new AiFeatureStoreEntityTypeIamBinding("binding", AiFeatureStoreEntityTypeIamBindingArgs.builder()
/// .featurestore(entity.featurestore())
/// .entitytype(entity.name())
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
/// type: gcp:vertex:AiFeatureStoreEntityTypeIamBinding
/// properties:
/// featurestore: ${entity.featurestore}
/// entitytype: ${entity.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.vertex.AiFeatureStoreEntityTypeIamMember
/// " pulumi-lang-dotnet=" gcp.vertex.AiFeatureStoreEntityTypeIamMember
/// " pulumi-lang-go=" vertex.AiFeatureStoreEntityTypeIamMember
/// " pulumi-lang-python=" vertex.AiFeatureStoreEntityTypeIamMember
/// " pulumi-lang-yaml=" gcp.vertex.AiFeatureStoreEntityTypeIamMember
/// " pulumi-lang-java=" gcp.vertex.AiFeatureStoreEntityTypeIamMember
/// "> gcp.vertex.AiFeatureStoreEntityTypeIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.vertex.AiFeatureStoreEntityTypeIamMember("member", {
/// featurestore: entity.featurestore,
/// entitytype: entity.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.vertex.AiFeatureStoreEntityTypeIamMember("member",
/// featurestore=entity["featurestore"],
/// entitytype=entity["name"],
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
/// var member = new Gcp.Vertex.AiFeatureStoreEntityTypeIamMember("member", new()
/// {
/// Featurestore = entity.Featurestore,
/// Entitytype = entity.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vertex.NewAiFeatureStoreEntityTypeIamMember(ctx, "member", &vertex.AiFeatureStoreEntityTypeIamMemberArgs{
/// Featurestore: pulumi.Any(entity.Featurestore),
/// Entitytype:   pulumi.Any(entity.Name),
/// Role:         pulumi.String("roles/viewer"),
/// Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamMember;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamMemberArgs;
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
/// var member = new AiFeatureStoreEntityTypeIamMember("member", AiFeatureStoreEntityTypeIamMemberArgs.builder()
/// .featurestore(entity.featurestore())
/// .entitytype(entity.name())
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
/// type: gcp:vertex:AiFeatureStoreEntityTypeIamMember
/// properties:
/// featurestore: ${entity.featurestore}
/// entitytype: ${entity.name}
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
/// # IAM policy for Vertex AI FeaturestoreEntitytype
///
/// Three different resources help you manage your IAM policy for Vertex AI FeaturestoreEntitytype. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`">`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`</span>: Authoritative. Sets the IAM policy for the featurestoreentitytype and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`">`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featurestoreentitytype are preserved.
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`">`gcp.vertex.AiFeatureStoreEntityTypeIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featurestoreentitytype are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`">`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`</span>: Retrieves the IAM policy for the featurestoreentitytype
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`">`gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`">`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`">`gcp.vertex.AiFeatureStoreEntityTypeIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`">`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamMember`">`gcp.vertex.AiFeatureStoreEntityTypeIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
/// " pulumi-lang-dotnet=" gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
/// " pulumi-lang-go=" vertex.AiFeatureStoreEntityTypeIamPolicy
/// " pulumi-lang-python=" vertex.AiFeatureStoreEntityTypeIamPolicy
/// " pulumi-lang-yaml=" gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
/// " pulumi-lang-java=" gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
/// "> gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
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
/// const policy = new gcp.vertex.AiFeatureStoreEntityTypeIamPolicy("policy", {
/// featurestore: entity.featurestore,
/// entitytype: entity.name,
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
/// policy = gcp.vertex.AiFeatureStoreEntityTypeIamPolicy("policy",
/// featurestore=entity["featurestore"],
/// entitytype=entity["name"],
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
/// var policy = new Gcp.Vertex.AiFeatureStoreEntityTypeIamPolicy("policy", new()
/// {
/// Featurestore = entity.Featurestore,
/// Entitytype = entity.Name,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
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
/// _, err = vertex.NewAiFeatureStoreEntityTypeIamPolicy(ctx, "policy", &vertex.AiFeatureStoreEntityTypeIamPolicyArgs{
/// Featurestore: pulumi.Any(entity.Featurestore),
/// Entitytype:   pulumi.Any(entity.Name),
/// PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamPolicy;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamPolicyArgs;
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
/// var policy = new AiFeatureStoreEntityTypeIamPolicy("policy", AiFeatureStoreEntityTypeIamPolicyArgs.builder()
/// .featurestore(entity.featurestore())
/// .entitytype(entity.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:vertex:AiFeatureStoreEntityTypeIamPolicy
/// properties:
/// featurestore: ${entity.featurestore}
/// entitytype: ${entity.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.vertex.AiFeatureStoreEntityTypeIamBinding
/// " pulumi-lang-dotnet=" gcp.vertex.AiFeatureStoreEntityTypeIamBinding
/// " pulumi-lang-go=" vertex.AiFeatureStoreEntityTypeIamBinding
/// " pulumi-lang-python=" vertex.AiFeatureStoreEntityTypeIamBinding
/// " pulumi-lang-yaml=" gcp.vertex.AiFeatureStoreEntityTypeIamBinding
/// " pulumi-lang-java=" gcp.vertex.AiFeatureStoreEntityTypeIamBinding
/// "> gcp.vertex.AiFeatureStoreEntityTypeIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.vertex.AiFeatureStoreEntityTypeIamBinding("binding", {
/// featurestore: entity.featurestore,
/// entitytype: entity.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.vertex.AiFeatureStoreEntityTypeIamBinding("binding",
/// featurestore=entity["featurestore"],
/// entitytype=entity["name"],
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
/// var binding = new Gcp.Vertex.AiFeatureStoreEntityTypeIamBinding("binding", new()
/// {
/// Featurestore = entity.Featurestore,
/// Entitytype = entity.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vertex.NewAiFeatureStoreEntityTypeIamBinding(ctx, "binding", &vertex.AiFeatureStoreEntityTypeIamBindingArgs{
/// Featurestore: pulumi.Any(entity.Featurestore),
/// Entitytype:   pulumi.Any(entity.Name),
/// Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamBinding;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamBindingArgs;
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
/// var binding = new AiFeatureStoreEntityTypeIamBinding("binding", AiFeatureStoreEntityTypeIamBindingArgs.builder()
/// .featurestore(entity.featurestore())
/// .entitytype(entity.name())
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
/// type: gcp:vertex:AiFeatureStoreEntityTypeIamBinding
/// properties:
/// featurestore: ${entity.featurestore}
/// entitytype: ${entity.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.vertex.AiFeatureStoreEntityTypeIamMember
/// " pulumi-lang-dotnet=" gcp.vertex.AiFeatureStoreEntityTypeIamMember
/// " pulumi-lang-go=" vertex.AiFeatureStoreEntityTypeIamMember
/// " pulumi-lang-python=" vertex.AiFeatureStoreEntityTypeIamMember
/// " pulumi-lang-yaml=" gcp.vertex.AiFeatureStoreEntityTypeIamMember
/// " pulumi-lang-java=" gcp.vertex.AiFeatureStoreEntityTypeIamMember
/// "> gcp.vertex.AiFeatureStoreEntityTypeIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.vertex.AiFeatureStoreEntityTypeIamMember("member", {
/// featurestore: entity.featurestore,
/// entitytype: entity.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.vertex.AiFeatureStoreEntityTypeIamMember("member",
/// featurestore=entity["featurestore"],
/// entitytype=entity["name"],
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
/// var member = new Gcp.Vertex.AiFeatureStoreEntityTypeIamMember("member", new()
/// {
/// Featurestore = entity.Featurestore,
/// Entitytype = entity.Name,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vertex.NewAiFeatureStoreEntityTypeIamMember(ctx, "member", &vertex.AiFeatureStoreEntityTypeIamMemberArgs{
/// Featurestore: pulumi.Any(entity.Featurestore),
/// Entitytype:   pulumi.Any(entity.Name),
/// Role:         pulumi.String("roles/viewer"),
/// Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamMember;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamMemberArgs;
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
/// var member = new AiFeatureStoreEntityTypeIamMember("member", AiFeatureStoreEntityTypeIamMemberArgs.builder()
/// .featurestore(entity.featurestore())
/// .entitytype(entity.name())
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
/// type: gcp:vertex:AiFeatureStoreEntityTypeIamMember
/// properties:
/// featurestore: ${entity.featurestore}
/// entitytype: ${entity.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * {{featurestore}}/entityTypes/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Vertex AI featurestoreentitytype IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreEntityTypeIamBinding:AiFeatureStoreEntityTypeIamBinding editor "{{featurestore}}/entityTypes/{{featurestore_entitytype}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreEntityTypeIamBinding:AiFeatureStoreEntityTypeIamBinding editor "{{featurestore}}/entityTypes/{{featurestore_entitytype}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreEntityTypeIamBinding:AiFeatureStoreEntityTypeIamBinding editor {{featurestore}}/entityTypes/{{featurestore_entitytype}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AiFeatureStoreEntityTypeIamBinding extends CustomResource {
  late final Output<AiFeatureStoreEntityTypeIamBindingCondition?> condition;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> entitytype;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}. Used to find the parent resource to bind the IAM policy to
  late final Output<String> featurestore;

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

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-go="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-python="`vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`">`gcp.vertex.AiFeatureStoreEntityTypeIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  AiFeatureStoreEntityTypeIamBinding(
    String name, {
    AiFeatureStoreEntityTypeIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureStoreEntityTypeIamBinding:AiFeatureStoreEntityTypeIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<AiFeatureStoreEntityTypeIamBindingCondition?>(
            'condition');
    this.entitytype = registerOutput<String>('entitytype');
    this.etag = registerOutput<String>('etag');
    this.featurestore = registerOutput<String>('featurestore');
    this.members = registerOutput<List<String>>('members');
    this.role = registerOutput<String>('role');
  }
}
