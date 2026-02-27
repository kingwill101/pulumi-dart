// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cidr_block.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfig {
  /// Up to 50 external networks that could access Kubernetes master through HTTPS.
  final List<CidrBlock>? cidrBlocks;

  /// Whether or not master authorized networks feature is enabled.
  final bool? enabled;

  MasterAuthorizedNetworksConfig({
    this.cidrBlocks,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrBlocksValue = cidrBlocks;
    if (cidrBlocksValue != null) {
      map['cidrBlocks'] =
          pulumi.Input.encodeList<CidrBlock, Map<String, dynamic>>(
              cidrBlocksValue, (value) => value.toMap());
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory MasterAuthorizedNetworksConfig.fromMap(Map<String, dynamic> map) {
    return MasterAuthorizedNetworksConfig(
      cidrBlocks: map['cidrBlocks'] == null
          ? null
          : pulumi.Input.decodeList<CidrBlock>(
              map['cidrBlocks'],
              (value) =>
                  CidrBlock.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
