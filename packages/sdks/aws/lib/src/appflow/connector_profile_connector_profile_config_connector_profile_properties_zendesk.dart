// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk {
  final pulumi.Input<String> instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk].
  /// [instanceUrl] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instanceUrl': instanceUrl};
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk(
      instanceUrl: pulumi.Input.fromValue(map['instanceUrl'] as String),
    );
  }
}
