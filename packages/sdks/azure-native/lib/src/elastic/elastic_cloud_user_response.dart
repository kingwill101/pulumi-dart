// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the user's elastic account.
class ElasticCloudUserResponse {
  /// Elastic cloud default dashboard sso URL of the Elastic user account.
  final pulumi.Input<String> elasticCloudSsoDefaultUrl;
  /// Email of the Elastic User Account.
  final pulumi.Input<String> emailAddress;
  /// User Id of the elastic account of the User.
  final pulumi.Input<String> id;

  /// Creates a new [ElasticCloudUserResponse].
  /// [elasticCloudSsoDefaultUrl] Elastic cloud default dashboard sso URL of the Elastic user account.
  /// [emailAddress] Email of the Elastic User Account.
  /// [id] User Id of the elastic account of the User.
  const ElasticCloudUserResponse({
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
      elasticCloudSsoDefaultUrl: pulumi.Input.fromValue(map['elasticCloudSsoDefaultUrl'] as String),
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
