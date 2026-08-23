// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack {
  /// Location of the Zendesk resource.
  final pulumi.Input<String> instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack].
  /// [instanceUrl] Location of the Zendesk resource.
  const ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceUrl': instanceUrl,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack(
      instanceUrl: pulumi.Input.fromValue(map['instanceUrl'] as String),
    );
  }
}
