// ignore_for_file: unused_element, unnecessary_cast


class GetConfigsConfig {
  /// Abnormal Alarm General Configuration Module by Using the Encoding.Valid values: `access_failed_cnt`, `access_permission_exprie_max_days`, `log_datasize_avg_days`.
  final String code;
  /// Configure the Number.
  final String configId;
  /// Default Value.
  final String defaultValue;
  /// Abnormal Alarm General Description of the Configuration Item.
  final String description;
  /// The ID of the Config.
  final String id;
  /// The Specified Exception Alarm Generic by Using the Value. Code Different Values for This Parameter the Specific Meaning of Different.
  final String value;

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
      code: map['code'] as String,
      configId: map['configId'] as String,
      defaultValue: map['defaultValue'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      value: map['value'] as String,
    );
  }
}

