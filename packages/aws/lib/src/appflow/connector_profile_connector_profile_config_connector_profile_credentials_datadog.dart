// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog {
  final String apiKey;

  /// Application keys, in conjunction with your API key, give you full access to Datadog’s programmatic API. Application keys are associated with the user account that created them. The application key is used to log all requests made to the API.
  final String applicationKey;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog].
  /// [apiKey] Required.
  /// [applicationKey] Application keys, in conjunction with your API key, give you full access to Datadog’s programmatic API. Application keys are associated with the user account that created them. The application key is used to log all requests made to the API.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog({
    required this.apiKey,
    required this.applicationKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'applicationKey': applicationKey,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog(
      apiKey: map['apiKey'] as String,
      applicationKey: map['applicationKey'] as String,
    );
  }
}
