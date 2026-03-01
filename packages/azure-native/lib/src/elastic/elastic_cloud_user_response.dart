// ignore_for_file: unused_element, unnecessary_cast


/// Details of the user's elastic account.
class ElasticCloudUserResponse {
  /// Elastic cloud default dashboard sso URL of the Elastic user account.
  final String elasticCloudSsoDefaultUrl;
  /// Email of the Elastic User Account.
  final String emailAddress;
  /// User Id of the elastic account of the User.
  final String id;

  /// Creates a new [ElasticCloudUserResponse].
  /// [elasticCloudSsoDefaultUrl] Elastic cloud default dashboard sso URL of the Elastic user account.
  /// [emailAddress] Email of the Elastic User Account.
  /// [id] User Id of the elastic account of the User.
  ElasticCloudUserResponse({
    required this.elasticCloudSsoDefaultUrl,
    required this.emailAddress,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticCloudSsoDefaultUrl': elasticCloudSsoDefaultUrl,
      'emailAddress': emailAddress,
      'id': id,
    };
  }

  factory ElasticCloudUserResponse.fromMap(Map<String, dynamic> map) {
    return ElasticCloudUserResponse(
      elasticCloudSsoDefaultUrl: map['elasticCloudSsoDefaultUrl'] as String,
      emailAddress: map['emailAddress'] as String,
      id: map['id'] as String,
    );
  }
}

