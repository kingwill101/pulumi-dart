// ignore_for_file: unused_element, unnecessary_cast


/// APIServerProfile represents an API server profile.
class APIServerProfile {
  /// API server visibility.
  final String? visibility;

  /// Creates a new [APIServerProfile].
  /// [visibility] API server visibility.
  APIServerProfile({
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'visibility': ?visibility,
    };
  }

  factory APIServerProfile.fromMap(Map<String, dynamic> map) {
    return APIServerProfile(
      visibility: map['visibility'] == null ? null : map['visibility'] as String,
    );
  }
}

