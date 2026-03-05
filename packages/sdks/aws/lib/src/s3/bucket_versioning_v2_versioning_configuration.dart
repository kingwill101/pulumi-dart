// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketVersioningV2VersioningConfiguration {
  /// Specifies whether MFA delete is enabled in the bucket versioning configuration. Valid values: `Enabled` or `Disabled`.
  final pulumi.Input<String>? mfaDelete;
  /// Versioning state of the bucket. Valid values: `Enabled`, `Suspended`, or `Disabled`. `Disabled` should only be used when creating or importing resources that correspond to unversioned S3 buckets.
  final pulumi.Input<String> status;

  /// Creates a new [BucketVersioningV2VersioningConfiguration].
  /// [mfaDelete] Specifies whether MFA delete is enabled in the bucket versioning configuration. Valid values: `Enabled` or `Disabled`.
  /// [status] Versioning state of the bucket. Valid values: `Enabled`, `Suspended`, or `Disabled`. `Disabled` should only be used when creating or importing resources that correspond to unversioned S3 buckets.
  BucketVersioningV2VersioningConfiguration({
    this.mfaDelete,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mfaDelete': ?mfaDelete,
      'status': status,
    };
  }

  factory BucketVersioningV2VersioningConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketVersioningV2VersioningConfiguration(
      mfaDelete: (() { final guardedValue = map['mfaDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

