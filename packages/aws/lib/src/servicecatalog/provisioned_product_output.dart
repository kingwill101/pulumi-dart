// ignore_for_file: unused_element, unnecessary_cast

class ProvisionedProductOutput {
  /// The description of the output.
  final String? description;

  /// The output key.
  final String? key;

  /// The output value.
  final String? value;

  /// Creates a new [ProvisionedProductOutput].
  /// [description] The description of the output.
  /// [key] The output key.
  /// [value] The output value.
  ProvisionedProductOutput({
    this.description,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory ProvisionedProductOutput.fromMap(Map<String, dynamic> map) {
    return ProvisionedProductOutput(
      description:
          map['description'] == null ? null : map['description'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
