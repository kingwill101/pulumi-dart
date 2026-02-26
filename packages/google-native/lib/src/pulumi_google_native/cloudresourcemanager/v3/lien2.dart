import 'package:pulumi/pulumi.dart';
import 'lien_args2.dart';

/// Create a Lien which applies to the resource denoted by the `parent` field. Callers of this method will require permission on the `parent` resource. For example, applying to `projects/1234` requires permission `resourcemanager.projects.updateLiens`. NOTE: Some resources may limit the number of Liens which may be applied.
class Lien2 extends CustomResource {
  /// The creation time of this Lien.
  late final Output<String> createTime;

  /// A system-generated unique identifier for this Lien. Example: `liens/1234abcd`
  late final Output<String> name;

  /// A stable, user-visible/meaningful string identifying the origin of the Lien, intended to be inspected programmatically. Maximum length of 200 characters. Example: 'compute.googleapis.com'
  late final Output<String> origin;

  /// A reference to the resource this Lien is attached to. The server will validate the parent against those for which Liens are supported. Example: `projects/1234`
  late final Output<String> parent;

  /// Concise user-visible strings indicating why an action cannot be performed on a resource. Maximum length of 200 characters. Example: 'Holds production API key'
  late final Output<String> reason;

  /// The types of operations which should be blocked as a result of this Lien. Each value should correspond to an IAM permission. The server will validate the permissions against those for which Liens are supported. An empty list is meaningless and will be rejected. Example: ['resourcemanager.projects.delete']
  late final Output<List<String>> restrictions;

  Lien2(
    String name, {
    LienArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudresourcemanager/v3:Lien',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.origin = Output.createUnknown<String>();
    this.parent = Output.createUnknown<String>();
    this.reason = Output.createUnknown<String>();
    this.restrictions = Output.createUnknown<List<String>>();
  }
}
