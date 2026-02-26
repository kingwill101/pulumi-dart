import 'package:pulumi/pulumi.dart';
import '../dataset_iam_binding_condition/dataset_iam_binding_condition2.dart';
import 'dataset_iam_binding_args2.dart';

/// Three different resources help you manage your IAM policy for Healthcare dataset. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.healthcare.DatasetIamPolicy`" pulumi-lang-dotnet="`gcp.healthcare.DatasetIamPolicy`" pulumi-lang-go="`healthcare.DatasetIamPolicy`" pulumi-lang-python="`healthcare.DatasetIamPolicy`" pulumi-lang-yaml="`gcp.healthcare.DatasetIamPolicy`" pulumi-lang-java="`gcp.healthcare.DatasetIamPolicy`">`gcp.healthcare.DatasetIamPolicy`</span>: Authoritative. Sets the IAM policy for the dataset and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.healthcare.DatasetIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.DatasetIamBinding`" pulumi-lang-go="`healthcare.DatasetIamBinding`" pulumi-lang-python="`healthcare.DatasetIamBinding`" pulumi-lang-yaml="`gcp.healthcare.DatasetIamBinding`" pulumi-lang-java="`gcp.healthcare.DatasetIamBinding`">`gcp.healthcare.DatasetIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the dataset are preserved.
/// * <span pulumi-lang-nodejs="`gcp.healthcare.DatasetIamMember`" pulumi-lang-dotnet="`gcp.healthcare.DatasetIamMember`" pulumi-lang-go="`healthcare.DatasetIamMember`" pulumi-lang-python="`healthcare.DatasetIamMember`" pulumi-lang-yaml="`gcp.healthcare.DatasetIamMember`" pulumi-lang-java="`gcp.healthcare.DatasetIamMember`">`gcp.healthcare.DatasetIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the dataset are preserved.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.healthcare.DatasetIamPolicy`" pulumi-lang-dotnet="`gcp.healthcare.DatasetIamPolicy`" pulumi-lang-go="`healthcare.DatasetIamPolicy`" pulumi-lang-python="`healthcare.DatasetIamPolicy`" pulumi-lang-yaml="`gcp.healthcare.DatasetIamPolicy`" pulumi-lang-java="`gcp.healthcare.DatasetIamPolicy`">`gcp.healthcare.DatasetIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.healthcare.DatasetIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.DatasetIamBinding`" pulumi-lang-go="`healthcare.DatasetIamBinding`" pulumi-lang-python="`healthcare.DatasetIamBinding`" pulumi-lang-yaml="`gcp.healthcare.DatasetIamBinding`" pulumi-lang-java="`gcp.healthcare.DatasetIamBinding`">`gcp.healthcare.DatasetIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.healthcare.DatasetIamMember`" pulumi-lang-dotnet="`gcp.healthcare.DatasetIamMember`" pulumi-lang-go="`healthcare.DatasetIamMember`" pulumi-lang-python="`healthcare.DatasetIamMember`" pulumi-lang-yaml="`gcp.healthcare.DatasetIamMember`" pulumi-lang-java="`gcp.healthcare.DatasetIamMember`">`gcp.healthcare.DatasetIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.healthcare.DatasetIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.DatasetIamBinding`" pulumi-lang-go="`healthcare.DatasetIamBinding`" pulumi-lang-python="`healthcare.DatasetIamBinding`" pulumi-lang-yaml="`gcp.healthcare.DatasetIamBinding`" pulumi-lang-java="`gcp.healthcare.DatasetIamBinding`">`gcp.healthcare.DatasetIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.healthcare.DatasetIamMember`" pulumi-lang-dotnet="`gcp.healthcare.DatasetIamMember`" pulumi-lang-go="`healthcare.DatasetIamMember`" pulumi-lang-python="`healthcare.DatasetIamMember`" pulumi-lang-yaml="`gcp.healthcare.DatasetIamMember`" pulumi-lang-java="`gcp.healthcare.DatasetIamMember`">`gcp.healthcare.DatasetIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.DatasetIamPolicy
/// " pulumi-lang-dotnet=" gcp.healthcare.DatasetIamPolicy
/// " pulumi-lang-go=" healthcare.DatasetIamPolicy
/// " pulumi-lang-python=" healthcare.DatasetIamPolicy
/// " pulumi-lang-yaml=" gcp.healthcare.DatasetIamPolicy
/// " pulumi-lang-java=" gcp.healthcare.DatasetIamPolicy
/// "> gcp.healthcare.DatasetIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const dataset = new gcp.healthcare.DatasetIamPolicy("dataset", {
/// datasetId: "your-dataset-id",
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/editor",
/// "members": ["user:jane@example.com"],
/// }])
/// dataset = gcp.healthcare.DatasetIamPolicy("dataset",
/// dataset_id="your-dataset-id",
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
/// Role = "roles/editor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var dataset = new Gcp.Healthcare.DatasetIamPolicy("dataset", new()
/// {
/// DatasetId = "your-dataset-id",
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
/// Role: "roles/editor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = healthcare.NewDatasetIamPolicy(ctx, "dataset", &healthcare.DatasetIamPolicyArgs{
/// DatasetId:  pulumi.String("your-dataset-id"),
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
/// import com.pulumi.gcp.healthcare.DatasetIamPolicy;
/// import com.pulumi.gcp.healthcare.DatasetIamPolicyArgs;
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
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var dataset = new DatasetIamPolicy("dataset", DatasetIamPolicyArgs.builder()
/// .datasetId("your-dataset-id")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataset:
/// type: gcp:healthcare:DatasetIamPolicy
/// properties:
/// datasetId: your-dataset-id
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.DatasetIamBinding
/// " pulumi-lang-dotnet=" gcp.healthcare.DatasetIamBinding
/// " pulumi-lang-go=" healthcare.DatasetIamBinding
/// " pulumi-lang-python=" healthcare.DatasetIamBinding
/// " pulumi-lang-yaml=" gcp.healthcare.DatasetIamBinding
/// " pulumi-lang-java=" gcp.healthcare.DatasetIamBinding
/// "> gcp.healthcare.DatasetIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.DatasetIamBinding("dataset", {
/// datasetId: "your-dataset-id",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.DatasetIamBinding("dataset",
/// dataset_id="your-dataset-id",
/// role="roles/editor",
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
/// var dataset = new Gcp.Healthcare.DatasetIamBinding("dataset", new()
/// {
/// DatasetId = "your-dataset-id",
/// Role = "roles/editor",
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
/// _, err := healthcare.NewDatasetIamBinding(ctx, "dataset", &healthcare.DatasetIamBindingArgs{
/// DatasetId: pulumi.String("your-dataset-id"),
/// Role:      pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.DatasetIamBinding;
/// import com.pulumi.gcp.healthcare.DatasetIamBindingArgs;
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
/// var dataset = new DatasetIamBinding("dataset", DatasetIamBindingArgs.builder()
/// .datasetId("your-dataset-id")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataset:
/// type: gcp:healthcare:DatasetIamBinding
/// properties:
/// datasetId: your-dataset-id
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.DatasetIamMember
/// " pulumi-lang-dotnet=" gcp.healthcare.DatasetIamMember
/// " pulumi-lang-go=" healthcare.DatasetIamMember
/// " pulumi-lang-python=" healthcare.DatasetIamMember
/// " pulumi-lang-yaml=" gcp.healthcare.DatasetIamMember
/// " pulumi-lang-java=" gcp.healthcare.DatasetIamMember
/// "> gcp.healthcare.DatasetIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.DatasetIamMember("dataset", {
/// datasetId: "your-dataset-id",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.DatasetIamMember("dataset",
/// dataset_id="your-dataset-id",
/// role="roles/editor",
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
/// var dataset = new Gcp.Healthcare.DatasetIamMember("dataset", new()
/// {
/// DatasetId = "your-dataset-id",
/// Role = "roles/editor",
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
/// _, err := healthcare.NewDatasetIamMember(ctx, "dataset", &healthcare.DatasetIamMemberArgs{
/// DatasetId: pulumi.String("your-dataset-id"),
/// Role:      pulumi.String("roles/editor"),
/// Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.healthcare.DatasetIamMember;
/// import com.pulumi.gcp.healthcare.DatasetIamMemberArgs;
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
/// var dataset = new DatasetIamMember("dataset", DatasetIamMemberArgs.builder()
/// .datasetId("your-dataset-id")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataset:
/// type: gcp:healthcare:DatasetIamMember
/// properties:
/// datasetId: your-dataset-id
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.DatasetIamBinding
/// " pulumi-lang-dotnet=" gcp.healthcare.DatasetIamBinding
/// " pulumi-lang-go=" healthcare.DatasetIamBinding
/// " pulumi-lang-python=" healthcare.DatasetIamBinding
/// " pulumi-lang-yaml=" gcp.healthcare.DatasetIamBinding
/// " pulumi-lang-java=" gcp.healthcare.DatasetIamBinding
/// "> gcp.healthcare.DatasetIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.DatasetIamBinding("dataset", {
/// datasetId: "your-dataset-id",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.DatasetIamBinding("dataset",
/// dataset_id="your-dataset-id",
/// role="roles/editor",
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
/// var dataset = new Gcp.Healthcare.DatasetIamBinding("dataset", new()
/// {
/// DatasetId = "your-dataset-id",
/// Role = "roles/editor",
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
/// _, err := healthcare.NewDatasetIamBinding(ctx, "dataset", &healthcare.DatasetIamBindingArgs{
/// DatasetId: pulumi.String("your-dataset-id"),
/// Role:      pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.DatasetIamBinding;
/// import com.pulumi.gcp.healthcare.DatasetIamBindingArgs;
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
/// var dataset = new DatasetIamBinding("dataset", DatasetIamBindingArgs.builder()
/// .datasetId("your-dataset-id")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataset:
/// type: gcp:healthcare:DatasetIamBinding
/// properties:
/// datasetId: your-dataset-id
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.DatasetIamMember
/// " pulumi-lang-dotnet=" gcp.healthcare.DatasetIamMember
/// " pulumi-lang-go=" healthcare.DatasetIamMember
/// " pulumi-lang-python=" healthcare.DatasetIamMember
/// " pulumi-lang-yaml=" gcp.healthcare.DatasetIamMember
/// " pulumi-lang-java=" gcp.healthcare.DatasetIamMember
/// "> gcp.healthcare.DatasetIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.healthcare.DatasetIamMember("dataset", {
/// datasetId: "your-dataset-id",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.healthcare.DatasetIamMember("dataset",
/// dataset_id="your-dataset-id",
/// role="roles/editor",
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
/// var dataset = new Gcp.Healthcare.DatasetIamMember("dataset", new()
/// {
/// DatasetId = "your-dataset-id",
/// Role = "roles/editor",
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
/// _, err := healthcare.NewDatasetIamMember(ctx, "dataset", &healthcare.DatasetIamMemberArgs{
/// DatasetId: pulumi.String("your-dataset-id"),
/// Role:      pulumi.String("roles/editor"),
/// Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.healthcare.DatasetIamMember;
/// import com.pulumi.gcp.healthcare.DatasetIamMemberArgs;
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
/// var dataset = new DatasetIamMember("dataset", DatasetIamMemberArgs.builder()
/// .datasetId("your-dataset-id")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataset:
/// type: gcp:healthcare:DatasetIamMember
/// properties:
/// datasetId: your-dataset-id
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Healthcase Dataset resource. For example:
///
/// * `"{{project_id}}/{{location}}/{{dataset}}"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "{{project_id}}/{{location}}/{{dataset}}"
///
/// to = google_healthcare_dataset_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:healthcare/datasetIamBinding:DatasetIamBinding default {{project_id}}/{{location}}/{{dataset}}
/// ```
class DatasetIamBinding2 extends CustomResource {
  late final Output<DatasetIamBindingCondition2?> condition;

  /// The dataset ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}` or
  /// `{location_name}/{dataset_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  late final Output<String> datasetId;

  /// (Computed) The etag of the dataset's IAM policy.
  late final Output<String> etag;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final Output<List<String>> members;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.healthcare.DatasetIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.DatasetIamBinding`" pulumi-lang-go="`healthcare.DatasetIamBinding`" pulumi-lang-python="`healthcare.DatasetIamBinding`" pulumi-lang-yaml="`gcp.healthcare.DatasetIamBinding`" pulumi-lang-java="`gcp.healthcare.DatasetIamBinding`">`gcp.healthcare.DatasetIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  DatasetIamBinding2(
    String name, {
    DatasetIamBindingArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/datasetIamBinding:DatasetIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<DatasetIamBindingCondition2?>('condition');
    this.datasetId = registerOutput<String>('datasetId');
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.role = registerOutput<String>('role');
  }
}
