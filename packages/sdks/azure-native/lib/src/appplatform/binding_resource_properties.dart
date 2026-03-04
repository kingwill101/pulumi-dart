// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Binding resource properties payload
class BindingResourceProperties {
  /// Binding parameters of the Binding resource
  final pulumi.Input<Map<String, String>>? bindingParameters;

  /// The key of the bound resource
  final pulumi.Input<String>? key;

  /// The Azure resource id of the bound resource
  final pulumi.Input<String>? resourceId;

  /// Creates a new [BindingResourceProperties].
  /// [bindingParameters] Binding parameters of the Binding resource
  /// [key] The key of the bound resource
  /// [resourceId] The Azure resource id of the bound resource
  BindingResourceProperties({
    this.bindingParameters,
    this.key,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingParameters': ?bindingParameters,
      'key': ?key,
      'resourceId': ?resourceId,
    };
  }

  factory BindingResourceProperties.fromMap(Map<String, dynamic> map) {
    return BindingResourceProperties(
      bindingParameters: (() {
        final guardedValue = map['bindingParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
