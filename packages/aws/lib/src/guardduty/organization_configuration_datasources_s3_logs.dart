// ignore_for_file: unused_element, unnecessary_cast

class OrganizationConfigurationDatasourcesS3Logs {
  /// Set to `true` if you want S3 data event logs to be automatically enabled for new members of the organization. Default: `false`
  final bool autoEnable;

  /// Creates a new [OrganizationConfigurationDatasourcesS3Logs].
  /// [autoEnable] Set to `true` if you want S3 data event logs to be automatically enabled for new members of the organization. Default: `false`
  OrganizationConfigurationDatasourcesS3Logs({
    required this.autoEnable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoEnable'] = autoEnable;
    return map;
  }

  factory OrganizationConfigurationDatasourcesS3Logs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationConfigurationDatasourcesS3Logs(
      autoEnable: map['autoEnable'] as bool,
    );
  }
}
