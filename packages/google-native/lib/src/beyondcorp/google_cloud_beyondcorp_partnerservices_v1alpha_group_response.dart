// ignore_for_file: unused_element, unnecessary_cast

/// Message to capture group information
class GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse {
  /// The group email id
  final String email;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse].
  /// [email] The group email id
  GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': email};
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse(
      email: map['email'] as String,
    );
  }
}
