// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace {
  /// The API tokens used by Dynatrace API to authenticate various API calls.
  final pulumi.Input<String> apiToken;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace].
  /// [apiToken] The API tokens used by Dynatrace API to authenticate various API calls.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace({
    required this.apiToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiToken': apiToken};
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace(
      apiToken: pulumi.Input.fromValue(map['apiToken'] as String),
    );
  }
}
