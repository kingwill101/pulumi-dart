// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_k8s_cluster_nfvidetails_response.dart';
import 'referenced_resource_response.dart';

/// Site properties.
class SitePropertiesFormatResponse {
  /// List of NFVIs
  final List<AzureArcK8sClusterNFVIDetailsResponse>? nfvis;
  /// The provisioning state of the site resource. **TODO**: Confirm if this is needed.
  final String provisioningState;
  /// The list of site network services on the site.
  final List<ReferencedResourceResponse> siteNetworkServiceReferences;

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
      'nfvis': ?nfvis == null ? null : pulumi.Input.encodeList<AzureArcK8sClusterNFVIDetailsResponse, Map<String, dynamic>>(nfvis!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'siteNetworkServiceReferences': pulumi.Input.encodeList<ReferencedResourceResponse, Map<String, dynamic>>(siteNetworkServiceReferences, (value) => value.toMap()),
    };
  }

  factory SitePropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return SitePropertiesFormatResponse(
      nfvis: map['nfvis'] == null ? null : pulumi.Input.decodeList<AzureArcK8sClusterNFVIDetailsResponse>(map['nfvis'], (value) => AzureArcK8sClusterNFVIDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      siteNetworkServiceReferences: pulumi.Input.decodeList<ReferencedResourceResponse>(map['siteNetworkServiceReferences'], (value) => ReferencedResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

