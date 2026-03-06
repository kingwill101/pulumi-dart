// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'referenced_resource.dart';

/// The AzureArcK8sCluster NFVI detail.
class AzureArcK8sClusterNFVIDetails {
  /// The reference to the custom location.
  final pulumi.Input<ReferencedResource>? customLocationReference;
  /// Name of the nfvi.
  final pulumi.Input<String>? name;
  /// The NFVI type.
  /// Expected value is 'AzureArcKubernetes'.
  final pulumi.Input<String> nfviType;

  /// Creates a new [AzureArcK8sClusterNFVIDetails].
  /// [customLocationReference] The reference to the custom location.
  /// [name] Name of the nfvi.
  /// [nfviType] The NFVI type.
  const AzureArcK8sClusterNFVIDetails({
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

  factory AzureArcK8sClusterNFVIDetails.fromMap(Map<String, dynamic> map) {
    return AzureArcK8sClusterNFVIDetails(
      customLocationReference: (() { final guardedValue = map['customLocationReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReferencedResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfviType: pulumi.Input.fromValue(map['nfviType'] as String),
    );
  }
}

