// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProvisionedProductOutput {
  /// Description of the output value defined in the template.
  final pulumi.Input<String>? description;
  /// The name of the output value defined in the template.
  final pulumi.Input<String>? outputKey;
  /// The content of the output value defined in the template.
  final pulumi.Input<String>? outputValue;

  /// Creates a new [ProvisionedProductOutput].
  /// [description] Description of the output value defined in the template.
  /// [outputKey] The name of the output value defined in the template.
  /// [outputValue] The content of the output value defined in the template.
  ProvisionedProductOutput({
    this.description,
    this.outputKey,
    this.outputValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'outputKey': ?outputKey,
      'outputValue': ?outputValue,
    };
  }

  factory ProvisionedProductOutput.fromMap(Map<String, dynamic> map) {
    return ProvisionedProductOutput(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      outputKey: map['outputKey'] == null ? null : (map['outputKey']! as String).input(),
      outputValue: map['outputValue'] == null ? null : (map['outputValue']! as String).input(),
    );
  }
}

