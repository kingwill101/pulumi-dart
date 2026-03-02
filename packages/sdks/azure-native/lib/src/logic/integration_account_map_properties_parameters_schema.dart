// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters schema of integration account map.
class IntegrationAccountMapPropertiesParametersSchema {
  /// The reference name.
  final pulumi.Input<String>? ref;

  /// Creates a new [IntegrationAccountMapPropertiesParametersSchema].
  /// [ref] The reference name.
  IntegrationAccountMapPropertiesParametersSchema({
    this.ref,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ref': ?ref,
    };
  }

  factory IntegrationAccountMapPropertiesParametersSchema.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountMapPropertiesParametersSchema(
      ref: map['ref'] == null ? null : (map['ref']! as String).input(),
    );
  }
}

