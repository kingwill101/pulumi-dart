// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyExcludeMap {
  /// List of AWS Organization member accounts to exclude from this AWS FMS Policy.
  final pulumi.Input<List<String>>? accounts;
  /// List of IDs of the AWS Organizational Units to exclude from this AWS FMS Policy. Specifying an OU is equivalent to specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.
  final pulumi.Input<List<String>>? orgunits;

  /// Creates a new [PolicyExcludeMap].
  /// [accounts] List of AWS Organization member accounts to exclude from this AWS FMS Policy.
  /// [orgunits] List of IDs of the AWS Organizational Units to exclude from this AWS FMS Policy. Specifying an OU is equivalent to specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.
  const PolicyExcludeMap({
    this.accounts,
    this.orgunits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?accounts,
      'orgunits': ?orgunits,
    };
  }

  factory PolicyExcludeMap.fromMap(Map<String, dynamic> map) {
    return PolicyExcludeMap(
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      orgunits: (() { final guardedValue = map['orgunits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
