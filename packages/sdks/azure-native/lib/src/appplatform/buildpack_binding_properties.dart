// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildpack_binding_launch_properties.dart';

/// Properties of a buildpack binding
class BuildpackBindingProperties {
  /// Buildpack Binding Type
  final pulumi.Input<String>? bindingType;
  /// The object describes the buildpack binding launch properties
  final pulumi.Input<BuildpackBindingLaunchProperties>? launchProperties;

  /// Creates a new [BuildpackBindingProperties].
  /// [bindingType] Buildpack Binding Type
  /// [launchProperties] The object describes the buildpack binding launch properties
  const BuildpackBindingProperties({
    this.bindingType,
    this.launchProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingType': ?bindingType,
      'launchProperties': ?pulumi.Input.mapOptionalInputValue<BuildpackBindingLaunchProperties, Map<String, dynamic>>(launchProperties, (value) => value.toMap()),
    };
  }

  factory BuildpackBindingProperties.fromMap(Map<String, dynamic> map) {
    return BuildpackBindingProperties(
      bindingType: (() { final guardedValue = map['bindingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchProperties: (() { final guardedValue = map['launchProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildpackBindingLaunchProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

