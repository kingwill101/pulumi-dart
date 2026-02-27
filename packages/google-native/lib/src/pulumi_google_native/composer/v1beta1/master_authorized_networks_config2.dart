// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cidr_block2.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfig2 {
  /// Up to 50 external networks that could access Kubernetes master through HTTPS.
  final List<CidrBlock2>? cidrBlocks;

  /// Whether or not master authorized networks feature is enabled.
  final bool? enabled;

  MasterAuthorizedNetworksConfig2({
    this.cidrBlocks,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrBlocksValue = cidrBlocks;
    if (cidrBlocksValue != null) {
      map['cidrBlocks'] = Input.encodeList<CidrBlock2, Map<String, dynamic>>(
          cidrBlocksValue, (value) => value.toMap());
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory MasterAuthorizedNetworksConfig2.fromMap(Map<String, dynamic> map) {
    return MasterAuthorizedNetworksConfig2(
      cidrBlocks: map['cidrBlocks'] == null
          ? null
          : Input.decodeList<CidrBlock2>(
              map['cidrBlocks'],
              (value) =>
                  CidrBlock2.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
