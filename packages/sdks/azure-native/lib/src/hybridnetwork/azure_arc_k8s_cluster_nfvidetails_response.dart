// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'referenced_resource_response.dart';

/// The AzureArcK8sCluster NFVI detail.
class AzureArcK8sClusterNFVIDetailsResponse {
  /// The reference to the custom location.
  final pulumi.Input<ReferencedResourceResponse>? customLocationReference;

  /// Name of the nfvi.
  final pulumi.Input<String>? name;

  /// The NFVI type.
  /// Expected value is 'AzureArcKubernetes'.
  final pulumi.Input<String> nfviType;

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
      'customLocationReference':
          ?pulumi.Input.mapOptionalInputValue<
            ReferencedResourceResponse,
            Map<String, dynamic>
          >(customLocationReference, (value) => value.toMap()),
      'name': ?name,
      'nfviType': nfviType,
    };
  }

  factory AzureArcK8sClusterNFVIDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureArcK8sClusterNFVIDetailsResponse(
      customLocationReference: (() {
        final guardedValue = map['customLocationReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReferencedResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nfviType: pulumi.Input.fromValue(map['nfviType'] as String),
    );
  }
}
