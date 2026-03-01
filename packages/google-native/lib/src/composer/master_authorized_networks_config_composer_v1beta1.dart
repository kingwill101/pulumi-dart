// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cidr_block_composer_v1beta1.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfigComposerV1beta1 {
  /// Up to 50 external networks that could access Kubernetes master through HTTPS.
  final List<CidrBlockComposerV1beta1>? cidrBlocks;

  /// Whether or not master authorized networks feature is enabled.
  final bool? enabled;

  /// Creates a new [MasterAuthorizedNetworksConfigComposerV1beta1].
  /// [cidrBlocks] Up to 50 external networks that could access Kubernetes master through HTTPS.
  /// [enabled] Whether or not master authorized networks feature is enabled.
  MasterAuthorizedNetworksConfigComposerV1beta1({
    this.cidrBlocks,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': ?cidrBlocks == null
          ? null
          : pulumi.Input.encodeList<
              CidrBlockComposerV1beta1,
              Map<String, dynamic>
            >(cidrBlocks!, (value) => value.toMap()),
      'enabled': ?enabled,
    };
  }

  factory MasterAuthorizedNetworksConfigComposerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return MasterAuthorizedNetworksConfigComposerV1beta1(
      cidrBlocks: map['cidrBlocks'] == null
          ? null
          : pulumi.Input.decodeList<CidrBlockComposerV1beta1>(
              map['cidrBlocks'],
              (value) => CidrBlockComposerV1beta1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
