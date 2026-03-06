// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_cloud_connector_args_doc}
/// Arguments for getCloudConnector.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_cloud_connector_args_doc}
class GetCloudConnectorArgs {
  /// Connector Name.
  final pulumi.Input<String> connectorName;
  /// May be used to expand the collectionInfo property. By default, collectionInfo is not included.
  final pulumi.Input<String>? expand;

  /// Creates a new [GetCloudConnectorArgs].
  /// [connectorName] Connector Name.
  /// [expand] May be used to expand the collectionInfo property. By default, collectionInfo is not included.
  const GetCloudConnectorArgs({
    required this.connectorName,
    this.expand,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': connectorName,
      'expand': ?expand,
    };
  }

  factory GetCloudConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudConnectorArgs(
      connectorName: pulumi.Input.fromValue(map['connectorName'] as String),
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

