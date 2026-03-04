// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketV2Versioning {
  /// Enable versioning. Once you version-enable a bucket, it can never return to an unversioned state. You can, however, suspend versioning on that bucket.
  final pulumi.Input<bool>? enabled;

  /// Enable MFA delete for either `Change the versioning state of your bucket` or `Permanently delete an object version`. Default is `false`. This cannot be used to toggle this setting but is available to allow managed buckets to reflect the state in AWS
  final pulumi.Input<bool>? mfaDelete;

  /// Creates a new [BucketV2Versioning].
  /// [enabled] Enable versioning. Once you version-enable a bucket, it can never return to an unversioned state. You can, however, suspend versioning on that bucket.
  /// [mfaDelete] Enable MFA delete for either `Change the versioning state of your bucket` or `Permanently delete an object version`. Default is `false`. This cannot be used to toggle this setting but is available to allow managed buckets to reflect the state in AWS
  BucketV2Versioning({this.enabled, this.mfaDelete});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled, 'mfaDelete': ?mfaDelete};
  }

  factory BucketV2Versioning.fromMap(Map<String, dynamic> map) {
    return BucketV2Versioning(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      mfaDelete: (() {
        final guardedValue = map['mfaDelete'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
