// ignore_for_file: unused_element, unnecessary_cast


class BucketVersioningVersioningConfiguration {
  /// Specifies whether MFA delete is enabled in the bucket versioning configuration. Valid values: `Enabled` or `Disabled`.
  final String? mfaDelete;
  /// Versioning state of the bucket. Valid values: `Enabled`, `Suspended`, or `Disabled`. `Disabled` should only be used when creating or importing resources that correspond to unversioned S3 buckets.
  final String status;

  /// Creates a new [BucketVersioningVersioningConfiguration].
  /// [mfaDelete] Specifies whether MFA delete is enabled in the bucket versioning configuration. Valid values: `Enabled` or `Disabled`.
  /// [status] Versioning state of the bucket. Valid values: `Enabled`, `Suspended`, or `Disabled`. `Disabled` should only be used when creating or importing resources that correspond to unversioned S3 buckets.
  BucketVersioningVersioningConfiguration({
    this.mfaDelete,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mfaDelete': ?mfaDelete,
      'status': status,
    };
  }

  factory BucketVersioningVersioningConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketVersioningVersioningConfiguration(
      mfaDelete: map['mfaDelete'] == null ? null : map['mfaDelete'] as String,
      status: map['status'] as String,
    );
  }
}

