// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sddp_config_config_args_doc}
/// The set of arguments for Config.
/// {@endtemplate}
/// {@macro pulumi_sddp_config_config_args_doc}
class ConfigArgs {
  /// Abnormal Alarm General Configuration Module by Using the Encoding. Valid values: `access_failed_cnt`, `access_permission_exprie_max_days`, `log_datasize_avg_days`.
  final pulumi.Input<String>? code;
  /// Abnormal Alarm General Description of the Configuration Item.
  final pulumi.Input<String>? description;
  /// The language of the request and response. Valid values: `zh`,`en`.
  final pulumi.Input<String>? lang;
  /// The Specified Exception Alarm Generic by Using the Value. Code Different Values for This Parameter the Specific Meaning of Different:
  final pulumi.Input<String>? value;

  /// Creates a new [ConfigArgs].
  /// [code] Abnormal Alarm General Configuration Module by Using the Encoding. Valid values: `access_failed_cnt`, `access_permission_exprie_max_days`, `log_datasize_avg_days`.
  /// [description] Abnormal Alarm General Description of the Configuration Item.
  /// [lang] The language of the request and response. Valid values: `zh`,`en`.
  /// [value] The Specified Exception Alarm Generic by Using the Value. Code Different Values for This Parameter the Specific Meaning of Different:
  ConfigArgs({
    this.code,
    this.description,
    this.lang,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'description': ?description,
      'lang': ?lang,
      'value': ?value,
    };
  }

  factory ConfigArgs.fromMap(Map<String, dynamic> map) {
    return ConfigArgs(
      code: map['code'] == null ? null : (map['code'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      lang: map['lang'] == null ? null : (map['lang'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

