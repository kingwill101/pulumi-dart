// ignore_for_file: unused_element, unnecessary_cast

class DataSourceConfigurationS3ConfigurationAccessControlListConfiguration {
  /// Path to the AWS S3 bucket that contains the ACL files.
  final String? keyPath;

  DataSourceConfigurationS3ConfigurationAccessControlListConfiguration({
    this.keyPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyPathValue = keyPath;
    if (keyPathValue != null) {
      map['keyPath'] = keyPathValue;
    }
    return map;
  }

  factory DataSourceConfigurationS3ConfigurationAccessControlListConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DataSourceConfigurationS3ConfigurationAccessControlListConfiguration(
      keyPath: map['keyPath'] == null ? null : map['keyPath'] as String,
    );
  }
}
