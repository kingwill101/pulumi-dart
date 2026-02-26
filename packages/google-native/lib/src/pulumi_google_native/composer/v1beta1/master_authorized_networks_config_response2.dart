// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'cidr_block_response2.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfigResponse2 {
  /// Up to 50 external networks that could access Kubernetes master through HTTPS.
  final List<CidrBlockResponse2> cidrBlocks;

  /// Whether or not master authorized networks feature is enabled.
  final bool enabled;

  MasterAuthorizedNetworksConfigResponse2({
    required this.cidrBlocks,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlocks'] =
        Input.encodeList<CidrBlockResponse2, Map<String, dynamic>>(
            cidrBlocks, (value) => value.toMap());
    map['enabled'] = enabled;
    return map;
  }

  factory MasterAuthorizedNetworksConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return MasterAuthorizedNetworksConfigResponse2(
      cidrBlocks: Input.decodeList<CidrBlockResponse2>(
          map['cidrBlocks'],
          (value) => CidrBlockResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
    );
  }
}
