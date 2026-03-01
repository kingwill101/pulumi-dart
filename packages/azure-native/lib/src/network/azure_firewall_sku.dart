// ignore_for_file: unused_element, unnecessary_cast


/// SKU of an Azure Firewall.
class AzureFirewallSku {
  /// Name of an Azure Firewall SKU.
  final String? name;
  /// Tier of an Azure Firewall.
  final String? tier;

  /// Creates a new [AzureFirewallSku].
  /// [name] Name of an Azure Firewall SKU.
  /// [tier] Tier of an Azure Firewall.
  AzureFirewallSku({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory AzureFirewallSku.fromMap(Map<String, dynamic> map) {
    return AzureFirewallSku(
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

