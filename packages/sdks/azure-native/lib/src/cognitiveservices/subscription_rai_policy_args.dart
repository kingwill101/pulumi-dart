// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_policy_properties.dart';

/// {@template pulumi_cognitiveservices_subscription_rai_policy_args_doc}
/// The set of arguments for SubscriptionRaiPolicy.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_subscription_rai_policy_args_doc}
class SubscriptionRaiPolicyArgs {
  /// Properties of Cognitive Services RaiPolicy.
  final pulumi.Input<RaiPolicyProperties>? properties;
  /// The name of the RaiPolicy associated with the Cognitive Services Account
  final pulumi.Input<String>? raiPolicyName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SubscriptionRaiPolicyArgs].
  /// [properties] Properties of Cognitive Services RaiPolicy.
  /// [raiPolicyName] The name of the RaiPolicy associated with the Cognitive Services Account
  /// [tags] Resource tags.
  SubscriptionRaiPolicyArgs({
    this.properties,
    this.raiPolicyName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<RaiPolicyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'raiPolicyName': ?raiPolicyName,
      'tags': ?tags,
    };
  }

  factory SubscriptionRaiPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionRaiPolicyArgs(
      properties: map['properties'] == null ? null : (RaiPolicyProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      raiPolicyName: map['raiPolicyName'] == null ? null : (map['raiPolicyName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

