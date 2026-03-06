// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildpack_binding_launch_properties_response.dart';

/// Properties of a buildpack binding
class BuildpackBindingPropertiesResponse {
  /// Buildpack Binding Type
  final pulumi.Input<String>? bindingType;
  /// The object describes the buildpack binding launch properties
  final pulumi.Input<BuildpackBindingLaunchPropertiesResponse>? launchProperties;
  /// State of the Buildpack Binding.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [BuildpackBindingPropertiesResponse].
  /// [bindingType] Buildpack Binding Type
  /// [launchProperties] The object describes the buildpack binding launch properties
  /// [provisioningState] State of the Buildpack Binding.
  const BuildpackBindingPropertiesResponse({
    this.bindingType,
    this.launchProperties,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingType': ?bindingType,
      'launchProperties': ?pulumi.Input.mapOptionalInputValue<BuildpackBindingLaunchPropertiesResponse, Map<String, dynamic>>(launchProperties, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory BuildpackBindingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BuildpackBindingPropertiesResponse(
      bindingType: (() { final guardedValue = map['bindingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchProperties: (() { final guardedValue = map['launchProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildpackBindingLaunchPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

