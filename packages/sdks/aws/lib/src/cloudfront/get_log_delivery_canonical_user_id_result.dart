// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLogDeliveryCanonicalUserId.
class GetLogDeliveryCanonicalUserIdResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? region;

  /// Creates a new [GetLogDeliveryCanonicalUserIdResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  GetLogDeliveryCanonicalUserIdResult({
    required this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': ?region,
    };
  }

  factory GetLogDeliveryCanonicalUserIdResult.fromMap(Map<String, dynamic> map) {
    return GetLogDeliveryCanonicalUserIdResult(
      id: map['id'] as String,
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

