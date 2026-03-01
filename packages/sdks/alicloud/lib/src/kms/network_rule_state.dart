// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkRule resources.
class NetworkRuleState {
  /// Description.
  final pulumi.Input<String>? description;
  /// Network Rule Name.
  final pulumi.Input<String>? networkRuleName;
  /// Allowed private network addresses.
  final pulumi.Input<List<String>>? sourcePrivateIps;

  /// Creates a new [NetworkRuleState].
  /// [description] Description.
  /// [networkRuleName] Network Rule Name.
  /// [sourcePrivateIps] Allowed private network addresses.
  NetworkRuleState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? networkRuleName,
    pulumi.Output<List<String>>? sourcePrivateIps,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      networkRuleName = pulumi.Input.asOptionalInput<String>(networkRuleName),
      sourcePrivateIps = pulumi.Input.asOptionalInput<List<String>>(sourcePrivateIps);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'networkRuleName': ?networkRuleName,
      'sourcePrivateIps': ?sourcePrivateIps,
    };
  }

  factory NetworkRuleState.fromMap(Map<String, dynamic> map) {
    return NetworkRuleState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      networkRuleName: map['networkRuleName'] == null ? null : pulumi.Output.create<String>(map['networkRuleName'] as String),
      sourcePrivateIps: map['sourcePrivateIps'] == null ? null : pulumi.Output.create<List<String>>((map['sourcePrivateIps'] as List).cast<String>()),
    );
  }
}

