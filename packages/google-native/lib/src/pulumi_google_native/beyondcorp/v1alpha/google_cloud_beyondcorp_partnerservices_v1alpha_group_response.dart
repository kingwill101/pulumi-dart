// ignore_for_file: unused_element, unnecessary_cast

/// Message to capture group information
class GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse {
  /// The group email id
  final String email;

  GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse(
      email: map['email'] as String,
    );
  }
}
