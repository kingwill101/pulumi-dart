// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLogDeliveryCanonicalUserId.
class GetLogDeliveryCanonicalUserIdResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? region;

  GetLogDeliveryCanonicalUserIdResult({
    required this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetLogDeliveryCanonicalUserIdResult.fromMap(
      Map<String, dynamic> map) {
    return GetLogDeliveryCanonicalUserIdResult(
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
