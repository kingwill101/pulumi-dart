// ignore_for_file: unused_element, unnecessary_cast


/// The IP addresses of callers that are allowed to use the key.
class V2ServerKeyRestrictions {
  /// A list of the caller IP addresses that are allowed to make API calls with this key.
  final List<String>? allowedIps;

  /// Creates a new [V2ServerKeyRestrictions].
  /// [allowedIps] A list of the caller IP addresses that are allowed to make API calls with this key.
  V2ServerKeyRestrictions({
    this.allowedIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIps': ?allowedIps,
    };
  }

  factory V2ServerKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return V2ServerKeyRestrictions(
      allowedIps: map['allowedIps'] == null ? null : (map['allowedIps'] as List).cast<String>(),
    );
  }
}

