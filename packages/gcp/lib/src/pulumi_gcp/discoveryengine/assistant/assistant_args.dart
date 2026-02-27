// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../assistant_customer_policy/assistant_customer_policy.dart';
import '../assistant_generation_config/assistant_generation_config.dart';

/// The set of arguments for Assistant.
class AssistantArgs {
  /// The unique id of the assistant.
  final pulumi.Input<String> assistantId;

  /// The unique id of the collection.
  final pulumi.Input<String> collectionId;

  /// Customer policy for the assistant.
  /// Structure is documented below.
  final pulumi.Input<AssistantCustomerPolicy>? customerPolicy;

  /// Description for additional information. Expected to be shown on the
  /// configuration UI, not to the users of the assistant.
  final pulumi.Input<String>? description;

  /// The assistant display name.
  /// It must be a UTF-8 encoded string with a length limit of 128 characters.
  final pulumi.Input<String> displayName;

  /// The unique id of the engine.
  final pulumi.Input<String> engineId;

  /// Configuration for the generation of the assistant response.
  /// Structure is documented below.
  final pulumi.Input<AssistantGenerationConfig>? generationConfig;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The type of web grounding to use.
  /// The supported values: 'WEB_GROUNDING_TYPE_DISABLED', 'WEB_GROUNDING_TYPE_GOOGLE_SEARCH', 'WEB_GROUNDING_TYPE_ENTERPRISE_WEB_SEARCH'.
  final pulumi.Input<String>? webGroundingType;

  AssistantArgs({
    required this.assistantId,
    required this.collectionId,
    this.customerPolicy,
    this.description,
    required this.displayName,
    required this.engineId,
    this.generationConfig,
    required this.location,
    this.project,
    this.webGroundingType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assistantId'] = assistantId;
    map['collectionId'] = collectionId;
    final customerPolicyValue = customerPolicy;
    if (customerPolicyValue != null) {
      map['customerPolicy'] = pulumi.Input.mapOptionalInputValue<
          AssistantCustomerPolicy,
          Map<String, dynamic>>(customerPolicyValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    map['engineId'] = engineId;
    final generationConfigValue = generationConfig;
    if (generationConfigValue != null) {
      map['generationConfig'] = pulumi.Input.mapOptionalInputValue<
              AssistantGenerationConfig, Map<String, dynamic>>(
          generationConfigValue, (value) => value.toMap());
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final webGroundingTypeValue = webGroundingType;
    if (webGroundingTypeValue != null) {
      map['webGroundingType'] = webGroundingTypeValue;
    }
    return map;
  }

  factory AssistantArgs.fromMap(Map<String, dynamic> map) {
    return AssistantArgs(
      assistantId: pulumi.Input.asInput<String>(map['assistantId']),
      collectionId: pulumi.Input.asInput<String>(map['collectionId']),
      customerPolicy: pulumi.Input.asOptionalInput<AssistantCustomerPolicy>(
          map['customerPolicy']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      engineId: pulumi.Input.asInput<String>(map['engineId']),
      generationConfig: pulumi.Input.asOptionalInput<AssistantGenerationConfig>(
          map['generationConfig']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      webGroundingType:
          pulumi.Input.asOptionalInput<String>(map['webGroundingType']),
    );
  }
}
