// ignore_for_file: unused_element, unnecessary_cast

class ProvisionedProductProvisioningParameter {
  /// Parameter key.
  final String key;

  /// Whether to ignore `value` and keep the previous parameter value. Ignored when initially provisioning a product.
  final bool? usePreviousValue;

  /// Parameter value.
  final String? value;

  ProvisionedProductProvisioningParameter({
    required this.key,
    this.usePreviousValue,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final usePreviousValueValue = usePreviousValue;
    if (usePreviousValueValue != null) {
      map['usePreviousValue'] = usePreviousValueValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory ProvisionedProductProvisioningParameter.fromMap(
      Map<String, dynamic> map) {
    return ProvisionedProductProvisioningParameter(
      key: map['key'] as String,
      usePreviousValue: map['usePreviousValue'] == null
          ? null
          : map['usePreviousValue'] as bool,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
