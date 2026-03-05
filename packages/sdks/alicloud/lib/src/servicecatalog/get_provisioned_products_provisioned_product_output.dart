// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProvisionedProductsProvisionedProductOutput {
  final pulumi.Input<String> description;
  final pulumi.Input<String> outputKey;
  final pulumi.Input<String> outputValue;

  /// Creates a new [GetProvisionedProductsProvisionedProductOutput].
  /// [description] Required.
  /// [outputKey] Required.
  /// [outputValue] Required.
  GetProvisionedProductsProvisionedProductOutput({
    required this.description,
    required this.outputKey,
    required this.outputValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'outputKey': outputKey,
      'outputValue': outputValue,
    };
  }

  factory GetProvisionedProductsProvisionedProductOutput.fromMap(Map<String, dynamic> map) {
    return GetProvisionedProductsProvisionedProductOutput(
      description: pulumi.Input.fromValue(map['description'] as String),
      outputKey: pulumi.Input.fromValue(map['outputKey'] as String),
      outputValue: pulumi.Input.fromValue(map['outputValue'] as String),
    );
  }
}

