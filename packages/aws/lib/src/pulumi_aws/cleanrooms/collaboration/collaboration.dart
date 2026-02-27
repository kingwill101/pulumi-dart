import 'package:pulumi/pulumi.dart';
import '../collaboration_data_encryption_metadata/collaboration_data_encryption_metadata.dart';
import '../collaboration_member/collaboration_member.dart';
import 'collaboration_args.dart';

/// Provides a AWS Clean Rooms collaboration.
/// All members included in the definition will be invited to join the collaboration and can create memberships.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the cleanrooms collaboration.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import `aws.cleanrooms.Collaboration` using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cleanrooms/collaboration:Collaboration collaboration 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class Collaboration extends CustomResource {
  /// Analytics engine used by the collaboration. Valid values are `CLEAN_ROOMS_SQL` (deprecated) and `SPARK`.
  late final Output<String?> analyticsEngine;

  /// ARN of the collaboration.
  late final Output<String> arn;

  /// Date and time the collaboration was created.
  late final Output<String> createTime;

  /// Name for the member record for the collaboration creator.
  late final Output<String> creatorDisplayName;

  /// List of member abilities for the creator of the collaboration. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-creatorMemberAbilities).
  late final Output<List<String>> creatorMemberAbilities;

  /// Collection of settings which determine how the [c3r client](https://docs.aws.amazon.com/clean-rooms/latest/userguide/crypto-computing.html) will encrypt data for use within this collaboration. See below.
  late final Output<CollaborationDataEncryptionMetadata?>
      dataEncryptionMetadata;

  /// Description for a collaboration.
  late final Output<String> description;

  /// Additional members of the collaboration which will be invited to join the collaboration. See below.
  late final Output<List<CollaborationMember>?> members;

  /// Name of the collaboration.  Collaboration names do not need to be unique.
  late final Output<String> name;

  /// Whether members of the collaboration can enable query logs within their own memberships. Valid values [may be found here](https://docs.aws.amazon.com/clean-rooms/latest/apireference/API_CreateCollaboration.html#API-CreateCollaboration-request-queryLogStatus).
  ///
  /// The following arguments are optional:
  late final Output<String> queryLogStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key value pairs which tag the collaboration.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Date and time the collaboration was last updated.
  late final Output<String> updateTime;

  Collaboration(
    String name, {
    CollaborationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cleanrooms/collaboration:Collaboration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.analyticsEngine = registerOutput<String?>('analyticsEngine');
    this.arn = registerOutput<String>('arn');
    this.createTime = registerOutput<String>('createTime');
    this.creatorDisplayName = registerOutput<String>('creatorDisplayName');
    this.creatorMemberAbilities =
        registerOutput<List<String>>('creatorMemberAbilities');
    this.dataEncryptionMetadata =
        registerOutput<CollaborationDataEncryptionMetadata?>(
            'dataEncryptionMetadata');
    this.description = registerOutput<String>('description');
    this.members = registerOutput<List<CollaborationMember>?>('members');
    this.name = registerOutput<String>('name');
    this.queryLogStatus = registerOutput<String>('queryLogStatus');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
