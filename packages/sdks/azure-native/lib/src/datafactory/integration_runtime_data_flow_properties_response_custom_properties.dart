// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationRuntimeDataFlowPropertiesResponseCustomProperties {
  /// Name of custom property.
  final pulumi.Input<String>? name;

  /// Value of custom property.
  final pulumi.Input<String>? value;

  /// Creates a new [IntegrationRuntimeDataFlowPropertiesResponseCustomProperties].
  /// [name] Name of custom property.
  /// [value] Value of custom property.
  IntegrationRuntimeDataFlowPropertiesResponseCustomProperties({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory IntegrationRuntimeDataFlowPropertiesResponseCustomProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntegrationRuntimeDataFlowPropertiesResponseCustomProperties(
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
