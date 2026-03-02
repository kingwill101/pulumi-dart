// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_k8s_cluster_nfvidetails_response.dart';
import 'referenced_resource_response.dart';

/// Site properties.
class SitePropertiesFormatResponse {
  /// List of NFVIs
  final pulumi.Input<List<AzureArcK8sClusterNFVIDetailsResponse>>? nfvis;
  /// The provisioning state of the site resource. **TODO**: Confirm if this is needed.
  final pulumi.Input<String> provisioningState;
  /// The list of site network services on the site.
  final pulumi.Input<List<ReferencedResourceResponse>> siteNetworkServiceReferences;

  /// Creates a new [SitePropertiesFormatResponse].
  /// [nfvis] List of NFVIs
  /// [provisioningState] The provisioning state of the site resource. **TODO**: Confirm if this is needed.
  /// [siteNetworkServiceReferences] The list of site network services on the site.
  SitePropertiesFormatResponse({
    this.nfvis,
    required this.provisioningState,
    required this.siteNetworkServiceReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nfvis': ?pulumi.Input.mapOptionalInputValue<List<AzureArcK8sClusterNFVIDetailsResponse>, List<Map<String, dynamic>>>(nfvis, (value) => pulumi.Input.encodeList<AzureArcK8sClusterNFVIDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'siteNetworkServiceReferences': pulumi.Input.mapInputValue<List<ReferencedResourceResponse>, List<Map<String, dynamic>>>(siteNetworkServiceReferences, (value) => pulumi.Input.encodeList<ReferencedResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SitePropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return SitePropertiesFormatResponse(
      nfvis: map['nfvis'] == null ? null : (pulumi.Input.decodeList<AzureArcK8sClusterNFVIDetailsResponse>(map['nfvis'], (value) => AzureArcK8sClusterNFVIDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      siteNetworkServiceReferences: (pulumi.Input.decodeList<ReferencedResourceResponse>(map['siteNetworkServiceReferences'], (value) => ReferencedResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

