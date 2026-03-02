// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationConfigurationDatasourcesS3Logs {
  /// Set to `true` if you want S3 data event logs to be automatically enabled for new members of the organization. Default: `false`
  final pulumi.Input<bool> autoEnable;

  /// Creates a new [OrganizationConfigurationDatasourcesS3Logs].
  /// [autoEnable] Set to `true` if you want S3 data event logs to be automatically enabled for new members of the organization. Default: `false`
  OrganizationConfigurationDatasourcesS3Logs({
    required this.autoEnable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoEnable': autoEnable,
    };
  }

  factory OrganizationConfigurationDatasourcesS3Logs.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationDatasourcesS3Logs(
      autoEnable: (map['autoEnable'] as bool).input(),
    );
  }
}

