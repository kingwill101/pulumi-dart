// ignore_for_file: unused_element, unnecessary_cast

/// The bucket's billing configuration.
class BucketBilling {
  /// When set to true, Requester Pays is enabled for this bucket.
  final bool? requesterPays;

  BucketBilling({
    this.requesterPays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requesterPaysValue = requesterPays;
    if (requesterPaysValue != null) {
      map['requesterPays'] = requesterPaysValue;
    }
    return map;
  }

  factory BucketBilling.fromMap(Map<String, dynamic> map) {
    return BucketBilling(
      requesterPays:
          map['requesterPays'] == null ? null : map['requesterPays'] as bool,
    );
  }
}
