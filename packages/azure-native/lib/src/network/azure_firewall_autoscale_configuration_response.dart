// ignore_for_file: unused_element, unnecessary_cast


/// Azure Firewall Autoscale Configuration parameters.
class AzureFirewallAutoscaleConfigurationResponse {
  /// The maximum number of capacity units for this azure firewall. Use null to reset the value to the service default.
  final int? maxCapacity;
  /// The minimum number of capacity units for this azure firewall. Use null to reset the value to the service default.
  final int? minCapacity;

  /// Creates a new [AzureFirewallAutoscaleConfigurationResponse].
  /// [maxCapacity] The maximum number of capacity units for this azure firewall. Use null to reset the value to the service default.
  /// [minCapacity] The minimum number of capacity units for this azure firewall. Use null to reset the value to the service default.
  AzureFirewallAutoscaleConfigurationResponse({
    this.maxCapacity,
    this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': ?maxCapacity,
      'minCapacity': ?minCapacity,
    };
  }

  factory AzureFirewallAutoscaleConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallAutoscaleConfigurationResponse(
      maxCapacity: map['maxCapacity'] == null ? null : map['maxCapacity'] as int,
      minCapacity: map['minCapacity'] == null ? null : map['minCapacity'] as int,
    );
  }
}

