// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyIncludeMap {
  /// A list of AWS Organization member Accounts that you want to include for this AWS FMS Policy.
  final pulumi.Input<List<String>>? accounts;
  /// A list of IDs of the AWS Organizational Units that you want to include for this AWS FMS Policy. Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.
  ///
  /// You can specify inclusions or exclusions, but not both. If you specify an `include_map`, AWS Firewall Manager applies the policy to all accounts specified by the `include_map`, and does not evaluate any `exclude_map` specifications. If you do not specify an `include_map`, then Firewall Manager applies the policy to all accounts except for those specified by the `exclude_map`.
  final pulumi.Input<List<String>>? orgunits;

  /// Creates a new [PolicyIncludeMap].
  /// [accounts] A list of AWS Organization member Accounts that you want to include for this AWS FMS Policy.
  /// [orgunits] A list of IDs of the AWS Organizational Units that you want to include for this AWS FMS Policy. Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.
  PolicyIncludeMap({
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

