// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcareapis_get_iot_connector_fhir_destination_args_doc}
/// Arguments for getIotConnectorFhirDestination.
/// {@endtemplate}
/// {@macro pulumi_healthcareapis_get_iot_connector_fhir_destination_args_doc}
class GetIotConnectorFhirDestinationArgs {
  /// The name of IoT Connector FHIR destination resource.
  final pulumi.Input<String> fhirDestinationName;
  /// The name of IoT Connector resource.
  final pulumi.Input<String> iotConnectorName;
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of workspace resource.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetIotConnectorFhirDestinationArgs].
  /// [fhirDestinationName] The name of IoT Connector FHIR destination resource.
  /// [iotConnectorName] The name of IoT Connector resource.
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [workspaceName] The name of workspace resource.
  const GetIotConnectorFhirDestinationArgs({
    required this.fhirDestinationName,
    required this.iotConnectorName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fhirDestinationName': fhirDestinationName,
      'iotConnectorName': iotConnectorName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIotConnectorFhirDestinationArgs.fromMap(Map<String, dynamic> map) {
    return GetIotConnectorFhirDestinationArgs(
      fhirDestinationName: pulumi.Input.fromValue(map['fhirDestinationName'] as String),
      iotConnectorName: pulumi.Input.fromValue(map['iotConnectorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
