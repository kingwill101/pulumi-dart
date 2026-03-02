// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketIntelligentTieringConfigurationTiering {
  /// S3 Intelligent-Tiering access tier. Valid values: `ARCHIVE_ACCESS`, `DEEP_ARCHIVE_ACCESS`.
  final pulumi.Input<String> accessTier;
  /// Number of consecutive days of no access after which an object will be eligible to be transitioned to the corresponding tier.
  final pulumi.Input<int> days;

  /// Creates a new [BucketIntelligentTieringConfigurationTiering].
  /// [accessTier] S3 Intelligent-Tiering access tier. Valid values: `ARCHIVE_ACCESS`, `DEEP_ARCHIVE_ACCESS`.
  /// [days] Number of consecutive days of no access after which an object will be eligible to be transitioned to the corresponding tier.
  BucketIntelligentTieringConfigurationTiering({
    required this.accessTier,
    required this.days,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': accessTier,
      'days': days,
    };
  }

  factory BucketIntelligentTieringConfigurationTiering.fromMap(Map<String, dynamic> map) {
    return BucketIntelligentTieringConfigurationTiering(
      accessTier: (map['accessTier'] as String).input(),
      days: (map['days'] as int).input(),
    );
  }
}

