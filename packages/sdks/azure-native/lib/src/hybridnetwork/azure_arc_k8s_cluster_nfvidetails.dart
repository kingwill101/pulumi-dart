// ignore_for_file: unused_element, unnecessary_cast

import 'referenced_resource.dart';

/// The AzureArcK8sCluster NFVI detail.
class AzureArcK8sClusterNFVIDetails {
  /// The reference to the custom location.
  final ReferencedResource? customLocationReference;
  /// Name of the nfvi.
  final String? name;
  /// The NFVI type.
  /// Expected value is 'AzureArcKubernetes'.
  final String nfviType;

  /// Creates a new [AzureArcK8sClusterNFVIDetails].
  /// [customLocationReference] The reference to the custom location.
  /// [name] Name of the nfvi.
  /// [nfviType] The NFVI type.
  AzureArcK8sClusterNFVIDetails({
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

  factory AzureArcK8sClusterNFVIDetails.fromMap(Map<String, dynamic> map) {
    return AzureArcK8sClusterNFVIDetails(
      customLocationReference: map['customLocationReference'] == null ? null : ReferencedResource.fromMap((map['customLocationReference'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      nfviType: map['nfviType'] as String,
    );
  }
}

