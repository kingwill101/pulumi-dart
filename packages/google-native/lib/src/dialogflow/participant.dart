import 'package:pulumi/pulumi.dart' as pulumi;
import 'participant_args.dart';

/// Creates a new participant in a conversation.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Participant extends pulumi.CustomResource {
  late final pulumi.Output<String> conversationId;

  /// Optional. Key-value filters on the metadata of documents returned by article suggestion. If specified, article suggestion only returns suggested documents that match all filters in their Document.metadata. Multiple values for a metadata key should be concatenated by comma. For example, filters to match all documents that have 'US' or 'CA' in their market metadata values and 'agent' in their user metadata values will be ``` documents_metadata_filters { key: "market" value: "US,CA" } documents_metadata_filters { key: "user" value: "agent" } ```
  late final pulumi.Output<Map<String, String>> documentsMetadataFilters;
  late final pulumi.Output<String> location;

  /// Optional. The unique identifier of this participant. Format: `projects//locations//conversations//participants/`.
  late final pulumi.Output<String> name;

  /// Optional. Obfuscated user id that should be associated with the created participant. You can specify a user id as follows: 1. If you set this field in CreateParticipantRequest or UpdateParticipantRequest, Dialogflow adds the obfuscated user id with the participant. 2. If you set this field in AnalyzeContent or StreamingAnalyzeContent, Dialogflow will update Participant.obfuscated_external_user_id. Dialogflow returns an error if you try to add a user id for a non-END_USER participant. Dialogflow uses this user id for billing and measurement purposes. For example, Dialogflow determines whether a user in one conversation returned in a later conversation. Note: * Please never pass raw user ids to Dialogflow. Always obfuscate your user id first. * Dialogflow only accepts a UTF-8 encoded string, e.g., a hex digest of a hash function like SHA-512. * The length of the user id must be <= 256 characters.
  late final pulumi.Output<String> obfuscatedExternalUserId;
  late final pulumi.Output<String> project;

  /// Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
  late final pulumi.Output<String> role;

  /// Optional. Label applied to streams representing this participant in SIPREC XML metadata and SDP. This is used to assign transcriptions from that media stream to this participant. This field can be updated.
  late final pulumi.Output<String> sipRecordingMediaLabel;

  /// Creates a new [Participant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Participant]. {@macro pulumi_dialogflow_v2_participant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Participant(
    String name, {
    ParticipantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2:Participant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.conversationId = registerOutput<String>('conversationId');
    this.documentsMetadataFilters =
        registerOutput<Map<String, String>>('documentsMetadataFilters');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.obfuscatedExternalUserId =
        registerOutput<String>('obfuscatedExternalUserId');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
    this.sipRecordingMediaLabel =
        registerOutput<String>('sipRecordingMediaLabel');
  }
}
