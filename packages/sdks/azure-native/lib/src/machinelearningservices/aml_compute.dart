// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_compute_properties.dart';

/// An Azure Machine Learning compute.
class AmlCompute {
  /// Location for the underlying compute
  final pulumi.Input<String?>? computeLocation;
  /// The type of compute
  /// Expected value is 'AmlCompute'.
  final pulumi.Input<String> computeType;
  /// The description of the Machine Learning compute.
  final pulumi.Input<String?>? description;
  /// Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  final pulumi.Input<bool?>? disableLocalAuth;
  /// Properties of AmlCompute
  final pulumi.Input<AmlComputeProperties?>? properties;
  /// ARM resource id of the underlying compute
  final pulumi.Input<String?>? resourceId;

  /// Creates a new [AmlCompute].
  /// [computeLocation] Location for the underlying compute
  /// [computeType] The type of compute
  /// [description] The description of the Machine Learning compute.
  /// [disableLocalAuth] Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  /// [properties] Properties of AmlCompute
  /// [resourceId] ARM resource id of the underlying compute
  const AmlCompute({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<AmlComputeProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceId': ?resourceId,
    };
  }

  factory AmlCompute.fromMap(Map<String, dynamic> map) {
    return AmlCompute(
      computeLocation: (() { final guardedValue = map['computeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeType: pulumi.Input.fromValue(map['computeType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AmlComputeProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
