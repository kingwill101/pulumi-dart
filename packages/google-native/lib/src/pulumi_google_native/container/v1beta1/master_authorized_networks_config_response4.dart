// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cidr_block_response4.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfigResponse4 {
  /// cidr_blocks define up to 10 external networks that could access Kubernetes master through HTTPS.
  final List<CidrBlockResponse4> cidrBlocks;

  /// Whether or not master authorized networks is enabled.
  final bool enabled;

  /// Whether master is accessbile via Google Compute Engine Public IP addresses.
  final bool gcpPublicCidrsAccessEnabled;

  MasterAuthorizedNetworksConfigResponse4({
    required this.cidrBlocks,
    required this.enabled,
    required this.gcpPublicCidrsAccessEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlocks'] =
        Input.encodeList<CidrBlockResponse4, Map<String, dynamic>>(
            cidrBlocks, (value) => value.toMap());
    map['enabled'] = enabled;
    map['gcpPublicCidrsAccessEnabled'] = gcpPublicCidrsAccessEnabled;
    return map;
  }

  factory MasterAuthorizedNetworksConfigResponse4.fromMap(
      Map<String, dynamic> map) {
    return MasterAuthorizedNetworksConfigResponse4(
      cidrBlocks: Input.decodeList<CidrBlockResponse4>(
          map['cidrBlocks'],
          (value) => CidrBlockResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
      gcpPublicCidrsAccessEnabled: map['gcpPublicCidrsAccessEnabled'] as bool,
    );
  }
}
