import 'package:pulumi/pulumi.dart' as pulumi;
import 'folders_policy_binding_args.dart';
import 'folders_policy_binding_condition.dart';
import 'folders_policy_binding_target.dart';

/// ## Example Usage
///
/// ### Iam Folders Policy Binding
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const pabPolicy = new gcp.iam.PrincipalAccessBoundaryPolicy("pab_policy", {
///     organization: "123456789",
///     location: "global",
///     displayName: "binding for all principals in the folder",
///     principalAccessBoundaryPolicyId: "my-pab-policy",
/// });
/// const folder = new gcp.organizations.Folder("folder", {
///     displayName: "my folder",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const wait120s = new time.Sleep("wait_120s", {createDuration: "120s"}, {
///     dependsOn: [folder],
/// });
/// const binding_for_all_folder_principals = new gcp.iam.FoldersPolicyBinding("binding-for-all-folder-principals", {
///     folder: folder.folderId,
///     location: "global",
///     displayName: "binding for all principals in the folder",
///     policyKind: "PRINCIPAL_ACCESS_BOUNDARY",
///     policyBindingId: "binding-for-all-folder-principals",
///     policy: pulumi.interpolate`organizations/123456789/locations/global/principalAccessBoundaryPolicies/${pabPolicy.principalAccessBoundaryPolicyId}`,
///     target: {
///         principalSet: pulumi.interpolate`//cloudresourcemanager.googleapis.com/folders/${folder.folderId}`,
///     },
/// }, {
///     dependsOn: [wait120s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// pab_policy = gcp.iam.PrincipalAccessBoundaryPolicy("pab_policy",
///     organization="123456789",
///     location="global",
///     display_name="binding for all principals in the folder",
///     principal_access_boundary_policy_id="my-pab-policy")
/// folder = gcp.organizations.Folder("folder",
///     display_name="my folder",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// wait120s = time.Sleep("wait_120s", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[folder]))
/// binding_for_all_folder_principals = gcp.iam.FoldersPolicyBinding("binding-for-all-folder-principals",
///     folder=folder.folder_id,
///     location="global",
///     display_name="binding for all principals in the folder",
///     policy_kind="PRINCIPAL_ACCESS_BOUNDARY",
///     policy_binding_id="binding-for-all-folder-principals",
///     policy=pab_policy.principal_access_boundary_policy_id.apply(lambda principal_access_boundary_policy_id: f"organizations/123456789/locations/global/principalAccessBoundaryPolicies/{principal_access_boundary_policy_id}"),
///     target={
///         "principal_set": folder.folder_id.apply(lambda folder_id: f"//cloudresourcemanager.googleapis.com/folders/{folder_id}"),
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait120s]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pabPolicy = new Gcp.Iam.PrincipalAccessBoundaryPolicy("pab_policy", new()
///     {
///         Organization = "123456789",
///         Location = "global",
///         DisplayName = "binding for all principals in the folder",
///         PrincipalAccessBoundaryPolicyId = "my-pab-policy",
///     });
///
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         DisplayName = "my folder",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var wait120s = new Time.Sleep("wait_120s", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             folder,
///         },
///     });
///
///     var binding_for_all_folder_principals = new Gcp.Iam.FoldersPolicyBinding("binding-for-all-folder-principals", new()
///     {
///         Folder = folder.FolderId,
///         Location = "global",
///         DisplayName = "binding for all principals in the folder",
///         PolicyKind = "PRINCIPAL_ACCESS_BOUNDARY",
///         PolicyBindingId = "binding-for-all-folder-principals",
///         Policy = pabPolicy.PrincipalAccessBoundaryPolicyId.Apply(principalAccessBoundaryPolicyId => $"organizations/123456789/locations/global/principalAccessBoundaryPolicies/{principalAccessBoundaryPolicyId}"),
///         Target = new Gcp.Iam.Inputs.FoldersPolicyBindingTargetArgs
///         {
///             PrincipalSet = folder.FolderId.Apply(folderId => $"//cloudresourcemanager.googleapis.com/folders/{folderId}"),
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120s,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pabPolicy, err := iam.NewPrincipalAccessBoundaryPolicy(ctx, "pab_policy", &iam.PrincipalAccessBoundaryPolicyArgs{
/// 			Organization:                    pulumi.String("123456789"),
/// 			Location:                        pulumi.String("global"),
/// 			DisplayName:                     pulumi.String("binding for all principals in the folder"),
/// 			PrincipalAccessBoundaryPolicyId: pulumi.String("my-pab-policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("my folder"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait120s, err := time.NewSleep(ctx, "wait_120s", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			folder,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewFoldersPolicyBinding(ctx, "binding-for-all-folder-principals", &iam.FoldersPolicyBindingArgs{
/// 			Folder:          folder.FolderId,
/// 			Location:        pulumi.String("global"),
/// 			DisplayName:     pulumi.String("binding for all principals in the folder"),
/// 			PolicyKind:      pulumi.String("PRINCIPAL_ACCESS_BOUNDARY"),
/// 			PolicyBindingId: pulumi.String("binding-for-all-folder-principals"),
/// 			Policy: pabPolicy.PrincipalAccessBoundaryPolicyId.ApplyT(func(principalAccessBoundaryPolicyId string) (string, error) {
/// 				return fmt.Sprintf("organizations/123456789/locations/global/principalAccessBoundaryPolicies/%v", principalAccessBoundaryPolicyId), nil
/// 			}).(pulumi.StringOutput),
/// 			Target: &iam.FoldersPolicyBindingTargetArgs{
/// 				PrincipalSet: folder.FolderId.ApplyT(func(folderId string) (string, error) {
/// 					return fmt.Sprintf("//cloudresourcemanager.googleapis.com/folders/%v", folderId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120s,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iam.PrincipalAccessBoundaryPolicy;
/// import com.pulumi.gcp.iam.PrincipalAccessBoundaryPolicyArgs;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.iam.FoldersPolicyBinding;
/// import com.pulumi.gcp.iam.FoldersPolicyBindingArgs;
/// import com.pulumi.gcp.iam.inputs.FoldersPolicyBindingTargetArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var pabPolicy = new PrincipalAccessBoundaryPolicy("pabPolicy", PrincipalAccessBoundaryPolicyArgs.builder()
///             .organization("123456789")
///             .location("global")
///             .displayName("binding for all principals in the folder")
///             .principalAccessBoundaryPolicyId("my-pab-policy")
///             .build());
///
///         var folder = new Folder("folder", FolderArgs.builder()
///             .displayName("my folder")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var wait120s = new Sleep("wait120s", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(folder)
///                 .build());
///
///         var binding_for_all_folder_principals = new FoldersPolicyBinding("binding-for-all-folder-principals", FoldersPolicyBindingArgs.builder()
///             .folder(folder.folderId())
///             .location("global")
///             .displayName("binding for all principals in the folder")
///             .policyKind("PRINCIPAL_ACCESS_BOUNDARY")
///             .policyBindingId("binding-for-all-folder-principals")
///             .policy(pabPolicy.principalAccessBoundaryPolicyId().applyValue(_principalAccessBoundaryPolicyId -> String.format("organizations/123456789/locations/global/principalAccessBoundaryPolicies/%s", _principalAccessBoundaryPolicyId)))
///             .target(FoldersPolicyBindingTargetArgs.builder()
///                 .principalSet(folder.folderId().applyValue(_folderId -> String.format("//cloudresourcemanager.googleapis.com/folders/%s", _folderId)))
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120s)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pabPolicy:
///     type: gcp:iam:PrincipalAccessBoundaryPolicy
///     name: pab_policy
///     properties:
///       organization: '123456789'
///       location: global
///       displayName: binding for all principals in the folder
///       principalAccessBoundaryPolicyId: my-pab-policy
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: my folder
///       parent: organizations/123456789
///       deletionProtection: false
///   wait120s:
///     type: time:Sleep
///     name: wait_120s
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${folder}
///   binding-for-all-folder-principals:
///     type: gcp:iam:FoldersPolicyBinding
///     properties:
///       folder: ${folder.folderId}
///       location: global
///       displayName: binding for all principals in the folder
///       policyKind: PRINCIPAL_ACCESS_BOUNDARY
///       policyBindingId: binding-for-all-folder-principals
///       policy: organizations/123456789/locations/global/principalAccessBoundaryPolicies/${pabPolicy.principalAccessBoundaryPolicyId}
///       target:
///         principalSet: //cloudresourcemanager.googleapis.com/folders/${folder.folderId}
///     options:
///       dependsOn:
///         - ${wait120s}
/// ```
///
///
/// ## Import
///
/// FoldersPolicyBinding can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/locations/{{location}}/policyBindings/{{policy_binding_id}}`
///
/// * `{{folder}}/{{location}}/{{policy_binding_id}}`
///
/// When using the `pulumi import` command, FoldersPolicyBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/foldersPolicyBinding:FoldersPolicyBinding default folders/{{folder}}/locations/{{location}}/policyBindings/{{policy_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/foldersPolicyBinding:FoldersPolicyBinding default {{folder}}/{{location}}/{{policy_binding_id}}
/// ```
class FoldersPolicyBinding extends pulumi.CustomResource {
  /// Optional. User defined annotations. See https://google.aip.dev/148#annotations for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Represents a textual expression in the Common Expression Language
  /// (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of
  /// CEL are documented at https://github.com/google/cel-spec.
  /// Example (Comparison):
  /// title: \"Summary size limit\"
  /// description: \"Determines if a summary is less than 100 chars\"
  /// expression: \"document.summary.size() < 100\"
  /// Example
  /// (Equality):
  /// title: \"Requestor is owner\"
  /// description: \"Determines if requestor is the document owner\"
  /// expression: \"document.owner == request.auth.claims.email\"  Example
  /// (Logic):
  /// title: \"Public documents\"
  /// description: \"Determine whether the document should be publicly visible\"
  /// expression: \"document.type != 'private' && document.type != 'internal'\"
  /// Example (Data Manipulation):
  /// title: \"Notification string\"
  /// description: \"Create a notification string with a timestamp.\"
  /// expression: \"'New message received at ' + string(document.create_time)\"
  /// The exact variables and functions that may be referenced within an expression are
  /// determined by the service that evaluates it. See the service documentation for
  /// additional information.
  /// Structure is documented below.
  late final pulumi.Output<FoldersPolicyBindingCondition?> condition;

  /// Output only. The time when the policy binding was created.
  late final pulumi.Output<String> createTime;

  /// Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// Optional. The etag for the policy binding. If this is provided on update, it must match the server's etag.
  late final pulumi.Output<String> etag;

  /// The parent folder for the PolicyBinding.
  late final pulumi.Output<String> folder;

  /// The location of the PolicyBinding.
  late final pulumi.Output<String> location;

  /// The name of the policy binding in the format `{binding_parent/locations/{location}/policyBindings/{policy_binding_id}`
  late final pulumi.Output<String> name;

  /// Required. Immutable. The resource name of the policy to be bound. The binding parent and policy must belong to the same Organization (or Project).
  late final pulumi.Output<String> policy;

  /// The Policy Binding ID.
  late final pulumi.Output<String> policyBindingId;

  /// Immutable. The kind of the policy to attach in this binding. This
  /// field must be one of the following:  - Left empty (will be automatically set
  /// to the policy kind) - The input policy kind   Possible values:  POLICY_KIND_UNSPECIFIED PRINCIPAL_ACCESS_BOUNDARY ACCESS
  late final pulumi.Output<String?> policyKind;

  /// Output only. The globally unique ID of the policy to be bound.
  late final pulumi.Output<String> policyUid;

  /// Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  /// Structure is documented below.
  late final pulumi.Output<FoldersPolicyBindingTarget> target;

  /// Output only. The globally unique ID of the policy binding. Assigned when the policy binding is created.
  late final pulumi.Output<String> uid;

  /// Output only. The time when the policy binding was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FoldersPolicyBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FoldersPolicyBinding]. {@macro pulumi_iam_folders_policy_binding_folders_policy_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FoldersPolicyBinding(
    String name, {
    FoldersPolicyBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:iam/foldersPolicyBinding:FoldersPolicyBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.condition = registerOutput<FoldersPolicyBindingCondition?>(
      'condition',
    );
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    this.etag = registerOutput<String>('etag');
    this.folder = registerOutput<String>('folder');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<String>('policy');
    this.policyBindingId = registerOutput<String>('policyBindingId');
    this.policyKind = registerOutput<String?>('policyKind');
    this.policyUid = registerOutput<String>('policyUid');
    this.target = registerOutput<FoldersPolicyBindingTarget>('target');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
