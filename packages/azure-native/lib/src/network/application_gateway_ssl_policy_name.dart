/// Name of Ssl predefined policy.
enum ApplicationGatewaySslPolicyName {
  valueAppGwSslPolicy20150501("AppGwSslPolicy20150501"),
  valueAppGwSslPolicy20170401("AppGwSslPolicy20170401"),
  valueAppGwSslPolicy20170401S("AppGwSslPolicy20170401S"),
  valueAppGwSslPolicy20220101("AppGwSslPolicy20220101"),
  valueAppGwSslPolicy20220101S("AppGwSslPolicy20220101S");

  const ApplicationGatewaySslPolicyName(this.value);
  final String value;

  static ApplicationGatewaySslPolicyName fromValue(String value) {
    for (final item in ApplicationGatewaySslPolicyName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewaySslPolicyName value: $value');
  }
}

