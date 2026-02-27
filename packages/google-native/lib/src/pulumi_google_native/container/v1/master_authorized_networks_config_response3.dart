// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cidr_block_response3.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfigResponse3 {
  /// cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS.
  final List<CidrBlockResponse3> cidrBlocks;

  /// Whether or not master authorized networks is enabled.
  final bool enabled;

  /// Whether master is accessbile via Google Compute Engine Public IP addresses.
  final bool gcpPublicCidrsAccessEnabled;

  MasterAuthorizedNetworksConfigResponse3({
    required this.cidrBlocks,
    required this.enabled,
    required this.gcpPublicCidrsAccessEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlocks'] =
        Input.encodeList<CidrBlockResponse3, Map<String, dynamic>>(
            cidrBlocks, (value) => value.toMap());
    map['enabled'] = enabled;
    map['gcpPublicCidrsAccessEnabled'] = gcpPublicCidrsAccessEnabled;
    return map;
  }

  factory MasterAuthorizedNetworksConfigResponse3.fromMap(
      Map<String, dynamic> map) {
    return MasterAuthorizedNetworksConfigResponse3(
      cidrBlocks: Input.decodeList<CidrBlockResponse3>(
          map['cidrBlocks'],
          (value) => CidrBlockResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
      gcpPublicCidrsAccessEnabled: map['gcpPublicCidrsAccessEnabled'] as bool,
    );
  }
}
