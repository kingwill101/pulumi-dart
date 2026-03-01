// ignore_for_file: unused_element, unnecessary_cast


class GetProvisionedProductsProductParameter {
  final String parameterKey;
  final String parameterValue;

  /// Creates a new [GetProvisionedProductsProductParameter].
  /// [parameterKey] Required.
  /// [parameterValue] Required.
  GetProvisionedProductsProductParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory GetProvisionedProductsProductParameter.fromMap(Map<String, dynamic> map) {
    return GetProvisionedProductsProductParameter(
      parameterKey: map['parameterKey'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

