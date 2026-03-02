// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProvisionedProductsProductParameter {
  final pulumi.Input<String> parameterKey;
  final pulumi.Input<String> parameterValue;

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
      parameterKey: (map['parameterKey'] as String).input(),
      parameterValue: (map['parameterValue'] as String).input(),
    );
  }
}

