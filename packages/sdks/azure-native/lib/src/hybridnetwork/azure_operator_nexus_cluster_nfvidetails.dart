// ignore_for_file: unused_element, unnecessary_cast

import 'referenced_resource.dart';

/// The AzureOperatorNexusCluster NFVI detail.
class AzureOperatorNexusClusterNFVIDetails {
  /// The reference to the custom location.
  final ReferencedResource? customLocationReference;
  /// Name of the nfvi.
  final String? name;
  /// The NFVI type.
  /// Expected value is 'AzureOperatorNexus'.
  final String nfviType;

  /// Creates a new [AzureOperatorNexusClusterNFVIDetails].
  /// [customLocationReference] The reference to the custom location.
  /// [name] Name of the nfvi.
  /// [nfviType] The NFVI type.
  AzureOperatorNexusClusterNFVIDetails({
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

  factory AzureOperatorNexusClusterNFVIDetails.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusClusterNFVIDetails(
      customLocationReference: map['customLocationReference'] == null ? null : ReferencedResource.fromMap((map['customLocationReference'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      nfviType: map['nfviType'] as String,
    );
  }
}

