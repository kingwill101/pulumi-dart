// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyIncludeMap {
  /// List of AWS Organization member accounts to include for this AWS FMS Policy.
  final pulumi.Input<List<String>>? accounts;
  /// List of IDs of the AWS Organizational Units to include for this AWS FMS Policy. Specifying an OU is equivalent to specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.
  final pulumi.Input<List<String>>? orgunits;

  /// Creates a new [PolicyIncludeMap].
  /// [accounts] List of AWS Organization member accounts to include for this AWS FMS Policy.
  /// [orgunits] List of IDs of the AWS Organizational Units to include for this AWS FMS Policy. Specifying an OU is equivalent to specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.
  const PolicyIncludeMap({
    this.accounts,
    this.orgunits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?accounts,
      'orgunits': ?orgunits,
    };
  }

  factory PolicyIncludeMap.fromMap(Map<String, dynamic> map) {
    return PolicyIncludeMap(
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      orgunits: (() { final guardedValue = map['orgunits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
