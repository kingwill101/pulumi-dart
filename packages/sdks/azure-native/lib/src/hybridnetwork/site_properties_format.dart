// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_k8s_cluster_nfvidetails.dart';

/// Site properties.
class SitePropertiesFormat {
  /// List of NFVIs
  final List<AzureArcK8sClusterNFVIDetails>? nfvis;

  /// Creates a new [SitePropertiesFormat].
  /// [nfvis] List of NFVIs
  SitePropertiesFormat({
    this.nfvis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nfvis': ?nfvis == null ? null : pulumi.Input.encodeList<AzureArcK8sClusterNFVIDetails, Map<String, dynamic>>(nfvis!, (value) => value.toMap()),
    };
  }

  factory SitePropertiesFormat.fromMap(Map<String, dynamic> map) {
    return SitePropertiesFormat(
      nfvis: map['nfvis'] == null ? null : pulumi.Input.decodeList<AzureArcK8sClusterNFVIDetails>(map['nfvis'], (value) => AzureArcK8sClusterNFVIDetails.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

