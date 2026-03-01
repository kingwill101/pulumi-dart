// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'option_group_option_option_setting.dart';

class OptionGroupOption {
  /// List of DB Security Groups for which the option is enabled.
  final List<String>? dbSecurityGroupMemberships;

  /// Name of the option (e.g., MEMCACHED).
  final String optionName;

  /// The option settings to apply. See `option_settings` Block below for more details.
  final List<OptionGroupOptionOptionSetting>? optionSettings;

  /// Port number when connecting to the option (e.g., 11211). Leaving out or removing `port` from your configuration does not remove or clear a port from the option in AWS. AWS may assign a default port. Not including `port` in your configuration means that the AWS provider will ignore a previously set value, a value set by AWS, and any port changes.
  final int? port;

  /// Version of the option (e.g., 13.1.0.0). Leaving out or removing `version` from your configuration does not remove or clear a version from the option in AWS. AWS may assign a default version. Not including `version` in your configuration means that the AWS provider will ignore a previously set value, a value set by AWS, and any version changes.
  final String? version;

  /// List of VPC Security Groups for which the option is enabled.
  final List<String>? vpcSecurityGroupMemberships;

  /// Creates a new [OptionGroupOption].
  /// [dbSecurityGroupMemberships] List of DB Security Groups for which the option is enabled.
  /// [optionName] Name of the option (e.g., MEMCACHED).
  /// [optionSettings] The option settings to apply. See `option_settings` Block below for more details.
  /// [port] Port number when connecting to the option (e.g., 11211). Leaving out or removing `port` from your configuration does not remove or clear a port from the option in AWS. AWS may assign a default port. Not including `port` in your configuration means that the AWS provider will ignore a previously set value, a value set by AWS, and any port changes.
  /// [version] Version of the option (e.g., 13.1.0.0). Leaving out or removing `version` from your configuration does not remove or clear a version from the option in AWS. AWS may assign a default version. Not including `version` in your configuration means that the AWS provider will ignore a previously set value, a value set by AWS, and any version changes.
  /// [vpcSecurityGroupMemberships] List of VPC Security Groups for which the option is enabled.
  OptionGroupOption({
    this.dbSecurityGroupMemberships,
    required this.optionName,
    this.optionSettings,
    this.port,
    this.version,
    this.vpcSecurityGroupMemberships,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbSecurityGroupMemberships': ?dbSecurityGroupMemberships,
      'optionName': optionName,
      'optionSettings': ?optionSettings == null
          ? null
          : pulumi.Input.encodeList<
              OptionGroupOptionOptionSetting,
              Map<String, dynamic>
            >(optionSettings!, (value) => value.toMap()),
      'port': ?port,
      'version': ?version,
      'vpcSecurityGroupMemberships': ?vpcSecurityGroupMemberships,
    };
  }

  factory OptionGroupOption.fromMap(Map<String, dynamic> map) {
    return OptionGroupOption(
      dbSecurityGroupMemberships: map['dbSecurityGroupMemberships'] == null
          ? null
          : (map['dbSecurityGroupMemberships'] as List).cast<String>(),
      optionName: map['optionName'] as String,
      optionSettings: map['optionSettings'] == null
          ? null
          : pulumi.Input.decodeList<OptionGroupOptionOptionSetting>(
              map['optionSettings'],
              (value) => OptionGroupOptionOptionSetting.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      port: map['port'] == null ? null : map['port'] as int,
      version: map['version'] == null ? null : map['version'] as String,
      vpcSecurityGroupMemberships: map['vpcSecurityGroupMemberships'] == null
          ? null
          : (map['vpcSecurityGroupMemberships'] as List).cast<String>(),
    );
  }
}
