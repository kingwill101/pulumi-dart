// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog {
  final pulumi.Input<String> apiKey;
  /// Application keys, in conjunction with your API key, give you full access to Datadog’s programmatic API. Application keys are associated with the user account that created them. The application key is used to log all requests made to the API.
  final pulumi.Input<String> applicationKey;

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

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
      applicationKey: pulumi.Input.fromValue(map['applicationKey'] as String),
    );
  }
}

