// ignore_for_file: unused_element, unnecessary_cast


/// User information that made some action
class WatchlistUserInfoResponse {
  /// The email of the user.
  final String email;
  /// The name of the user.
  final String name;
  /// The object id of the user.
  final String? objectId;

  /// Creates a new [WatchlistUserInfoResponse].
  /// [email] The email of the user.
  /// [name] The name of the user.
  /// [objectId] The object id of the user.
  WatchlistUserInfoResponse({
    required this.email,
    required this.name,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'objectId': ?objectId,
    };
  }

  factory WatchlistUserInfoResponse.fromMap(Map<String, dynamic> map) {
    return WatchlistUserInfoResponse(
      email: map['email'] as String,
      name: map['name'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
    );
  }
}

