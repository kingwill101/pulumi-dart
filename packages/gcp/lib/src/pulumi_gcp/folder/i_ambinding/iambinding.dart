import 'package:pulumi/pulumi.dart';
import '../iambinding_condition/iambinding_condition.dart';
import 'iambinding_args.dart';

/// Allows creation and management of a single binding within IAM policy for
/// an existing Google Cloud Platform folder.
///
/// > **Note:** This resource _must not_ be used in conjunction with
/// <span pulumi-lang-nodejs="`gcp.folder.IAMPolicy`" pulumi-lang-dotnet="`gcp.folder.IAMPolicy`" pulumi-lang-go="`folder.IAMPolicy`" pulumi-lang-python="`folder.IAMPolicy`" pulumi-lang-yaml="`gcp.folder.IAMPolicy`" pulumi-lang-java="`gcp.folder.IAMPolicy`">`gcp.folder.IAMPolicy`</span> or they will fight over what your policy
/// should be.
///
/// > **Note:** On create, this resource will overwrite members of any existing roles.
/// Use `pulumi import` and inspect the output to ensure
/// your existing members are preserved.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const department1 = new gcp.organizations.Folder("department1", {
/// displayName: "Department 1",
/// parent: "organizations/1234567",
/// });
/// const admin = new gcp.folder.IAMBinding("admin", {
/// folder: department1.name,
/// role: "roles/editor",
/// members: ["user:alice@gmail.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// department1 = gcp.organizations.Folder("department1",
/// display_name="Department 1",
/// parent="organizations/1234567")
/// admin = gcp.folder.IAMBinding("admin",
/// folder=department1.name,
/// role="roles/editor",
/// members=["user:alice@gmail.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var department1 = new Gcp.Organizations.Folder("department1", new()
/// {
/// DisplayName = "Department 1",
/// Parent = "organizations/1234567",
/// });
///
/// var admin = new Gcp.Folder.IAMBinding("admin", new()
/// {
/// Folder = department1.Name,
/// Role = "roles/editor",
/// Members = new[]
/// {
/// "user:alice@gmail.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// department1, err := organizations.NewFolder(ctx, "department1", &organizations.FolderArgs{
/// DisplayName: pulumi.String("Department 1"),
/// Parent:      pulumi.String("organizations/1234567"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = folder.NewIAMBinding(ctx, "admin", &folder.IAMBindingArgs{
/// Folder: department1.Name,
/// Role:   pulumi.String("roles/editor"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:alice@gmail.com"),
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.folder.IAMBinding;
/// import com.pulumi.gcp.folder.IAMBindingArgs;
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
/// var department1 = new Folder("department1", FolderArgs.builder()
/// .displayName("Department 1")
/// .parent("organizations/1234567")
/// .build());
///
/// var admin = new IAMBinding("admin", IAMBindingArgs.builder()
/// .folder(department1.name())
/// .role("roles/editor")
/// .members("user:alice@gmail.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// department1:
/// type: gcp:organizations:Folder
/// properties:
/// displayName: Department 1
/// parent: organizations/1234567
/// admin:
/// type: gcp:folder:IAMBinding
/// properties:
/// folder: ${department1.name}
/// role: roles/editor
/// members:
/// - user:alice@gmail.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// IAM binding imports use space-delimited identifiers; first the resource in question and then the role.  These bindings can be imported using the `folder` and role, e.g.
///
/// ```sh
/// $ pulumi import gcp:folder/iAMBinding:IAMBinding viewer "folder-name roles/viewer"
/// ```
///
/// -> **Custom Roles**: If you're importing a IAM binding with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class IAMBinding extends CustomResource {
  late final Output<IAMBindingCondition?> condition;

  /// (Computed) The etag of the folder's IAM policy.
  late final Output<String> etag;

  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  late final Output<String> folder;

  /// An array of identities that will be granted the privilege in the <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that is associated with a specific Google account. For example, alice@gmail.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  late final Output<List<String>> members;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.folder.IAMBinding`" pulumi-lang-dotnet="`gcp.folder.IAMBinding`" pulumi-lang-go="`folder.IAMBinding`" pulumi-lang-python="`folder.IAMBinding`" pulumi-lang-yaml="`gcp.folder.IAMBinding`" pulumi-lang-java="`gcp.folder.IAMBinding`">`gcp.folder.IAMBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  IAMBinding(
    String name, {
    IAMBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:folder/iAMBinding:IAMBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<IAMBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.folder = registerOutput<String>('folder');
    this.members = registerOutput<List<String>>('members');
    this.role = registerOutput<String>('role');
  }
}
