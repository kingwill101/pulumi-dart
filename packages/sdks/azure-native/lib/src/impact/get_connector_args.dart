// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_impact_get_connector_args_doc}
/// Arguments for getConnector.
/// {@endtemplate}
/// {@macro pulumi_impact_get_connector_args_doc}
class GetConnectorArgs {
  /// The name of the connector
  final pulumi.Input<String> connectorName;

  /// Creates a new [GetConnectorArgs].
  /// [connectorName] The name of the connector
  GetConnectorArgs({
    required this.connectorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': connectorName,
    };
  }

  factory GetConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorArgs(
      connectorName: (map['connectorName'] as String).input(),
    );
  }
}

