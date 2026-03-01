// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_service_setting_service_setting_args_doc}
/// The set of arguments for ServiceSetting.
/// {@endtemplate}
/// {@macro pulumi_oos_service_setting_service_setting_args_doc}
class ServiceSettingArgs {
  /// The name of the OSS bucket. **NOTE:** When the `delivery_oss_enabled` is `true`, The `delivery_oss_bucket_name` is valid.
  final pulumi.Input<String>? deliveryOssBucketName;
  /// Is the recording function for the OSS delivery template enabled.
  final pulumi.Input<bool>? deliveryOssEnabled;
  /// The Directory of the OSS bucket. **NOTE:** When the `delivery_oss_enabled` is `true`, The `delivery_oss_bucket_name` is valid.
  final pulumi.Input<String>? deliveryOssKeyPrefix;
  /// Is the execution record function to SLS delivery Template turned on.
  final pulumi.Input<bool>? deliverySlsEnabled;
  /// The name of SLS  Project. **NOTE:** When the `delivery_sls_enabled` is `true`, The `delivery_sls_project_name` is valid.
  final pulumi.Input<String>? deliverySlsProjectName;

  /// Creates a new [ServiceSettingArgs].
  /// [deliveryOssBucketName] The name of the OSS bucket. **NOTE:** When the `delivery_oss_enabled` is `true`, The `delivery_oss_bucket_name` is valid.
  /// [deliveryOssEnabled] Is the recording function for the OSS delivery template enabled.
  /// [deliveryOssKeyPrefix] The Directory of the OSS bucket. **NOTE:** When the `delivery_oss_enabled` is `true`, The `delivery_oss_bucket_name` is valid.
  /// [deliverySlsEnabled] Is the execution record function to SLS delivery Template turned on.
  /// [deliverySlsProjectName] The name of SLS  Project. **NOTE:** When the `delivery_sls_enabled` is `true`, The `delivery_sls_project_name` is valid.
  ServiceSettingArgs({
    String? deliveryOssBucketName,
    bool? deliveryOssEnabled,
    String? deliveryOssKeyPrefix,
    bool? deliverySlsEnabled,
    String? deliverySlsProjectName,
  }) :
      deliveryOssBucketName = pulumi.Input.asOptionalInput<String>(deliveryOssBucketName),
      deliveryOssEnabled = pulumi.Input.asOptionalInput<bool>(deliveryOssEnabled),
      deliveryOssKeyPrefix = pulumi.Input.asOptionalInput<String>(deliveryOssKeyPrefix),
      deliverySlsEnabled = pulumi.Input.asOptionalInput<bool>(deliverySlsEnabled),
      deliverySlsProjectName = pulumi.Input.asOptionalInput<String>(deliverySlsProjectName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryOssBucketName': ?deliveryOssBucketName,
      'deliveryOssEnabled': ?deliveryOssEnabled,
      'deliveryOssKeyPrefix': ?deliveryOssKeyPrefix,
      'deliverySlsEnabled': ?deliverySlsEnabled,
      'deliverySlsProjectName': ?deliverySlsProjectName,
    };
  }

  factory ServiceSettingArgs.fromMap(Map<String, dynamic> map) {
    return ServiceSettingArgs(
      deliveryOssBucketName: map['deliveryOssBucketName'] == null ? null : map['deliveryOssBucketName'] as String,
      deliveryOssEnabled: map['deliveryOssEnabled'] == null ? null : map['deliveryOssEnabled'] as bool,
      deliveryOssKeyPrefix: map['deliveryOssKeyPrefix'] == null ? null : map['deliveryOssKeyPrefix'] as String,
      deliverySlsEnabled: map['deliverySlsEnabled'] == null ? null : map['deliverySlsEnabled'] as bool,
      deliverySlsProjectName: map['deliverySlsProjectName'] == null ? null : map['deliverySlsProjectName'] as String,
    );
  }
}

