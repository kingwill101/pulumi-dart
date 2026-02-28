// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cidr_block.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfig {
  /// cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS.
  final List<CidrBlock>? cidrBlocks;

  /// Whether or not master authorized networks is enabled.
  final bool? enabled;

  /// Whether master is accessbile via Google Compute Engine Public IP addresses.
  final bool? gcpPublicCidrsAccessEnabled;

  /// Creates a new [MasterAuthorizedNetworksConfig].
  /// [cidrBlocks] cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS.
  /// [enabled] Whether or not master authorized networks is enabled.
  /// [gcpPublicCidrsAccessEnabled] Whether master is accessbile via Google Compute Engine Public IP addresses.
  MasterAuthorizedNetworksConfig({
    this.cidrBlocks,
    this.enabled,
    this.gcpPublicCidrsAccessEnabled,
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
    final gcpPublicCidrsAccessEnabledValue = gcpPublicCidrsAccessEnabled;
    if (gcpPublicCidrsAccessEnabledValue != null) {
      map['gcpPublicCidrsAccessEnabled'] = gcpPublicCidrsAccessEnabledValue;
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
      gcpPublicCidrsAccessEnabled: map['gcpPublicCidrsAccessEnabled'] == null
          ? null
          : map['gcpPublicCidrsAccessEnabled'] as bool,
    );
  }
}
