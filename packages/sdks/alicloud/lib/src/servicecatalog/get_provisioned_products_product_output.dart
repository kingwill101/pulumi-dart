// ignore_for_file: unused_element, unnecessary_cast


class GetProvisionedProductsProductOutput {
  final String description;
  final String outputKey;
  final String outputValue;

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

  factory GetProvisionedProductsProductOutput.fromMap(Map<String, dynamic> map) {
    return GetProvisionedProductsProductOutput(
      description: map['description'] as String,
      outputKey: map['outputKey'] as String,
      outputValue: map['outputValue'] as String,
    );
  }
}

