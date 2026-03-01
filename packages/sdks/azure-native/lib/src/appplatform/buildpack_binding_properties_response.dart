// ignore_for_file: unused_element, unnecessary_cast

import 'buildpack_binding_launch_properties_response.dart';

/// Properties of a buildpack binding
class BuildpackBindingPropertiesResponse {
  /// Buildpack Binding Type
  final String? bindingType;
  /// The object describes the buildpack binding launch properties
  final BuildpackBindingLaunchPropertiesResponse? launchProperties;
  /// State of the Buildpack Binding.
  final String provisioningState;

  /// Creates a new [BuildpackBindingPropertiesResponse].
  /// [bindingType] Buildpack Binding Type
  /// [launchProperties] The object describes the buildpack binding launch properties
  /// [provisioningState] State of the Buildpack Binding.
  BuildpackBindingPropertiesResponse({
    this.bindingType,
    this.launchProperties,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingType': ?bindingType,
      'launchProperties': ?launchProperties == null ? null : launchProperties!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory BuildpackBindingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BuildpackBindingPropertiesResponse(
      bindingType: map['bindingType'] == null ? null : map['bindingType'] as String,
      launchProperties: map['launchProperties'] == null ? null : BuildpackBindingLaunchPropertiesResponse.fromMap((map['launchProperties'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

