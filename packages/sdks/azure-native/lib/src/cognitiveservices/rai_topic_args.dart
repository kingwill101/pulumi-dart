// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_topic_properties.dart';

/// {@template pulumi_cognitiveservices_rai_topic_args_doc}
/// The set of arguments for RaiTopic.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_rai_topic_args_doc}
class RaiTopicArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Properties of Cognitive Services Rai Topic.
  final pulumi.Input<RaiTopicProperties?>? properties;
  /// The name of the Rai Topic associated with the Cognitive Services Account
  final pulumi.Input<String?>? raiTopicName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [RaiTopicArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [properties] Properties of Cognitive Services Rai Topic.
  /// [raiTopicName] The name of the Rai Topic associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const RaiTopicArgs({
    required this.accountName,
    this.properties,
    this.raiTopicName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'properties': ?pulumi.Input.mapOptionalInputValue<RaiTopicProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'raiTopicName': ?raiTopicName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory RaiTopicArgs.fromMap(Map<String, dynamic> map) {
    return RaiTopicArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RaiTopicProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      raiTopicName: (() { final guardedValue = map['raiTopicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
