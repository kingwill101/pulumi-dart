// ignore_for_file: unused_element, unnecessary_cast

class EventConnectionAuthParametersOauthClientParameters {
  /// The client ID for the credentials to use for authorization. Created and stored in AWS Secrets Manager.
  final String clientId;

  /// The client secret for the credentials to use for authorization. Created and stored in AWS Secrets Manager.
  final String clientSecret;

  /// Creates a new [EventConnectionAuthParametersOauthClientParameters].
  /// [clientId] The client ID for the credentials to use for authorization. Created and stored in AWS Secrets Manager.
  /// [clientSecret] The client secret for the credentials to use for authorization. Created and stored in AWS Secrets Manager.
  EventConnectionAuthParametersOauthClientParameters({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
    };
  }

  factory EventConnectionAuthParametersOauthClientParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventConnectionAuthParametersOauthClientParameters(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
    );
  }
}
