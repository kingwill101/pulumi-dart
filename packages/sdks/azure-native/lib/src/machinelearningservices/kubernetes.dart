// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_properties.dart';

/// A Machine Learning compute based on Kubernetes Compute.
class Kubernetes {
  /// Location for the underlying compute
  final pulumi.Input<String>? computeLocation;
  /// The type of compute
  /// Expected value is 'Kubernetes'.
  final pulumi.Input<String> computeType;
  /// The description of the Machine Learning compute.
  final pulumi.Input<String>? description;
  /// Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  final pulumi.Input<bool>? disableLocalAuth;
  /// Properties of Kubernetes
  final pulumi.Input<KubernetesProperties>? properties;
  /// ARM resource id of the underlying compute
  final pulumi.Input<String>? resourceId;

  /// Creates a new [Kubernetes].
  /// [computeLocation] Location for the underlying compute
  /// [computeType] The type of compute
  /// [description] The description of the Machine Learning compute.
  /// [disableLocalAuth] Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  /// [properties] Properties of Kubernetes
  /// [resourceId] ARM resource id of the underlying compute
  Kubernetes({
    this.computeLocation,
    required this.computeType,
    this.description,
    this.disableLocalAuth,
    this.properties,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeLocation': ?computeLocation,
      'computeType': computeType,
      'description': ?description,
      'disableLocalAuth': ?disableLocalAuth,
      'properties': ?pulumi.Input.mapOptionalInputValue<KubernetesProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceId': ?resourceId,
    };
  }

  factory Kubernetes.fromMap(Map<String, dynamic> map) {
    return Kubernetes(
      computeLocation: map['computeLocation'] == null ? null : (map['computeLocation'] as String).input(),
      computeType: (map['computeType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : (map['disableLocalAuth'] as bool).input(),
      properties: map['properties'] == null ? null : (KubernetesProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
    );
  }
}

