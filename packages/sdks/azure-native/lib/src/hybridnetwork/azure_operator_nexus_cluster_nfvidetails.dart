// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'referenced_resource.dart';

/// The AzureOperatorNexusCluster NFVI detail.
class AzureOperatorNexusClusterNFVIDetails {
  /// The reference to the custom location.
  final pulumi.Input<ReferencedResource>? customLocationReference;
  /// Name of the nfvi.
  final pulumi.Input<String>? name;
  /// The NFVI type.
  /// Expected value is 'AzureOperatorNexus'.
  final pulumi.Input<String> nfviType;

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
      'customLocationReference': ?pulumi.Input.mapOptionalInputValue<ReferencedResource, Map<String, dynamic>>(customLocationReference, (value) => value.toMap()),
      'name': ?name,
      'nfviType': nfviType,
    };
  }

  factory AzureOperatorNexusClusterNFVIDetails.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusClusterNFVIDetails(
      customLocationReference: map['customLocationReference'] == null ? null : (ReferencedResource.fromMap((map['customLocationReference']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nfviType: (map['nfviType'] as String).input(),
    );
  }
}

