// ignore_for_file: unused_element, unnecessary_cast

class ApplicationAppConfig {
  /// The configuration item to set. Valid values are `opensearchDashboards.dashboardAdmin.users` and `opensearchDashboards.dashboardAdmin.groups`.
  final String? key;

  /// The value assigned to the configuration key, such as an IAM user ARN or group name. Must be between 1 and 4096 characters.
  final String? value;

  ApplicationAppConfig({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory ApplicationAppConfig.fromMap(Map<String, dynamic> map) {
    return ApplicationAppConfig(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
