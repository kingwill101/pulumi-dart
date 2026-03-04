// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertConfigurationGroupConfiguration {
  /// The field used for grouping evaluation. When type is set to custom, fields must be set.
  final pulumi.Input<List<String>>? fields;
  final pulumi.Input<String>? type;

  /// Creates a new [AlertConfigurationGroupConfiguration].
  /// [fields] The field used for grouping evaluation. When type is set to custom, fields must be set.
  /// [type] Optional.
  AlertConfigurationGroupConfiguration({this.fields, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fields': ?fields, 'type': ?type};
  }

  factory AlertConfigurationGroupConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AlertConfigurationGroupConfiguration(
      fields: (() {
        final guardedValue = map['fields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
