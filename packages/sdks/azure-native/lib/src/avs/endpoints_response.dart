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
  EndpointsResponse({
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
      hcxCloudManager: (map['hcxCloudManager'] as String).input(),
      hcxCloudManagerIp: (map['hcxCloudManagerIp'] as String).input(),
      nsxtManager: (map['nsxtManager'] as String).input(),
      nsxtManagerIp: (map['nsxtManagerIp'] as String).input(),
      vcenterIp: (map['vcenterIp'] as String).input(),
      vcsa: (map['vcsa'] as String).input(),
    );
  }
}

