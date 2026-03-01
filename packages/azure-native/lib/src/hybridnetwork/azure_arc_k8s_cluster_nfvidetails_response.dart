// ignore_for_file: unused_element, unnecessary_cast

import 'referenced_resource_response.dart';

/// The AzureArcK8sCluster NFVI detail.
class AzureArcK8sClusterNFVIDetailsResponse {
  /// The reference to the custom location.
  final ReferencedResourceResponse? customLocationReference;
  /// Name of the nfvi.
  final String? name;
  /// The NFVI type.
  /// Expected value is 'AzureArcKubernetes'.
  final String nfviType;

  /// Creates a new [AzureArcK8sClusterNFVIDetailsResponse].
  /// [customLocationReference] The reference to the custom location.
  /// [name] Name of the nfvi.
  /// [nfviType] The NFVI type.
  AzureArcK8sClusterNFVIDetailsResponse({
    this.customLocationReference,
    this.name,
    required this.nfviType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationReference': ?customLocationReference == null ? null : customLocationReference!.toMap(),
      'name': ?name,
      'nfviType': nfviType,
    };
  }

  factory AzureArcK8sClusterNFVIDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureArcK8sClusterNFVIDetailsResponse(
      customLocationReference: map['customLocationReference'] == null ? null : ReferencedResourceResponse.fromMap((map['customLocationReference'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      nfviType: map['nfviType'] as String,
    );
  }
}

