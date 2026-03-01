// ignore_for_file: unused_element, unnecessary_cast


/// Generates version number based on version number of source image
class DistributeVersionerSourceResponse {
  /// Version numbering scheme to be used.
  /// Expected value is 'Source'.
  final String scheme;

  /// Creates a new [DistributeVersionerSourceResponse].
  /// [scheme] Version numbering scheme to be used.
  DistributeVersionerSourceResponse({
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheme': scheme,
    };
  }

  factory DistributeVersionerSourceResponse.fromMap(Map<String, dynamic> map) {
    return DistributeVersionerSourceResponse(
      scheme: map['scheme'] as String,
    );
  }
}

