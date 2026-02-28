// ignore_for_file: unused_element, unnecessary_cast


/// Entry metadata relevant only to the user and private to them.
class GoogleCloudDatacatalogV1PersonalDetailsResponse {
  /// Set if the entry is starred; unset otherwise.
  final String starTime;
  /// True if the entry is starred by the user; false otherwise.
  final bool starred;

  /// Creates a new [GoogleCloudDatacatalogV1PersonalDetailsResponse].
  /// [starTime] Set if the entry is starred; unset otherwise.
  /// [starred] True if the entry is starred by the user; false otherwise.
  GoogleCloudDatacatalogV1PersonalDetailsResponse({
    required this.starTime,
    required this.starred,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'starTime': starTime,
      'starred': starred,
    };
  }

  factory GoogleCloudDatacatalogV1PersonalDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1PersonalDetailsResponse(
      starTime: map['starTime'] as String,
      starred: map['starred'] as bool,
    );
  }
}

