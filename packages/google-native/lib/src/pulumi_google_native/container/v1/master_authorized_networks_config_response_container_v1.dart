// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cidr_block_response_container_v1.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfigResponseContainerV1 {
  /// cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS.
  final List<CidrBlockResponseContainerV1> cidrBlocks;

  /// Whether or not master authorized networks is enabled.
  final bool enabled;

  /// Whether master is accessbile via Google Compute Engine Public IP addresses.
  final bool gcpPublicCidrsAccessEnabled;

  MasterAuthorizedNetworksConfigResponseContainerV1({
    required this.cidrBlocks,
    required this.enabled,
    required this.gcpPublicCidrsAccessEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlocks'] = pulumi.Input.encodeList<CidrBlockResponseContainerV1,
        Map<String, dynamic>>(cidrBlocks, (value) => value.toMap());
    map['enabled'] = enabled;
    map['gcpPublicCidrsAccessEnabled'] = gcpPublicCidrsAccessEnabled;
    return map;
  }

  factory MasterAuthorizedNetworksConfigResponseContainerV1.fromMap(
      Map<String, dynamic> map) {
    return MasterAuthorizedNetworksConfigResponseContainerV1(
      cidrBlocks: pulumi.Input.decodeList<CidrBlockResponseContainerV1>(
          map['cidrBlocks'],
          (value) => CidrBlockResponseContainerV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
      gcpPublicCidrsAccessEnabled: map['gcpPublicCidrsAccessEnabled'] as bool,
    );
  }
}
