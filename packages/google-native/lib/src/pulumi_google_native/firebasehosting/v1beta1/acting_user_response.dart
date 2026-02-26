// ignore_for_file: unused_element, unnecessary_cast

/// Contains metadata about the user who performed an action, such as creating a release or finalizing a version.
class ActingUserResponse {
  /// The email address of the user when the user performed the action.
  final String email;

  /// A profile image URL for the user. May not be present if the user has changed their email address or deleted their account.
  final String imageUrl;

  ActingUserResponse({
    required this.email,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['imageUrl'] = imageUrl;
    return map;
  }

  factory ActingUserResponse.fromMap(Map<String, dynamic> map) {
    return ActingUserResponse(
      email: map['email'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }
}
