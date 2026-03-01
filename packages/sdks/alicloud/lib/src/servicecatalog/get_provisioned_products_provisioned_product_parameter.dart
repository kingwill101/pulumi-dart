// ignore_for_file: unused_element, unnecessary_cast


class GetProvisionedProductsProvisionedProductParameter {
  final String parameterKey;
  final String parameterValue;

  /// Creates a new [GetProvisionedProductsProvisionedProductParameter].
  /// [parameterKey] Required.
  /// [parameterValue] Required.
  GetProvisionedProductsProvisionedProductParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory GetProvisionedProductsProvisionedProductParameter.fromMap(Map<String, dynamic> map) {
    return GetProvisionedProductsProvisionedProductParameter(
      parameterKey: map['parameterKey'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

