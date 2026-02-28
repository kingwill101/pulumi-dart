import 'package:pulumi/pulumi.dart' as pulumi;
import 'lien_cloudresourcemanager_v3_args.dart';

/// Create a Lien which applies to the resource denoted by the `parent` field. Callers of this method will require permission on the `parent` resource. For example, applying to `projects/1234` requires permission `resourcemanager.projects.updateLiens`. NOTE: Some resources may limit the number of Liens which may be applied.
class LienCloudresourcemanagerV3 extends pulumi.CustomResource {
  /// The creation time of this Lien.
  late final pulumi.Output<String> createTime;
  /// A system-generated unique identifier for this Lien. Example: `liens/1234abcd`
  late final pulumi.Output<String> name;
  /// A stable, user-visible/meaningful string identifying the origin of the Lien, intended to be inspected programmatically. Maximum length of 200 characters. Example: 'compute.googleapis.com'
  late final pulumi.Output<String> origin;
  /// A reference to the resource this Lien is attached to. The server will validate the parent against those for which Liens are supported. Example: `projects/1234`
  late final pulumi.Output<String> parent;
  /// Concise user-visible strings indicating why an action cannot be performed on a resource. Maximum length of 200 characters. Example: 'Holds production API key'
  late final pulumi.Output<String> reason;
  /// The types of operations which should be blocked as a result of this Lien. Each value should correspond to an IAM permission. The server will validate the permissions against those for which Liens are supported. An empty list is meaningless and will be rejected. Example: ['resourcemanager.projects.delete']
  late final pulumi.Output<List<String>> restrictions;

  /// Creates a new [LienCloudresourcemanagerV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LienCloudresourcemanagerV3]. {@macro pulumi_cloudresourcemanager_v3_lien_cloudresourcemanager_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LienCloudresourcemanagerV3(
    String name, {
    LienCloudresourcemanagerV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudresourcemanager/v3:Lien',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.name = registerOutput<String>('name');
    this.origin = registerOutput<String>('origin');
    this.parent = registerOutput<String>('parent');
    this.reason = registerOutput<String>('reason');
    this.restrictions = registerOutput<List<String>>('restrictions');
  }
}
