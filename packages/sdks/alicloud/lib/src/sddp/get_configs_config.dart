// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigsConfig {
  /// Abnormal Alarm General Configuration Module by Using the Encoding.Valid values: `access_failed_cnt`, `access_permission_exprie_max_days`, `log_datasize_avg_days`.
  final pulumi.Input<String> code;
  /// Configure the Number.
  final pulumi.Input<String> configId;
  /// Default Value.
  final pulumi.Input<String> defaultValue;
  /// Abnormal Alarm General Description of the Configuration Item.
  final pulumi.Input<String> description;
  /// The ID of the Config.
  final pulumi.Input<String> id;
  /// The Specified Exception Alarm Generic by Using the Value. Code Different Values for This Parameter the Specific Meaning of Different.
  final pulumi.Input<String> value;

  /// Creates a new [GetConfigsConfig].
  /// [code] Abnormal Alarm General Configuration Module by Using the Encoding.Valid values: `access_failed_cnt`, `access_permission_exprie_max_days`, `log_datasize_avg_days`.
  /// [configId] Configure the Number.
  /// [defaultValue] Default Value.
  /// [description] Abnormal Alarm General Description of the Configuration Item.
  /// [id] The ID of the Config.
  /// [value] The Specified Exception Alarm Generic by Using the Value. Code Different Values for This Parameter the Specific Meaning of Different.
  GetConfigsConfig({
    required this.code,
    required this.configId,
    required this.defaultValue,
    required this.description,
    required this.id,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'configId': configId,
      'defaultValue': defaultValue,
      'description': description,
      'id': id,
      'value': value,
    };
  }

  factory GetConfigsConfig.fromMap(Map<String, dynamic> map) {
    return GetConfigsConfig(
      code: pulumi.Input.fromValue(map['code'] as String),
      configId: pulumi.Input.fromValue(map['configId'] as String),
      defaultValue: pulumi.Input.fromValue(map['defaultValue'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

