// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Column transformer parameters.
class ColumnTransformer {
  /// Fields to apply transformer logic on.
  final pulumi.Input<List<String>>? fields;
  /// Different properties to be passed to transformer.
  /// Input expected is dictionary of key,value pairs in JSON format.
  final pulumi.Input<dynamic>? parameters;

  /// Creates a new [ColumnTransformer].
  /// [fields] Fields to apply transformer logic on.
  /// [parameters] Different properties to be passed to transformer.
  const ColumnTransformer({
    this.fields,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?fields,
      'parameters': ?parameters,
    };
  }

  factory ColumnTransformer.fromMap(Map<String, dynamic> map) {
    return ColumnTransformer(
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
