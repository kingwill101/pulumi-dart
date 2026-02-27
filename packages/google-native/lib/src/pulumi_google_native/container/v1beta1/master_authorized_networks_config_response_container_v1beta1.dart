// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cidr_block_response_container_v1beta1.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfigResponseContainerV1beta1 {
  /// cidr_blocks define up to 10 external networks that could access Kubernetes master through HTTPS.
  final List<CidrBlockResponseContainerV1beta1> cidrBlocks;

  /// Whether or not master authorized networks is enabled.
  final bool enabled;

  /// Whether master is accessbile via Google Compute Engine Public IP addresses.
  final bool gcpPublicCidrsAccessEnabled;

  MasterAuthorizedNetworksConfigResponseContainerV1beta1({
    required this.cidrBlocks,
    required this.enabled,
    required this.gcpPublicCidrsAccessEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlocks'] = pulumi.Input.encodeList<
        CidrBlockResponseContainerV1beta1,
        Map<String, dynamic>>(cidrBlocks, (value) => value.toMap());
    map['enabled'] = enabled;
    map['gcpPublicCidrsAccessEnabled'] = gcpPublicCidrsAccessEnabled;
    return map;
  }

  factory MasterAuthorizedNetworksConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return MasterAuthorizedNetworksConfigResponseContainerV1beta1(
      cidrBlocks: pulumi.Input.decodeList<CidrBlockResponseContainerV1beta1>(
          map['cidrBlocks'],
          (value) => CidrBlockResponseContainerV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
      gcpPublicCidrsAccessEnabled: map['gcpPublicCidrsAccessEnabled'] as bool,
    );
  }
}
