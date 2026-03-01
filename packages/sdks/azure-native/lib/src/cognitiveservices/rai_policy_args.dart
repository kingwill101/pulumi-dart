// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_policy_properties.dart';

/// {@template pulumi_cognitiveservices_rai_policy_args_doc}
/// The set of arguments for RaiPolicy.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_rai_policy_args_doc}
class RaiPolicyArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Properties of Cognitive Services RaiPolicy.
  final pulumi.Input<RaiPolicyProperties>? properties;
  /// The name of the RaiPolicy associated with the Cognitive Services Account
  final pulumi.Input<String>? raiPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RaiPolicyArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [properties] Properties of Cognitive Services RaiPolicy.
  /// [raiPolicyName] The name of the RaiPolicy associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  RaiPolicyArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<RaiPolicyProperties>? properties,
    pulumi.Output<String>? raiPolicyName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      properties = pulumi.Input.asOptionalInput<RaiPolicyProperties>(properties),
      raiPolicyName = pulumi.Input.asOptionalInput<String>(raiPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'properties': ?pulumi.Input.mapOptionalInputValue<RaiPolicyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'raiPolicyName': ?raiPolicyName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory RaiPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RaiPolicyArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<RaiPolicyProperties>(RaiPolicyProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      raiPolicyName: map['raiPolicyName'] == null ? null : pulumi.Output.create<String>(map['raiPolicyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

