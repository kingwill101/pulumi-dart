// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_configuration_rule_abort_incomplete_multipart_upload_s3_control.dart';
import 'bucket_lifecycle_configuration_rule_expiration_s3_control.dart';
import 'bucket_lifecycle_configuration_rule_filter_s3_control.dart';

class BucketLifecycleConfigurationRuleS3Control {
  /// Configuration block containing settings for abort incomplete multipart upload.
  final pulumi.Input<BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3Control>? abortIncompleteMultipartUpload;
  /// Configuration block containing settings for expiration of objects.
  final pulumi.Input<BucketLifecycleConfigurationRuleExpirationS3Control>? expiration;
  /// Configuration block containing settings for filtering.
  final pulumi.Input<BucketLifecycleConfigurationRuleFilterS3Control>? filter;
  /// Unique identifier for the rule.
  final pulumi.Input<String> id;
  /// Status of the rule. Valid values: `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? status;

  /// Creates a new [BucketLifecycleConfigurationRuleS3Control].
  /// [abortIncompleteMultipartUpload] Configuration block containing settings for abort incomplete multipart upload.
  /// [expiration] Configuration block containing settings for expiration of objects.
  /// [filter] Configuration block containing settings for filtering.
  /// [id] Unique identifier for the rule.
  /// [status] Status of the rule. Valid values: `Enabled` and `Disabled`. Defaults to `Enabled`.
  const BucketLifecycleConfigurationRuleS3Control({
    this.abortIncompleteMultipartUpload,
    this.expiration,
    this.filter,
    required this.id,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abortIncompleteMultipartUpload': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3Control, Map<String, dynamic>>(abortIncompleteMultipartUpload, (value) => value.toMap()),
      'expiration': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleConfigurationRuleExpirationS3Control, Map<String, dynamic>>(expiration, (value) => value.toMap()),
      'filter': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleConfigurationRuleFilterS3Control, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': id,
      'status': ?status,
    };
  }

  factory BucketLifecycleConfigurationRuleS3Control.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleS3Control(
      abortIncompleteMultipartUpload: (() { final guardedValue = map['abortIncompleteMultipartUpload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3Control.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleConfigurationRuleExpirationS3Control.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleConfigurationRuleFilterS3Control.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

