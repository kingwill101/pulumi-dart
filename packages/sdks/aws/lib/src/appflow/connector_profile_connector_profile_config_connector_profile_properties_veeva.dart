// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva {
  /// Location of the Zendesk resource.
  final pulumi.Input<String> instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva].
  /// [instanceUrl] Location of the Zendesk resource.
  const ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceUrl': instanceUrl,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva(
      instanceUrl: pulumi.Input.fromValue(map['instanceUrl'] as String),
    );
  }
}
