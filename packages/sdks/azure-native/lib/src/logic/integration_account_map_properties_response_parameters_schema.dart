// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters schema of integration account map.
class IntegrationAccountMapPropertiesResponseParametersSchema {
  /// The reference name.
  final pulumi.Input<String>? ref;

  /// Creates a new [IntegrationAccountMapPropertiesResponseParametersSchema].
  /// [ref] The reference name.
  IntegrationAccountMapPropertiesResponseParametersSchema({this.ref});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ref': ?ref};
  }

  factory IntegrationAccountMapPropertiesResponseParametersSchema.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntegrationAccountMapPropertiesResponseParametersSchema(
      ref: (() {
        final guardedValue = map['ref'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
