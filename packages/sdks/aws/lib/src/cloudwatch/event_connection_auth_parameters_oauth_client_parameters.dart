// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventConnectionAuthParametersOauthClientParameters {
  /// The client ID for the credentials to use for authorization. Created and stored in AWS Secrets Manager.
  final pulumi.Input<String> clientId;
  /// The client secret for the credentials to use for authorization. Created and stored in AWS Secrets Manager.
  final pulumi.Input<String> clientSecret;

  /// Creates a new [EventConnectionAuthParametersOauthClientParameters].
  /// [clientId] The client ID for the credentials to use for authorization. Created and stored in AWS Secrets Manager.
  /// [clientSecret] The client secret for the credentials to use for authorization. Created and stored in AWS Secrets Manager.
  const EventConnectionAuthParametersOauthClientParameters({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
    };
  }

  factory EventConnectionAuthParametersOauthClientParameters.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParametersOauthClientParameters(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
    );
  }
}
