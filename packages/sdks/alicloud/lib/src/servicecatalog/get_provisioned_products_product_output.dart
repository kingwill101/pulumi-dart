// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProvisionedProductsProductOutput {
  final pulumi.Input<String> description;
  final pulumi.Input<String> outputKey;
  final pulumi.Input<String> outputValue;

  /// Creates a new [GetProvisionedProductsProductOutput].
  /// [description] Required.
  /// [outputKey] Required.
  /// [outputValue] Required.
  GetProvisionedProductsProductOutput({
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

  factory GetProvisionedProductsProductOutput.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetProvisionedProductsProductOutput(
      description: pulumi.Input.fromValue(map['description'] as String),
      outputKey: pulumi.Input.fromValue(map['outputKey'] as String),
      outputValue: pulumi.Input.fromValue(map['outputValue'] as String),
    );
  }
}
