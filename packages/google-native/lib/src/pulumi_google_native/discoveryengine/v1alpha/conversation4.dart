import 'package:pulumi/pulumi.dart';
import 'conversation_args4.dart';
import 'google_cloud_discoveryengine_v1alpha_conversation_message_response.dart';

/// Creates a Conversation. If the Conversation to create already exists, an ALREADY_EXISTS error is returned.
/// Auto-naming is currently not supported for this resource.
class Conversation4 extends CustomResource {
  late final Output<String> collectionId;
  late final Output<String> dataStoreId;

  /// The time the conversation finished.
  late final Output<String> endTime;
  late final Output<String> location;

  /// Conversation messages.
  late final Output<
          List<GoogleCloudDiscoveryengineV1alphaConversationMessageResponse>>
      messages;

  /// Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  late final Output<String> name;
  late final Output<String> project;

  /// The time the conversation started.
  late final Output<String> startTime;

  /// The state of the Conversation.
  late final Output<String> state;

  /// A unique identifier for tracking users.
  late final Output<String> userPseudoId;

  Conversation4(
    String name, {
    ConversationArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:discoveryengine/v1alpha:Conversation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.collectionId = Output.createUnknown<String>();
    this.dataStoreId = Output.createUnknown<String>();
    this.endTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.messages = Output.createUnknown<
        List<GoogleCloudDiscoveryengineV1alphaConversationMessageResponse>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.startTime = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.userPseudoId = Output.createUnknown<String>();
  }
}
