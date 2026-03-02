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
  StackSetInstanceStackInstanceSummary({
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
      accountId: map['accountId'] == null ? null : ((map['accountId'] as String).input()).input(),
      organizationalUnitId: map['organizationalUnitId'] == null ? null : ((map['organizationalUnitId'] as String).input()).input(),
      stackId: map['stackId'] == null ? null : ((map['stackId'] as String).input()).input(),
    );
  }
}

