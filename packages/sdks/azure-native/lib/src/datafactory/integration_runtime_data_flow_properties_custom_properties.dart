// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationRuntimeDataFlowPropertiesCustomProperties {
  /// Name of custom property.
  final pulumi.Input<String>? name;

  /// Value of custom property.
  final pulumi.Input<String>? value;

  /// Creates a new [IntegrationRuntimeDataFlowPropertiesCustomProperties].
  /// [name] Name of custom property.
  /// [value] Value of custom property.
  IntegrationRuntimeDataFlowPropertiesCustomProperties({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory IntegrationRuntimeDataFlowPropertiesCustomProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntegrationRuntimeDataFlowPropertiesCustomProperties(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
