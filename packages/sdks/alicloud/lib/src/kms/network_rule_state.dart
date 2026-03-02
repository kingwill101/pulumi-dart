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
    this.description,
    this.networkRuleName,
    this.sourcePrivateIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'networkRuleName': ?networkRuleName,
      'sourcePrivateIps': ?sourcePrivateIps,
    };
  }

  factory NetworkRuleState.fromMap(Map<String, dynamic> map) {
    return NetworkRuleState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      networkRuleName: map['networkRuleName'] == null ? null : (map['networkRuleName']! as String).input(),
      sourcePrivateIps: map['sourcePrivateIps'] == null ? null : ((map['sourcePrivateIps']! as List).cast<String>()).input(),
    );
  }
}

