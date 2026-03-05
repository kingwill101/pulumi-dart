// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of an Azure Firewall.
class AzureFirewallSku {
  /// Name of an Azure Firewall SKU.
  final pulumi.Input<String>? name;
  /// Tier of an Azure Firewall.
  final pulumi.Input<String>? tier;

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

