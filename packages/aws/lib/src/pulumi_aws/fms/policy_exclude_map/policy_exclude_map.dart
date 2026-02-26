// ignore_for_file: unused_element, unnecessary_cast

class PolicyExcludeMap {
  /// A list of AWS Organization member Accounts that you want to include for this AWS FMS Policy.
  final List<String>? accounts;

  /// A list of IDs of the AWS Organizational Units that you want to include for this AWS FMS Policy. Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.
  ///
  /// You can specify inclusions or exclusions, but not both. If you specify an <span pulumi-lang-nodejs="`includeMap`" pulumi-lang-dotnet="`IncludeMap`" pulumi-lang-go="`includeMap`" pulumi-lang-python="`include_map`" pulumi-lang-yaml="`includeMap`" pulumi-lang-java="`includeMap`">`include_map`</span>, AWS Firewall Manager applies the policy to all accounts specified by the <span pulumi-lang-nodejs="`includeMap`" pulumi-lang-dotnet="`IncludeMap`" pulumi-lang-go="`includeMap`" pulumi-lang-python="`include_map`" pulumi-lang-yaml="`includeMap`" pulumi-lang-java="`includeMap`">`include_map`</span>, and does not evaluate any <span pulumi-lang-nodejs="`excludeMap`" pulumi-lang-dotnet="`ExcludeMap`" pulumi-lang-go="`excludeMap`" pulumi-lang-python="`exclude_map`" pulumi-lang-yaml="`excludeMap`" pulumi-lang-java="`excludeMap`">`exclude_map`</span> specifications. If you do not specify an <span pulumi-lang-nodejs="`includeMap`" pulumi-lang-dotnet="`IncludeMap`" pulumi-lang-go="`includeMap`" pulumi-lang-python="`include_map`" pulumi-lang-yaml="`includeMap`" pulumi-lang-java="`includeMap`">`include_map`</span>, then Firewall Manager applies the policy to all accounts except for those specified by the <span pulumi-lang-nodejs="`excludeMap`" pulumi-lang-dotnet="`ExcludeMap`" pulumi-lang-go="`excludeMap`" pulumi-lang-python="`exclude_map`" pulumi-lang-yaml="`excludeMap`" pulumi-lang-java="`excludeMap`">`exclude_map`</span>.
  final List<String>? orgunits;

  PolicyExcludeMap({
    this.accounts,
    this.orgunits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountsValue = accounts;
    if (accountsValue != null) {
      map['accounts'] = accountsValue;
    }
    final orgunitsValue = orgunits;
    if (orgunitsValue != null) {
      map['orgunits'] = orgunitsValue;
    }
    return map;
  }

  factory PolicyExcludeMap.fromMap(Map<String, dynamic> map) {
    return PolicyExcludeMap(
      accounts: map['accounts'] == null
          ? null
          : (map['accounts'] as List).cast<String>(),
      orgunits: map['orgunits'] == null
          ? null
          : (map['orgunits'] as List).cast<String>(),
    );
  }
}
