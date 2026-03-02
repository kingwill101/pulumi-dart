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
  final pulumi.Input<RaiTopicProperties>? properties;
  /// The name of the Rai Topic associated with the Cognitive Services Account
  final pulumi.Input<String>? raiTopicName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RaiTopicArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [properties] Properties of Cognitive Services Rai Topic.
  /// [raiTopicName] The name of the Rai Topic associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  RaiTopicArgs({
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
      accountName: (map['accountName'] as String).input(),
      properties: map['properties'] == null ? null : (RaiTopicProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      raiTopicName: map['raiTopicName'] == null ? null : (map['raiTopicName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

