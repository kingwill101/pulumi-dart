// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'referenced_resource_response.dart';

/// The AzureOperatorNexusCluster NFVI detail.
class AzureOperatorNexusClusterNFVIDetailsResponse {
  /// The reference to the custom location.
  final pulumi.Input<ReferencedResourceResponse>? customLocationReference;
  /// Name of the nfvi.
  final pulumi.Input<String>? name;
  /// The NFVI type.
  /// Expected value is 'AzureOperatorNexus'.
  final pulumi.Input<String> nfviType;

  /// Creates a new [AzureOperatorNexusClusterNFVIDetailsResponse].
  /// [customLocationReference] The reference to the custom location.
  /// [name] Name of the nfvi.
  /// [nfviType] The NFVI type.
  AzureOperatorNexusClusterNFVIDetailsResponse({
    this.customLocationReference,
    this.name,
    required this.nfviType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationReference': ?pulumi.Input.mapOptionalInputValue<ReferencedResourceResponse, Map<String, dynamic>>(customLocationReference, (value) => value.toMap()),
      'name': ?name,
      'nfviType': nfviType,
    };
  }

  factory AzureOperatorNexusClusterNFVIDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusClusterNFVIDetailsResponse(
      customLocationReference: map['customLocationReference'] == null ? null : (ReferencedResourceResponse.fromMap((map['customLocationReference'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nfviType: (map['nfviType'] as String).input(),
    );
  }
}

