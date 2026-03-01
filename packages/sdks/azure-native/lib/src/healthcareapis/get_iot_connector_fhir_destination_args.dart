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
  GetIotConnectorFhirDestinationArgs({
    required pulumi.Output<String> fhirDestinationName,
    required pulumi.Output<String> iotConnectorName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      fhirDestinationName = pulumi.Input.asInput<String>(fhirDestinationName),
      iotConnectorName = pulumi.Input.asInput<String>(iotConnectorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      fhirDestinationName: pulumi.Output.create<String>(map['fhirDestinationName'] as String),
      iotConnectorName: pulumi.Output.create<String>(map['iotConnectorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

