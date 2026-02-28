// ignore_for_file: unused_element, unnecessary_cast


/// Message to capture group information
class GoogleCloudBeyondcorpPartnerservicesV1alphaGroup {
  /// The group email id
  final String? email;
  /// Google group id
  final String? id;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaGroup].
  /// [email] The group email id
  /// [id] Google group id
  GoogleCloudBeyondcorpPartnerservicesV1alphaGroup({
    this.email,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'id': ?id,
    };
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaGroup.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaGroup(
      email: map['email'] == null ? null : map['email'] as String,
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

