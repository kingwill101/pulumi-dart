// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cidr_block_response_composer_v1beta1.dart';

/// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
class MasterAuthorizedNetworksConfigResponseComposerV1beta1 {
  /// Up to 50 external networks that could access Kubernetes master through HTTPS.
  final List<CidrBlockResponseComposerV1beta1> cidrBlocks;

  /// Whether or not master authorized networks feature is enabled.
  final bool enabled;

  /// Creates a new [MasterAuthorizedNetworksConfigResponseComposerV1beta1].
  /// [cidrBlocks] Up to 50 external networks that could access Kubernetes master through HTTPS.
  /// [enabled] Whether or not master authorized networks feature is enabled.
  MasterAuthorizedNetworksConfigResponseComposerV1beta1({
    required this.cidrBlocks,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlocks'] = pulumi.Input.encodeList<
        CidrBlockResponseComposerV1beta1,
        Map<String, dynamic>>(cidrBlocks, (value) => value.toMap());
    map['enabled'] = enabled;
    return map;
  }

  factory MasterAuthorizedNetworksConfigResponseComposerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return MasterAuthorizedNetworksConfigResponseComposerV1beta1(
      cidrBlocks: pulumi.Input.decodeList<CidrBlockResponseComposerV1beta1>(
          map['cidrBlocks'],
          (value) => CidrBlockResponseComposerV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
    );
  }
}
