// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceConfigurationS3ConfigurationAccessControlListConfiguration {
  /// Path to the AWS S3 bucket that contains the ACL files.
  final pulumi.Input<String>? keyPath;

  /// Creates a new [DataSourceConfigurationS3ConfigurationAccessControlListConfiguration].
  /// [keyPath] Path to the AWS S3 bucket that contains the ACL files.
  DataSourceConfigurationS3ConfigurationAccessControlListConfiguration({
    this.keyPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyPath': ?keyPath,
    };
  }

  factory DataSourceConfigurationS3ConfigurationAccessControlListConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSourceConfigurationS3ConfigurationAccessControlListConfiguration(
      keyPath: map['keyPath'] == null ? null : (map['keyPath'] as String).input(),
    );
  }
}

