import 'package:pulumi/pulumi.dart';
import '../ai_feature_online_store_featureview_iam_binding_condition/ai_feature_online_store_featureview_iam_binding_condition.dart';
import 'ai_feature_online_store_featureview_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Vertex AI FeatureOnlineStoreFeatureview. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`</span>: Authoritative. Sets the IAM policy for the featureonlinestorefeatureview and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featureonlinestorefeatureview are preserved.
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featureonlinestorefeatureview are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`</span>: Retrieves the IAM policy for the featureonlinestorefeatureview
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
/// " pulumi-lang-dotnet=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
/// " pulumi-lang-go=" vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
/// " pulumi-lang-python=" vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
/// " pulumi-lang-yaml=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
/// " pulumi-lang-java=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
/// "> gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
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
/// const policy = new gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy("policy", {
/// region: featureview.region,
/// featureOnlineStore: featureview.featureOnlineStore,
/// featureView: featureview.name,
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
/// policy = gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy("policy",
/// region=featureview["region"],
/// feature_online_store=featureview["featureOnlineStore"],
/// feature_view=featureview["name"],
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
/// var policy = new Gcp.Vertex.AiFeatureOnlineStoreFeatureviewIamPolicy("policy", new()
/// {
/// Region = featureview.Region,
/// FeatureOnlineStore = featureview.FeatureOnlineStore,
/// FeatureView = featureview.Name,
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
/// _, err = vertex.NewAiFeatureOnlineStoreFeatureviewIamPolicy(ctx, "policy", &vertex.AiFeatureOnlineStoreFeatureviewIamPolicyArgs{
/// Region:             pulumi.Any(featureview.Region),
/// FeatureOnlineStore: pulumi.Any(featureview.FeatureOnlineStore),
/// FeatureView:        pulumi.Any(featureview.Name),
/// PolicyData:         pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicyArgs;
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
/// var policy = new AiFeatureOnlineStoreFeatureviewIamPolicy("policy", AiFeatureOnlineStoreFeatureviewIamPolicyArgs.builder()
/// .region(featureview.region())
/// .featureOnlineStore(featureview.featureOnlineStore())
/// .featureView(featureview.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:vertex:AiFeatureOnlineStoreFeatureviewIamPolicy
/// properties:
/// region: ${featureview.region}
/// featureOnlineStore: ${featureview.featureOnlineStore}
/// featureView: ${featureview.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// " pulumi-lang-dotnet=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// " pulumi-lang-go=" vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// " pulumi-lang-python=" vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// " pulumi-lang-yaml=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// " pulumi-lang-java=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// "> gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding("binding", {
/// region: featureview.region,
/// featureOnlineStore: featureview.featureOnlineStore,
/// featureView: featureview.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding("binding",
/// region=featureview["region"],
/// feature_online_store=featureview["featureOnlineStore"],
/// feature_view=featureview["name"],
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
/// var binding = new Gcp.Vertex.AiFeatureOnlineStoreFeatureviewIamBinding("binding", new()
/// {
/// Region = featureview.Region,
/// FeatureOnlineStore = featureview.FeatureOnlineStore,
/// FeatureView = featureview.Name,
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
/// _, err := vertex.NewAiFeatureOnlineStoreFeatureviewIamBinding(ctx, "binding", &vertex.AiFeatureOnlineStoreFeatureviewIamBindingArgs{
/// Region:             pulumi.Any(featureview.Region),
/// FeatureOnlineStore: pulumi.Any(featureview.FeatureOnlineStore),
/// FeatureView:        pulumi.Any(featureview.Name),
/// Role:               pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBindingArgs;
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
/// var binding = new AiFeatureOnlineStoreFeatureviewIamBinding("binding", AiFeatureOnlineStoreFeatureviewIamBindingArgs.builder()
/// .region(featureview.region())
/// .featureOnlineStore(featureview.featureOnlineStore())
/// .featureView(featureview.name())
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
/// type: gcp:vertex:AiFeatureOnlineStoreFeatureviewIamBinding
/// properties:
/// region: ${featureview.region}
/// featureOnlineStore: ${featureview.featureOnlineStore}
/// featureView: ${featureview.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// " pulumi-lang-dotnet=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// " pulumi-lang-go=" vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// " pulumi-lang-python=" vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// " pulumi-lang-yaml=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// " pulumi-lang-java=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// "> gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember("member", {
/// region: featureview.region,
/// featureOnlineStore: featureview.featureOnlineStore,
/// featureView: featureview.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember("member",
/// region=featureview["region"],
/// feature_online_store=featureview["featureOnlineStore"],
/// feature_view=featureview["name"],
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
/// var member = new Gcp.Vertex.AiFeatureOnlineStoreFeatureviewIamMember("member", new()
/// {
/// Region = featureview.Region,
/// FeatureOnlineStore = featureview.FeatureOnlineStore,
/// FeatureView = featureview.Name,
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
/// _, err := vertex.NewAiFeatureOnlineStoreFeatureviewIamMember(ctx, "member", &vertex.AiFeatureOnlineStoreFeatureviewIamMemberArgs{
/// Region:             pulumi.Any(featureview.Region),
/// FeatureOnlineStore: pulumi.Any(featureview.FeatureOnlineStore),
/// FeatureView:        pulumi.Any(featureview.Name),
/// Role:               pulumi.String("roles/viewer"),
/// Member:             pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMemberArgs;
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
/// var member = new AiFeatureOnlineStoreFeatureviewIamMember("member", AiFeatureOnlineStoreFeatureviewIamMemberArgs.builder()
/// .region(featureview.region())
/// .featureOnlineStore(featureview.featureOnlineStore())
/// .featureView(featureview.name())
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
/// type: gcp:vertex:AiFeatureOnlineStoreFeatureviewIamMember
/// properties:
/// region: ${featureview.region}
/// featureOnlineStore: ${featureview.featureOnlineStore}
/// featureView: ${featureview.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Vertex AI FeatureOnlineStoreFeatureview
///
/// Three different resources help you manage your IAM policy for Vertex AI FeatureOnlineStoreFeatureview. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`</span>: Authoritative. Sets the IAM policy for the featureonlinestorefeatureview and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featureonlinestorefeatureview are preserved.
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featureonlinestorefeatureview are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`</span>: Retrieves the IAM policy for the featureonlinestorefeatureview
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
/// ##<span pulumi-lang-nodejs=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
/// " pulumi-lang-dotnet=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
/// " pulumi-lang-go=" vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
/// " pulumi-lang-python=" vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
/// " pulumi-lang-yaml=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
/// " pulumi-lang-java=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
/// "> gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy
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
/// const policy = new gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy("policy", {
/// region: featureview.region,
/// featureOnlineStore: featureview.featureOnlineStore,
/// featureView: featureview.name,
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
/// policy = gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy("policy",
/// region=featureview["region"],
/// feature_online_store=featureview["featureOnlineStore"],
/// feature_view=featureview["name"],
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
/// var policy = new Gcp.Vertex.AiFeatureOnlineStoreFeatureviewIamPolicy("policy", new()
/// {
/// Region = featureview.Region,
/// FeatureOnlineStore = featureview.FeatureOnlineStore,
/// FeatureView = featureview.Name,
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
/// _, err = vertex.NewAiFeatureOnlineStoreFeatureviewIamPolicy(ctx, "policy", &vertex.AiFeatureOnlineStoreFeatureviewIamPolicyArgs{
/// Region:             pulumi.Any(featureview.Region),
/// FeatureOnlineStore: pulumi.Any(featureview.FeatureOnlineStore),
/// FeatureView:        pulumi.Any(featureview.Name),
/// PolicyData:         pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicy;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewIamPolicyArgs;
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
/// var policy = new AiFeatureOnlineStoreFeatureviewIamPolicy("policy", AiFeatureOnlineStoreFeatureviewIamPolicyArgs.builder()
/// .region(featureview.region())
/// .featureOnlineStore(featureview.featureOnlineStore())
/// .featureView(featureview.name())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:vertex:AiFeatureOnlineStoreFeatureviewIamPolicy
/// properties:
/// region: ${featureview.region}
/// featureOnlineStore: ${featureview.featureOnlineStore}
/// featureView: ${featureview.name}
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
/// ##<span pulumi-lang-nodejs=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// " pulumi-lang-dotnet=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// " pulumi-lang-go=" vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// " pulumi-lang-python=" vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// " pulumi-lang-yaml=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// " pulumi-lang-java=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// "> gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding("binding", {
/// region: featureview.region,
/// featureOnlineStore: featureview.featureOnlineStore,
/// featureView: featureview.name,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding("binding",
/// region=featureview["region"],
/// feature_online_store=featureview["featureOnlineStore"],
/// feature_view=featureview["name"],
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
/// var binding = new Gcp.Vertex.AiFeatureOnlineStoreFeatureviewIamBinding("binding", new()
/// {
/// Region = featureview.Region,
/// FeatureOnlineStore = featureview.FeatureOnlineStore,
/// FeatureView = featureview.Name,
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
/// _, err := vertex.NewAiFeatureOnlineStoreFeatureviewIamBinding(ctx, "binding", &vertex.AiFeatureOnlineStoreFeatureviewIamBindingArgs{
/// Region:             pulumi.Any(featureview.Region),
/// FeatureOnlineStore: pulumi.Any(featureview.FeatureOnlineStore),
/// FeatureView:        pulumi.Any(featureview.Name),
/// Role:               pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBindingArgs;
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
/// var binding = new AiFeatureOnlineStoreFeatureviewIamBinding("binding", AiFeatureOnlineStoreFeatureviewIamBindingArgs.builder()
/// .region(featureview.region())
/// .featureOnlineStore(featureview.featureOnlineStore())
/// .featureView(featureview.name())
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
/// type: gcp:vertex:AiFeatureOnlineStoreFeatureviewIamBinding
/// properties:
/// region: ${featureview.region}
/// featureOnlineStore: ${featureview.featureOnlineStore}
/// featureView: ${featureview.name}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// " pulumi-lang-dotnet=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// " pulumi-lang-go=" vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// " pulumi-lang-python=" vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// " pulumi-lang-yaml=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// " pulumi-lang-java=" gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// "> gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember("member", {
/// region: featureview.region,
/// featureOnlineStore: featureview.featureOnlineStore,
/// featureView: featureview.name,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember("member",
/// region=featureview["region"],
/// feature_online_store=featureview["featureOnlineStore"],
/// feature_view=featureview["name"],
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
/// var member = new Gcp.Vertex.AiFeatureOnlineStoreFeatureviewIamMember("member", new()
/// {
/// Region = featureview.Region,
/// FeatureOnlineStore = featureview.FeatureOnlineStore,
/// FeatureView = featureview.Name,
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
/// _, err := vertex.NewAiFeatureOnlineStoreFeatureviewIamMember(ctx, "member", &vertex.AiFeatureOnlineStoreFeatureviewIamMemberArgs{
/// Region:             pulumi.Any(featureview.Region),
/// FeatureOnlineStore: pulumi.Any(featureview.FeatureOnlineStore),
/// FeatureView:        pulumi.Any(featureview.Name),
/// Role:               pulumi.String("roles/viewer"),
/// Member:             pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMember;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewIamMemberArgs;
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
/// var member = new AiFeatureOnlineStoreFeatureviewIamMember("member", AiFeatureOnlineStoreFeatureviewIamMemberArgs.builder()
/// .region(featureview.region())
/// .featureOnlineStore(featureview.featureOnlineStore())
/// .featureView(featureview.name())
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
/// type: gcp:vertex:AiFeatureOnlineStoreFeatureviewIamMember
/// properties:
/// region: ${featureview.region}
/// featureOnlineStore: ${featureview.featureOnlineStore}
/// featureView: ${featureview.name}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * {{feature_online_store}}/featureViews/{{name}}
///
/// * {{feature_online_store}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Vertex AI featureonlinestorefeatureview IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreFeatureviewIamBinding:AiFeatureOnlineStoreFeatureviewIamBinding editor "{{feature_online_store}}/featureViews/{{feature_online_store_featureview}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreFeatureviewIamBinding:AiFeatureOnlineStoreFeatureviewIamBinding editor "{{feature_online_store}}/featureViews/{{feature_online_store_featureview}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreFeatureviewIamBinding:AiFeatureOnlineStoreFeatureviewIamBinding editor {{feature_online_store}}/featureViews/{{feature_online_store_featureview}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AiFeatureOnlineStoreFeatureviewIamBinding extends CustomResource {
  late final Output<AiFeatureOnlineStoreFeatureviewIamBindingCondition?>
      condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The name of the FeatureOnlineStore to use for the featureview. Used to find the parent resource to bind the IAM policy to
  late final Output<String> featureOnlineStore;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> featureView;

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

  /// The region for the resource. It should be the same as the featureonlinestore region. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final Output<String> region;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-dotnet="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-go="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-python="`vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-yaml="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`" pulumi-lang-java="`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`">`gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  AiFeatureOnlineStoreFeatureviewIamBinding(
    String name, {
    AiFeatureOnlineStoreFeatureviewIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureOnlineStoreFeatureviewIamBinding:AiFeatureOnlineStoreFeatureviewIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<AiFeatureOnlineStoreFeatureviewIamBindingCondition?>(
            'condition');
    this.etag = registerOutput<String>('etag');
    this.featureOnlineStore = registerOutput<String>('featureOnlineStore');
    this.featureView = registerOutput<String>('featureView');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
