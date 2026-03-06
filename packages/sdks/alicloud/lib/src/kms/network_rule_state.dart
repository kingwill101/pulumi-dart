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
  const NetworkRuleState({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkRuleName: (() { final guardedValue = map['networkRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePrivateIps: (() { final guardedValue = map['sourcePrivateIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

