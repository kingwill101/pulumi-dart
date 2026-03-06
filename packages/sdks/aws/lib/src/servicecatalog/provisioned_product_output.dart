// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProvisionedProductOutput {
  /// The description of the output.
  final pulumi.Input<String>? description;
  /// The output key.
  final pulumi.Input<String>? key;
  /// The output value.
  final pulumi.Input<String>? value;

  /// Creates a new [ProvisionedProductOutput].
  /// [description] The description of the output.
  /// [key] The output key.
  /// [value] The output value.
  const ProvisionedProductOutput({
    this.description,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'key': ?key,
      'value': ?value,
    };
  }

  factory ProvisionedProductOutput.fromMap(Map<String, dynamic> map) {
    return ProvisionedProductOutput(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

