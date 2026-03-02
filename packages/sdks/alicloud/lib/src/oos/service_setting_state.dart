// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceSetting resources.
class ServiceSettingState {
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

  /// Creates a new [ServiceSettingState].
  /// [deliveryOssBucketName] The name of the OSS bucket. **NOTE:** When the `delivery_oss_enabled` is `true`, The `delivery_oss_bucket_name` is valid.
  /// [deliveryOssEnabled] Is the recording function for the OSS delivery template enabled.
  /// [deliveryOssKeyPrefix] The Directory of the OSS bucket. **NOTE:** When the `delivery_oss_enabled` is `true`, The `delivery_oss_bucket_name` is valid.
  /// [deliverySlsEnabled] Is the execution record function to SLS delivery Template turned on.
  /// [deliverySlsProjectName] The name of SLS  Project. **NOTE:** When the `delivery_sls_enabled` is `true`, The `delivery_sls_project_name` is valid.
  ServiceSettingState({
    this.deliveryOssBucketName,
    this.deliveryOssEnabled,
    this.deliveryOssKeyPrefix,
    this.deliverySlsEnabled,
    this.deliverySlsProjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryOssBucketName': ?deliveryOssBucketName,
      'deliveryOssEnabled': ?deliveryOssEnabled,
      'deliveryOssKeyPrefix': ?deliveryOssKeyPrefix,
      'deliverySlsEnabled': ?deliverySlsEnabled,
      'deliverySlsProjectName': ?deliverySlsProjectName,
    };
  }

  factory ServiceSettingState.fromMap(Map<String, dynamic> map) {
    return ServiceSettingState(
      deliveryOssBucketName: map['deliveryOssBucketName'] == null ? null : (map['deliveryOssBucketName'] as String).input(),
      deliveryOssEnabled: map['deliveryOssEnabled'] == null ? null : (map['deliveryOssEnabled'] as bool).input(),
      deliveryOssKeyPrefix: map['deliveryOssKeyPrefix'] == null ? null : (map['deliveryOssKeyPrefix'] as String).input(),
      deliverySlsEnabled: map['deliverySlsEnabled'] == null ? null : (map['deliverySlsEnabled'] as bool).input(),
      deliverySlsProjectName: map['deliverySlsProjectName'] == null ? null : (map['deliverySlsProjectName'] as String).input(),
    );
  }
}

