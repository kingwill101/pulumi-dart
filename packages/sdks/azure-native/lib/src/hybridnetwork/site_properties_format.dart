// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_k8s_cluster_nfvidetails.dart';

/// Site properties.
class SitePropertiesFormat {
  /// List of NFVIs
  final pulumi.Input<List<AzureArcK8sClusterNFVIDetails>>? nfvis;

  /// Creates a new [SitePropertiesFormat].
  /// [nfvis] List of NFVIs
  const SitePropertiesFormat({
    this.nfvis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nfvis': ?pulumi.Input.mapOptionalInputValue<List<AzureArcK8sClusterNFVIDetails>, List<Map<String, dynamic>>>(nfvis, (value) => pulumi.Input.encodeList<AzureArcK8sClusterNFVIDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SitePropertiesFormat.fromMap(Map<String, dynamic> map) {
    return SitePropertiesFormat(
      nfvis: (() { final guardedValue = map['nfvis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureArcK8sClusterNFVIDetails>(guardedValue, (value) => AzureArcK8sClusterNFVIDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
