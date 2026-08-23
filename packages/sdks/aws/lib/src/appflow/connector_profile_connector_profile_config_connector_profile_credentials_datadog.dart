// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog {
  /// Unique alphanumeric identifier used to authenticate a user, developer, or calling program to your API.
  final pulumi.Input<String> apiKey;
  /// Application key, used in conjunction with your API key, that gives you full access to Datadog's programmatic API. Application keys are associated with the user account that created them and are used to log all requests made to the API.
  final pulumi.Input<String> applicationKey;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog].
  /// [apiKey] Unique alphanumeric identifier used to authenticate a user, developer, or calling program to your API.
  /// [applicationKey] Application key, used in conjunction with your API key, that gives you full access to Datadog's programmatic API. Application keys are associated with the user account that created them and are used to log all requests made to the API.
  const ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog({
    required this.apiKey,
    required this.applicationKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'applicationKey': applicationKey,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
      applicationKey: pulumi.Input.fromValue(map['applicationKey'] as String),
    );
  }
}
