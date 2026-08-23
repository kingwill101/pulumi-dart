// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk {
  /// Location of the Zendesk resource.
  final pulumi.Input<String> instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk].
  /// [instanceUrl] Location of the Zendesk resource.
  const ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceUrl': instanceUrl,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk(
      instanceUrl: pulumi.Input.fromValue(map['instanceUrl'] as String),
    );
  }
}
