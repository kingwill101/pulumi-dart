// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Firewall Autoscale Configuration parameters.
class AzureFirewallAutoscaleConfiguration {
  /// The maximum number of capacity units for this azure firewall. Use null to reset the value to the service default.
  final pulumi.Input<int>? maxCapacity;
  /// The minimum number of capacity units for this azure firewall. Use null to reset the value to the service default.
  final pulumi.Input<int>? minCapacity;

  /// Creates a new [AzureFirewallAutoscaleConfiguration].
  /// [maxCapacity] The maximum number of capacity units for this azure firewall. Use null to reset the value to the service default.
  /// [minCapacity] The minimum number of capacity units for this azure firewall. Use null to reset the value to the service default.
  const AzureFirewallAutoscaleConfiguration({
    this.maxCapacity,
    this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': ?maxCapacity,
      'minCapacity': ?minCapacity,
    };
  }

  factory AzureFirewallAutoscaleConfiguration.fromMap(Map<String, dynamic> map) {
    return AzureFirewallAutoscaleConfiguration(
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minCapacity: (() { final guardedValue = map['minCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

