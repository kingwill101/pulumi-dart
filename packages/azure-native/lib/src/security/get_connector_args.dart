// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_connector_args_doc}
/// Arguments for getConnector.
/// {@endtemplate}
/// {@macro pulumi_security_get_connector_args_doc}
class GetConnectorArgs {
  /// Name of the cloud account connector
  final pulumi.Input<String> connectorName;

  /// Creates a new [GetConnectorArgs].
  /// [connectorName] Name of the cloud account connector
  GetConnectorArgs({
    required String connectorName,
  }) :
      connectorName = pulumi.Input.asInput<String>(connectorName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': connectorName,
    };
  }

  factory GetConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorArgs(
      connectorName: map['connectorName'] as String,
    );
  }
}

