// ignore_for_file: unused_element, unnecessary_cast

class InstanceControlledEgressConfig {
  /// List of fully qualified domain names to be added to the allowlist for
  /// outbound traffic.
  final List<String>? egressFqdns;

  /// Whether the Looker Marketplace is enabled.
  final bool? marketplaceEnabled;

  /// Creates a new [InstanceControlledEgressConfig].
  /// [egressFqdns] List of fully qualified domain names to be added to the allowlist for
  /// [marketplaceEnabled] Whether the Looker Marketplace is enabled.
  InstanceControlledEgressConfig({
    this.egressFqdns,
    this.marketplaceEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final egressFqdnsValue = egressFqdns;
    if (egressFqdnsValue != null) {
      map['egressFqdns'] = egressFqdnsValue;
    }
    final marketplaceEnabledValue = marketplaceEnabled;
    if (marketplaceEnabledValue != null) {
      map['marketplaceEnabled'] = marketplaceEnabledValue;
    }
    return map;
  }

  factory InstanceControlledEgressConfig.fromMap(Map<String, dynamic> map) {
    return InstanceControlledEgressConfig(
      egressFqdns: map['egressFqdns'] == null
          ? null
          : (map['egressFqdns'] as List).cast<String>(),
      marketplaceEnabled: map['marketplaceEnabled'] == null
          ? null
          : map['marketplaceEnabled'] as bool,
    );
  }
}
