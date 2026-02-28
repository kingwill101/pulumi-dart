// ignore_for_file: unused_element, unnecessary_cast


/// Contains metadata about the user who performed an action, such as creating a release or finalizing a version.
class ActingUserResponse {
  /// The email address of the user when the user performed the action.
  final String email;
  /// A profile image URL for the user. May not be present if the user has changed their email address or deleted their account.
  final String imageUrl;

  /// Creates a new [ActingUserResponse].
  /// [email] The email address of the user when the user performed the action.
  /// [imageUrl] A profile image URL for the user. May not be present if the user has changed their email address or deleted their account.
  ActingUserResponse({
    required this.email,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'imageUrl': imageUrl,
    };
  }

  factory ActingUserResponse.fromMap(Map<String, dynamic> map) {
    return ActingUserResponse(
      email: map['email'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }
}

