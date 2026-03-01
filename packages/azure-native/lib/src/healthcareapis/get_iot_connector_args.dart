// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcareapis_get_iot_connector_args_doc}
/// Arguments for getIotConnector.
/// {@endtemplate}
/// {@macro pulumi_healthcareapis_get_iot_connector_args_doc}
class GetIotConnectorArgs {
  /// The name of IoT Connector resource.
  final pulumi.Input<String> iotConnectorName;
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of workspace resource.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetIotConnectorArgs].
  /// [iotConnectorName] The name of IoT Connector resource.
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [workspaceName] The name of workspace resource.
  GetIotConnectorArgs({
    required String iotConnectorName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      iotConnectorName = pulumi.Input.asInput<String>(iotConnectorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iotConnectorName': iotConnectorName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIotConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetIotConnectorArgs(
      iotConnectorName: map['iotConnectorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

