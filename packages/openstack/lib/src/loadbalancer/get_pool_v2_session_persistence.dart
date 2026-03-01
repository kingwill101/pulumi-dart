// ignore_for_file: unused_element, unnecessary_cast


class GetPoolV2SessionPersistence {
  final String cookieName;
  final String type;

  /// Creates a new [GetPoolV2SessionPersistence].
  /// [cookieName] Required.
  /// [type] Required.
  GetPoolV2SessionPersistence({
    required this.cookieName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieName': cookieName,
      'type': type,
    };
  }

  factory GetPoolV2SessionPersistence.fromMap(Map<String, dynamic> map) {
    return GetPoolV2SessionPersistence(
      cookieName: map['cookieName'] as String,
      type: map['type'] as String,
    );
  }
}

