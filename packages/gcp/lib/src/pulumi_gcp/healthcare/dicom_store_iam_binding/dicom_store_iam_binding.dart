import 'package:pulumi/pulumi.dart';
import '../dicom_store_iam_binding_condition/dicom_store_iam_binding_condition.dart';
import 'dicom_store_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Healthcare DICOM store. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.healthcare.DicomStoreIamPolicy`" pulumi-lang-dotnet="`gcp.healthcare.DicomStoreIamPolicy`" pulumi-lang-go="`healthcare.DicomStoreIamPolicy`" pulumi-lang-python="`healthcare.DicomStoreIamPolicy`" pulumi-lang-yaml="`gcp.healthcare.DicomStoreIamPolicy`" pulumi-lang-java="`gcp.healthcare.DicomStoreIamPolicy`">`gcp.healthcare.DicomStoreIamPolicy`</span>: Authoritative. Sets the IAM policy for the DICOM store and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.healthcare.DicomStoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.DicomStoreIamBinding`" pulumi-lang-go="`healthcare.DicomStoreIamBinding`" pulumi-lang-python="`healthcare.DicomStoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.DicomStoreIamBinding`" pulumi-lang-java="`gcp.healthcare.DicomStoreIamBinding`">`gcp.healthcare.DicomStoreIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the DICOM store are preserved.
/// * <span pulumi-lang-nodejs="`gcp.healthcare.DicomStoreIamMember`" pulumi-lang-dotnet="`gcp.healthcare.DicomStoreIamMember`" pulumi-lang-go="`healthcare.DicomStoreIamMember`" pulumi-lang-python="`healthcare.DicomStoreIamMember`" pulumi-lang-yaml="`gcp.healthcare.DicomStoreIamMember`" pulumi-lang-java="`gcp.healthcare.DicomStoreIamMember`">`gcp.healthcare.DicomStoreIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the DICOM store are preserved.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.healthcare.DicomStoreIamPolicy`" pulumi-lang-dotnet="`gcp.healthcare.DicomStoreIamPolicy`" pulumi-lang-go="`healthcare.DicomStoreIamPolicy`" pulumi-lang-python="`healthcare.DicomStoreIamPolicy`" pulumi-lang-yaml="`gcp.healthcare.DicomStoreIamPolicy`" pulumi-lang-java="`gcp.healthcare.DicomStoreIamPolicy`">`gcp.healthcare.DicomStoreIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.healthcare.DicomStoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.DicomStoreIamBinding`" pulumi-lang-go="`healthcare.DicomStoreIamBinding`" pulumi-lang-python="`healthcare.DicomStoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.DicomStoreIamBinding`" pulumi-lang-java="`gcp.healthcare.DicomStoreIamBinding`">`gcp.healthcare.DicomStoreIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.healthcare.DicomStoreIamMember`" pulumi-lang-dotnet="`gcp.healthcare.DicomStoreIamMember`" pulumi-lang-go="`healthcare.DicomStoreIamMember`" pulumi-lang-python="`healthcare.DicomStoreIamMember`" pulumi-lang-yaml="`gcp.healthcare.DicomStoreIamMember`" pulumi-lang-java="`gcp.healthcare.DicomStoreIamMember`">`gcp.healthcare.DicomStoreIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.healthcare.DicomStoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.DicomStoreIamBinding`" pulumi-lang-go="`healthcare.DicomStoreIamBinding`" pulumi-lang-python="`healthcare.DicomStoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.DicomStoreIamBinding`" pulumi-lang-java="`gcp.healthcare.DicomStoreIamBinding`">`gcp.healthcare.DicomStoreIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.healthcare.DicomStoreIamMember`" pulumi-lang-dotnet="`gcp.healthcare.DicomStoreIamMember`" pulumi-lang-go="`healthcare.DicomStoreIamMember`" pulumi-lang-python="`healthcare.DicomStoreIamMember`" pulumi-lang-yaml="`gcp.healthcare.DicomStoreIamMember`" pulumi-lang-java="`gcp.healthcare.DicomStoreIamMember`">`gcp.healthcare.DicomStoreIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.DicomStoreIamPolicy
/// " pulumi-lang-dotnet=" gcp.healthcare.DicomStoreIamPolicy
/// " pulumi-lang-go=" healthcare.DicomStoreIamPolicy
/// " pulumi-lang-python=" healthcare.DicomStoreIamPolicy
/// " pulumi-lang-yaml=" gcp.healthcare.DicomStoreIamPolicy
/// " pulumi-lang-java=" gcp.healthcare.DicomStoreIamPolicy
/// "> gcp.healthcare.DicomStoreIamPolicy
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
/// const dicomStore = new gcp.healthcare.DicomStoreIamPolicy("dicom_store", {
/// dicomStoreId: "your-dicom-store-id",
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
/// dicom_store = gcp.healthcare.DicomStoreIamPolicy("dicom_store",
/// dicom_store_id="your-dicom-store-id",
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
/// var dicomStore = new Gcp.Healthcare.DicomStoreIamPolicy("dicom_store", new()
/// {
/// DicomStoreId = "your-dicom-store-id",
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
/// _, err = healthcare.NewDicomStoreIamPolicy(ctx, "dicom_store", &healthcare.DicomStoreIamPolicyArgs{
/// DicomStoreId: pulumi.String("your-dicom-store-id"),
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
/// import com.pulumi.gcp.healthcare.DicomStoreIamPolicy;
/// import com.pulumi.gcp.healthcare.DicomStoreIamPolicyArgs;
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
/// var dicomStore = new DicomStoreIamPolicy("dicomStore", DicomStoreIamPolicyArgs.builder()
/// .dicomStoreId("your-dicom-store-id")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dicomStore:
/// type: gcp:healthcare:DicomStoreIamPolicy
/// name: dicom_store
/// properties:
/// dicomStoreId: your-dicom-store-id
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
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.DicomStoreIamBinding
/// " pulumi-lang-dotnet=" gcp.healthcare.DicomStoreIamBinding
/// " pulumi-lang-go=" healthcare.DicomStoreIamBinding
/// " pulumi-lang-python=" healthcare.DicomStoreIamBinding
/// " pulumi-lang-yaml=" gcp.healthcare.DicomStoreIamBinding
/// " pulumi-lang-java=" gcp.healthcare.DicomStoreIamBinding
/// "> gcp.healthcare.DicomStoreIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dicomStore = new gcp.healthcare.DicomStoreIamBinding("dicom_store", {
/// dicomStoreId: "your-dicom-store-id",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dicom_store = gcp.healthcare.DicomStoreIamBinding("dicom_store",
/// dicom_store_id="your-dicom-store-id",
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
/// var dicomStore = new Gcp.Healthcare.DicomStoreIamBinding("dicom_store", new()
/// {
/// DicomStoreId = "your-dicom-store-id",
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
/// _, err := healthcare.NewDicomStoreIamBinding(ctx, "dicom_store", &healthcare.DicomStoreIamBindingArgs{
/// DicomStoreId: pulumi.String("your-dicom-store-id"),
/// Role:         pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.DicomStoreIamBinding;
/// import com.pulumi.gcp.healthcare.DicomStoreIamBindingArgs;
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
/// var dicomStore = new DicomStoreIamBinding("dicomStore", DicomStoreIamBindingArgs.builder()
/// .dicomStoreId("your-dicom-store-id")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dicomStore:
/// type: gcp:healthcare:DicomStoreIamBinding
/// name: dicom_store
/// properties:
/// dicomStoreId: your-dicom-store-id
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.DicomStoreIamMember
/// " pulumi-lang-dotnet=" gcp.healthcare.DicomStoreIamMember
/// " pulumi-lang-go=" healthcare.DicomStoreIamMember
/// " pulumi-lang-python=" healthcare.DicomStoreIamMember
/// " pulumi-lang-yaml=" gcp.healthcare.DicomStoreIamMember
/// " pulumi-lang-java=" gcp.healthcare.DicomStoreIamMember
/// "> gcp.healthcare.DicomStoreIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dicomStore = new gcp.healthcare.DicomStoreIamMember("dicom_store", {
/// dicomStoreId: "your-dicom-store-id",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dicom_store = gcp.healthcare.DicomStoreIamMember("dicom_store",
/// dicom_store_id="your-dicom-store-id",
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
/// var dicomStore = new Gcp.Healthcare.DicomStoreIamMember("dicom_store", new()
/// {
/// DicomStoreId = "your-dicom-store-id",
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
/// _, err := healthcare.NewDicomStoreIamMember(ctx, "dicom_store", &healthcare.DicomStoreIamMemberArgs{
/// DicomStoreId: pulumi.String("your-dicom-store-id"),
/// Role:         pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.DicomStoreIamMember;
/// import com.pulumi.gcp.healthcare.DicomStoreIamMemberArgs;
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
/// var dicomStore = new DicomStoreIamMember("dicomStore", DicomStoreIamMemberArgs.builder()
/// .dicomStoreId("your-dicom-store-id")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dicomStore:
/// type: gcp:healthcare:DicomStoreIamMember
/// name: dicom_store
/// properties:
/// dicomStoreId: your-dicom-store-id
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.DicomStoreIamBinding
/// " pulumi-lang-dotnet=" gcp.healthcare.DicomStoreIamBinding
/// " pulumi-lang-go=" healthcare.DicomStoreIamBinding
/// " pulumi-lang-python=" healthcare.DicomStoreIamBinding
/// " pulumi-lang-yaml=" gcp.healthcare.DicomStoreIamBinding
/// " pulumi-lang-java=" gcp.healthcare.DicomStoreIamBinding
/// "> gcp.healthcare.DicomStoreIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dicomStore = new gcp.healthcare.DicomStoreIamBinding("dicom_store", {
/// dicomStoreId: "your-dicom-store-id",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dicom_store = gcp.healthcare.DicomStoreIamBinding("dicom_store",
/// dicom_store_id="your-dicom-store-id",
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
/// var dicomStore = new Gcp.Healthcare.DicomStoreIamBinding("dicom_store", new()
/// {
/// DicomStoreId = "your-dicom-store-id",
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
/// _, err := healthcare.NewDicomStoreIamBinding(ctx, "dicom_store", &healthcare.DicomStoreIamBindingArgs{
/// DicomStoreId: pulumi.String("your-dicom-store-id"),
/// Role:         pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.DicomStoreIamBinding;
/// import com.pulumi.gcp.healthcare.DicomStoreIamBindingArgs;
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
/// var dicomStore = new DicomStoreIamBinding("dicomStore", DicomStoreIamBindingArgs.builder()
/// .dicomStoreId("your-dicom-store-id")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dicomStore:
/// type: gcp:healthcare:DicomStoreIamBinding
/// name: dicom_store
/// properties:
/// dicomStoreId: your-dicom-store-id
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.DicomStoreIamMember
/// " pulumi-lang-dotnet=" gcp.healthcare.DicomStoreIamMember
/// " pulumi-lang-go=" healthcare.DicomStoreIamMember
/// " pulumi-lang-python=" healthcare.DicomStoreIamMember
/// " pulumi-lang-yaml=" gcp.healthcare.DicomStoreIamMember
/// " pulumi-lang-java=" gcp.healthcare.DicomStoreIamMember
/// "> gcp.healthcare.DicomStoreIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dicomStore = new gcp.healthcare.DicomStoreIamMember("dicom_store", {
/// dicomStoreId: "your-dicom-store-id",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dicom_store = gcp.healthcare.DicomStoreIamMember("dicom_store",
/// dicom_store_id="your-dicom-store-id",
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
/// var dicomStore = new Gcp.Healthcare.DicomStoreIamMember("dicom_store", new()
/// {
/// DicomStoreId = "your-dicom-store-id",
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
/// _, err := healthcare.NewDicomStoreIamMember(ctx, "dicom_store", &healthcare.DicomStoreIamMemberArgs{
/// DicomStoreId: pulumi.String("your-dicom-store-id"),
/// Role:         pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.DicomStoreIamMember;
/// import com.pulumi.gcp.healthcare.DicomStoreIamMemberArgs;
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
/// var dicomStore = new DicomStoreIamMember("dicomStore", DicomStoreIamMemberArgs.builder()
/// .dicomStoreId("your-dicom-store-id")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dicomStore:
/// type: gcp:healthcare:DicomStoreIamMember
/// name: dicom_store
/// properties:
/// dicomStoreId: your-dicom-store-id
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Healthcare DICOM store resource. For example:
///
/// * `"{{project_id}}/{{location}}/{{dataset}}/{{dicom_store}}"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "{{project_id}}/{{location}}/{{dataset}}/{{dicom_store}}"
///
/// to = google_healthcare_dicom_store_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:healthcare/dicomStoreIamBinding:DicomStoreIamBinding default {{project_id}}/{{location}}/{{dataset}}/{{dicom_store}}
/// ```
class DicomStoreIamBinding extends CustomResource {
  late final Output<DicomStoreIamBindingCondition?> condition;

  /// The DICOM store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{dicom_store_name}` or
  /// `{location_name}/{dataset_name}/{dicom_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  late final Output<String> dicomStoreId;

  /// (Computed) The etag of the DICOM store's IAM policy.
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
  /// <span pulumi-lang-nodejs="`gcp.healthcare.DicomStoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.DicomStoreIamBinding`" pulumi-lang-go="`healthcare.DicomStoreIamBinding`" pulumi-lang-python="`healthcare.DicomStoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.DicomStoreIamBinding`" pulumi-lang-java="`gcp.healthcare.DicomStoreIamBinding`">`gcp.healthcare.DicomStoreIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  DicomStoreIamBinding(
    String name, {
    DicomStoreIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/dicomStoreIamBinding:DicomStoreIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = Output.createUnknown<DicomStoreIamBindingCondition?>();
    this.dicomStoreId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.members = Output.createUnknown<List<String>>();
    this.role = Output.createUnknown<String>();
  }
}
