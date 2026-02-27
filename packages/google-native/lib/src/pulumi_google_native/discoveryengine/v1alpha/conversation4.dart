import 'package:pulumi/pulumi.dart' hide Config;
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
    this.collectionId = registerOutput<String>('collectionId');
    this.dataStoreId = registerOutput<String>('dataStoreId');
    this.endTime = registerOutput<String>('endTime');
    this.location = registerOutput<String>('location');
    this.messages = registerOutput<
            List<GoogleCloudDiscoveryengineV1alphaConversationMessageResponse>>(
        'messages');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.userPseudoId = registerOutput<String>('userPseudoId');
  }
}
