// ignore_for_file: unused_element, unnecessary_cast

import 'buildpack_binding_launch_properties.dart';

/// Properties of a buildpack binding
class BuildpackBindingProperties {
  /// Buildpack Binding Type
  final String? bindingType;
  /// The object describes the buildpack binding launch properties
  final BuildpackBindingLaunchProperties? launchProperties;

  /// Creates a new [BuildpackBindingProperties].
  /// [bindingType] Buildpack Binding Type
  /// [launchProperties] The object describes the buildpack binding launch properties
  BuildpackBindingProperties({
    this.bindingType,
    this.launchProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingType': ?bindingType,
      'launchProperties': ?launchProperties == null ? null : launchProperties!.toMap(),
    };
  }

  factory BuildpackBindingProperties.fromMap(Map<String, dynamic> map) {
    return BuildpackBindingProperties(
      bindingType: map['bindingType'] == null ? null : map['bindingType'] as String,
      launchProperties: map['launchProperties'] == null ? null : BuildpackBindingLaunchProperties.fromMap((map['launchProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

