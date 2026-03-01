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
  GetCloudConnectorArgs({
    required pulumi.Output<String> connectorName,
    pulumi.Output<String>? expand,
  }) :
      connectorName = pulumi.Input.asInput<String>(connectorName),
      expand = pulumi.Input.asOptionalInput<String>(expand);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': connectorName,
      'expand': ?expand,
    };
  }

  factory GetCloudConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudConnectorArgs(
      connectorName: pulumi.Output.create<String>(map['connectorName'] as String),
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
    );
  }
}

