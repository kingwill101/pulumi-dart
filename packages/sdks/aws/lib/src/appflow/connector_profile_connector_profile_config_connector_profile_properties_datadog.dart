// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog {
  /// Location of the Zendesk resource.
  final pulumi.Input<String> instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog].
  /// [instanceUrl] Location of the Zendesk resource.
  const ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceUrl': instanceUrl,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog(
      instanceUrl: pulumi.Input.fromValue(map['instanceUrl'] as String),
    );
  }
}
