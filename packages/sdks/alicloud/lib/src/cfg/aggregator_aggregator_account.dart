// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AggregatorAggregatorAccount {
  /// The member ID.
  final pulumi.Input<String>? accountId;

  /// The member name.
  final pulumi.Input<String>? accountName;

  /// The affiliation of the member. Valid values: `ResourceDirectory`.
  final pulumi.Input<String>? accountType;

  /// Creates a new [AggregatorAggregatorAccount].
  /// [accountId] The member ID.
  /// [accountName] The member name.
  /// [accountType] The affiliation of the member. Valid values: `ResourceDirectory`.
  AggregatorAggregatorAccount({
    this.accountId,
    this.accountName,
    this.accountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountName': ?accountName,
      'accountType': ?accountType,
    };
  }

  factory AggregatorAggregatorAccount.fromMap(Map<String, dynamic> map) {
    return AggregatorAggregatorAccount(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountName: (() {
        final guardedValue = map['accountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountType: (() {
        final guardedValue = map['accountType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
