// ignore_for_file: unused_element, unnecessary_cast


/// Subnet Configuration
class SubnetConfiguration {
  /// Network prefix size.
  final int networkPrefixSize;
  /// Subnet delegation.
  final String? subnetDelegation;
  /// Subnet name.
  final String subnetName;

  /// Creates a new [SubnetConfiguration].
  /// [networkPrefixSize] Network prefix size.
  /// [subnetDelegation] Subnet delegation.
  /// [subnetName] Subnet name.
  SubnetConfiguration({
    required this.networkPrefixSize,
    this.subnetDelegation,
    required this.subnetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkPrefixSize': networkPrefixSize,
      'subnetDelegation': ?subnetDelegation,
      'subnetName': subnetName,
    };
  }

  factory SubnetConfiguration.fromMap(Map<String, dynamic> map) {
    return SubnetConfiguration(
      networkPrefixSize: map['networkPrefixSize'] as int,
      subnetDelegation: map['subnetDelegation'] == null ? null : map['subnetDelegation'] as String,
      subnetName: map['subnetName'] as String,
    );
  }
}

