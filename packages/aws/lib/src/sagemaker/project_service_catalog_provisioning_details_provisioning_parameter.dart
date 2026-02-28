// ignore_for_file: unused_element, unnecessary_cast

class ProjectServiceCatalogProvisioningDetailsProvisioningParameter {
  /// The key that identifies a provisioning parameter.
  final String key;

  /// The value of the provisioning parameter.
  final String? value;

  /// Creates a new [ProjectServiceCatalogProvisioningDetailsProvisioningParameter].
  /// [key] The key that identifies a provisioning parameter.
  /// [value] The value of the provisioning parameter.
  ProjectServiceCatalogProvisioningDetailsProvisioningParameter({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory ProjectServiceCatalogProvisioningDetailsProvisioningParameter.fromMap(
      Map<String, dynamic> map) {
    return ProjectServiceCatalogProvisioningDetailsProvisioningParameter(
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
