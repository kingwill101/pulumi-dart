// ignore_for_file: unused_element, unnecessary_cast


/// Link an existing Confluent organization
class LinkOrganization {
  /// User auth token
  final String token;

  /// Creates a new [LinkOrganization].
  /// [token] User auth token
  LinkOrganization({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory LinkOrganization.fromMap(Map<String, dynamic> map) {
    return LinkOrganization(
      token: map['token'] as String,
    );
  }
}

