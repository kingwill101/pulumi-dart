// ignore_for_file: unused_element, unnecessary_cast


class PolicyIncludeMap {
  /// A list of AWS Organization member Accounts that you want to include for this AWS FMS Policy.
  final List<String>? accounts;
  /// A list of IDs of the AWS Organizational Units that you want to include for this AWS FMS Policy. Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.
  ///
  /// You can specify inclusions or exclusions, but not both. If you specify an `include_map`, AWS Firewall Manager applies the policy to all accounts specified by the `include_map`, and does not evaluate any `exclude_map` specifications. If you do not specify an `include_map`, then Firewall Manager applies the policy to all accounts except for those specified by the `exclude_map`.
  final List<String>? orgunits;

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
      accounts: map['accounts'] == null ? null : (map['accounts'] as List).cast<String>(),
      orgunits: map['orgunits'] == null ? null : (map['orgunits'] as List).cast<String>(),
    );
  }
}

