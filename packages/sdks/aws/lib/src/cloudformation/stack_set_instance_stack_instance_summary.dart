// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackSetInstanceStackInstanceSummary {
  /// Target AWS Account ID to create a Stack based on the StackSet. Defaults to current account.
  final pulumi.Input<String>? accountId;
  /// Organizational unit ID in which the stack is deployed.
  final pulumi.Input<String>? organizationalUnitId;
  /// Stack identifier.
  final pulumi.Input<String>? stackId;

  /// Creates a new [StackSetInstanceStackInstanceSummary].
  /// [accountId] Target AWS Account ID to create a Stack based on the StackSet. Defaults to current account.
  /// [organizationalUnitId] Organizational unit ID in which the stack is deployed.
  /// [stackId] Stack identifier.
  const StackSetInstanceStackInstanceSummary({
    this.accountId,
    this.organizationalUnitId,
    this.stackId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'organizationalUnitId': ?organizationalUnitId,
      'stackId': ?stackId,
    };
  }

  factory StackSetInstanceStackInstanceSummary.fromMap(Map<String, dynamic> map) {
    return StackSetInstanceStackInstanceSummary(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationalUnitId: (() { final guardedValue = map['organizationalUnitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackId: (() { final guardedValue = map['stackId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
