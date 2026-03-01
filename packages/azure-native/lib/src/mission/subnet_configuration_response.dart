// ignore_for_file: unused_element, unnecessary_cast


/// Subnet Configuration
class SubnetConfigurationResponse {
  /// Address prefix.
  final String addressPrefix;
  /// Network prefix size.
  final int networkPrefixSize;
  /// Network security group ID.
  final String networkSecurityGroupResourceId;
  /// Subnet delegation.
  final String? subnetDelegation;
  /// Subnet name.
  final String subnetName;
  /// Subnet Resource ID.
  final String subnetResourceId;

  /// Creates a new [SubnetConfigurationResponse].
  /// [addressPrefix] Address prefix.
  /// [networkPrefixSize] Network prefix size.
  /// [networkSecurityGroupResourceId] Network security group ID.
  /// [subnetDelegation] Subnet delegation.
  /// [subnetName] Subnet name.
  /// [subnetResourceId] Subnet Resource ID.
  SubnetConfigurationResponse({
    required this.addressPrefix,
    required this.networkPrefixSize,
    required this.networkSecurityGroupResourceId,
    this.subnetDelegation,
    required this.subnetName,
    required this.subnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'networkPrefixSize': networkPrefixSize,
      'networkSecurityGroupResourceId': networkSecurityGroupResourceId,
      'subnetDelegation': ?subnetDelegation,
      'subnetName': subnetName,
      'subnetResourceId': subnetResourceId,
    };
  }

  factory SubnetConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SubnetConfigurationResponse(
      addressPrefix: map['addressPrefix'] as String,
      networkPrefixSize: map['networkPrefixSize'] as int,
      networkSecurityGroupResourceId: map['networkSecurityGroupResourceId'] as String,
      subnetDelegation: map['subnetDelegation'] == null ? null : map['subnetDelegation'] as String,
      subnetName: map['subnetName'] as String,
      subnetResourceId: map['subnetResourceId'] as String,
    );
  }
}

