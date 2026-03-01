// ignore_for_file: unused_element, unnecessary_cast


class GetProvisionedProductsProvisionedProductOutput {
  final String description;
  final String outputKey;
  final String outputValue;

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
      description: map['description'] as String,
      outputKey: map['outputKey'] as String,
      outputValue: map['outputValue'] as String,
    );
  }
}

