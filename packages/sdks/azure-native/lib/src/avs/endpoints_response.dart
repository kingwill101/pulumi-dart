// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Endpoint addresses
class EndpointsResponse {
  /// Endpoint FQDN for the HCX Cloud Manager
  final pulumi.Input<String> hcxCloudManager;
  /// Endpoint IP for the HCX Cloud Manager
  final pulumi.Input<String> hcxCloudManagerIp;
  /// Endpoint FQDN for the NSX-T Data Center manager
  final pulumi.Input<String> nsxtManager;
  /// Endpoint IP for the NSX-T Data Center manager
  final pulumi.Input<String> nsxtManagerIp;
  /// Endpoint IP for Virtual Center Server Appliance
  final pulumi.Input<String> vcenterIp;
  /// Endpoint FQDN for Virtual Center Server Appliance
  final pulumi.Input<String> vcsa;

  /// Creates a new [EndpointsResponse].
  /// [hcxCloudManager] Endpoint FQDN for the HCX Cloud Manager
  /// [hcxCloudManagerIp] Endpoint IP for the HCX Cloud Manager
  /// [nsxtManager] Endpoint FQDN for the NSX-T Data Center manager
  /// [nsxtManagerIp] Endpoint IP for the NSX-T Data Center manager
  /// [vcenterIp] Endpoint IP for Virtual Center Server Appliance
  /// [vcsa] Endpoint FQDN for Virtual Center Server Appliance
  const EndpointsResponse({
    required this.hcxCloudManager,
    required this.hcxCloudManagerIp,
    required this.nsxtManager,
    required this.nsxtManagerIp,
    required this.vcenterIp,
    required this.vcsa,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hcxCloudManager': hcxCloudManager,
      'hcxCloudManagerIp': hcxCloudManagerIp,
      'nsxtManager': nsxtManager,
      'nsxtManagerIp': nsxtManagerIp,
      'vcenterIp': vcenterIp,
      'vcsa': vcsa,
    };
  }

  factory EndpointsResponse.fromMap(Map<String, dynamic> map) {
    return EndpointsResponse(
      hcxCloudManager: pulumi.Input.fromValue(map['hcxCloudManager'] as String),
      hcxCloudManagerIp: pulumi.Input.fromValue(map['hcxCloudManagerIp'] as String),
      nsxtManager: pulumi.Input.fromValue(map['nsxtManager'] as String),
      nsxtManagerIp: pulumi.Input.fromValue(map['nsxtManagerIp'] as String),
      vcenterIp: pulumi.Input.fromValue(map['vcenterIp'] as String),
      vcsa: pulumi.Input.fromValue(map['vcsa'] as String),
    );
  }
}
