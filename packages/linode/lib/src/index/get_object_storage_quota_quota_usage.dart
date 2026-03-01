// ignore_for_file: unused_element, unnecessary_cast


class GetObjectStorageQuotaQuotaUsage {
  /// The maximum quantity allowed by the quota.
  final int quotaLimit;
  /// The quantity of the Object Storage resource currently in use.
  final int usage;

  /// Creates a new [GetObjectStorageQuotaQuotaUsage].
  /// [quotaLimit] The maximum quantity allowed by the quota.
  /// [usage] The quantity of the Object Storage resource currently in use.
  GetObjectStorageQuotaQuotaUsage({
    required this.quotaLimit,
    required this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quotaLimit': quotaLimit,
      'usage': usage,
    };
  }

  factory GetObjectStorageQuotaQuotaUsage.fromMap(Map<String, dynamic> map) {
    return GetObjectStorageQuotaQuotaUsage(
      quotaLimit: map['quotaLimit'] as int,
      usage: map['usage'] as int,
    );
  }
}

