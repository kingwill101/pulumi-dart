import 'package:pulumi/pulumi.dart' as pulumi;
import 'lien_args.dart';

/// A Lien represents an encumbrance on the actions that can be performed on a resource.
///
///
/// To get more information about Lien, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest)
/// * How-to Guides
/// * [Create a Lien](https://docs.cloud.google.com/resource-manager/docs/project-liens)
///
/// ## Example Usage
///
/// ### Resource Manager Lien
///
///
///
///
/// ## Import
///
/// Lien can be imported using any of these accepted formats:
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Lien can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:resourcemanager/lien:Lien default {{parent}}/{{name}}
/// ```
class Lien extends pulumi.CustomResource {
  /// Time of creation
  late final pulumi.Output<String> createTime;

  /// A system-generated unique identifier for this Lien.
  late final pulumi.Output<String> name;

  /// A stable, user-visible/meaningful string identifying the origin
  /// of the Lien, intended to be inspected programmatically. Maximum length of
  /// 200 characters.
  late final pulumi.Output<String> origin;

  /// A reference to the resource this Lien is attached to.
  /// The server will validate the parent against those for which Liens are supported.
  /// Since a variety of objects can have Liens against them, you must provide the type
  /// prefix (e.g. "projects/my-project-name").
  late final pulumi.Output<String> parent;

  /// Concise user-visible strings indicating why an action cannot be performed
  /// on a resource. Maximum length of 200 characters.
  late final pulumi.Output<String> reason;

  /// The types of operations which should be blocked as a result of this Lien.
  /// Each value should correspond to an IAM permission. The server will validate
  /// the permissions against those for which Liens are supported.  An empty
  /// list is meaningless and will be rejected.
  /// e.g. ['resourcemanager.projects.delete']
  late final pulumi.Output<List<String>> restrictions;

  Lien(
    String name, {
    LienArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:resourcemanager/lien:Lien',
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
