// ignore_for_file: unused_element, unnecessary_cast

class ProvisionedProductProvisioningParameter {
  /// Parameter key.
  final String key;

  /// Whether to ignore `value` and keep the previous parameter value. Ignored when initially provisioning a product.
  final bool? usePreviousValue;

  /// Parameter value.
  final String? value;

  /// Creates a new [ProvisionedProductProvisioningParameter].
  /// [key] Parameter key.
  /// [usePreviousValue] Whether to ignore `value` and keep the previous parameter value. Ignored when initially provisioning a product.
  /// [value] Parameter value.
  ProvisionedProductProvisioningParameter({
    required this.key,
    this.usePreviousValue,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'usePreviousValue': ?usePreviousValue,
      'value': ?value,
    };
  }

  factory ProvisionedProductProvisioningParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProvisionedProductProvisioningParameter(
      key: map['key'] as String,
      usePreviousValue: map['usePreviousValue'] == null
          ? null
          : map['usePreviousValue'] as bool,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
