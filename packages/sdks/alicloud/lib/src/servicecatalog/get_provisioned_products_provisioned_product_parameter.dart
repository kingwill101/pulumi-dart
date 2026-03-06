// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProvisionedProductsProvisionedProductParameter {
  final pulumi.Input<String> parameterKey;
  final pulumi.Input<String> parameterValue;

  /// Creates a new [GetProvisionedProductsProvisionedProductParameter].
  /// [parameterKey] Required.
  /// [parameterValue] Required.
  const GetProvisionedProductsProvisionedProductParameter({
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
      parameterKey: pulumi.Input.fromValue(map['parameterKey'] as String),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
    );
  }
}

