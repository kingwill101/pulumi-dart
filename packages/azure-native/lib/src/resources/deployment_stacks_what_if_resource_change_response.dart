// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_extension_response.dart';
import 'deployment_stacks_what_if_resource_change_response_deny_status_change.dart';
import 'deployment_stacks_what_if_resource_change_response_management_status_change.dart';
import 'deployment_stacks_what_if_resource_change_response_resource_configuration_changes.dart';

/// Information about a single resource change predicted by What-If operation.
class DeploymentStacksWhatIfResourceChangeResponse {
  /// The API version the resource was deployed with
  final String apiVersion;
  /// The confidence level of the predicted change.
  final String changeCertainty;
  /// Type of change that will be made to the resource when the deployment is executed.
  final String changeType;
  /// The predicted changes to the deployment stack deny status of the resource.
  final DeploymentStacksWhatIfResourceChangeResponseDenyStatusChange? denyStatusChange;
  /// The resource id of the Deployment responsible for this change.
  final String? deploymentId;
  /// The extension the resource was deployed with.
  final DeploymentExtensionResponse extension;
  /// The ARM Resource ID of a resource managed by the deployment stack.
  final String id;
  /// The extensible resource identifiers.
  final dynamic identifiers;
  /// The predicted changes to the deployment stack management status of the resource.
  final DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange? managementStatusChange;
  /// The predicted changes to the resource configuration.
  final DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges? resourceConfigurationChanges;
  /// The symbolic name of the resource being changed.
  final String? symbolicName;
  /// The resource type.
  final String type;
  /// The explanation about why the resource is unsupported by What-If.
  final String? unsupportedReason;

  /// Creates a new [DeploymentStacksWhatIfResourceChangeResponse].
  /// [apiVersion] The API version the resource was deployed with
  /// [changeCertainty] The confidence level of the predicted change.
  /// [changeType] Type of change that will be made to the resource when the deployment is executed.
  /// [denyStatusChange] The predicted changes to the deployment stack deny status of the resource.
  /// [deploymentId] The resource id of the Deployment responsible for this change.
  /// [extension] The extension the resource was deployed with.
  /// [id] The ARM Resource ID of a resource managed by the deployment stack.
  /// [identifiers] The extensible resource identifiers.
  /// [managementStatusChange] The predicted changes to the deployment stack management status of the resource.
  /// [resourceConfigurationChanges] The predicted changes to the resource configuration.
  /// [symbolicName] The symbolic name of the resource being changed.
  /// [type] The resource type.
  /// [unsupportedReason] The explanation about why the resource is unsupported by What-If.
  DeploymentStacksWhatIfResourceChangeResponse({
    required this.apiVersion,
    required this.changeCertainty,
    required this.changeType,
    this.denyStatusChange,
    this.deploymentId,
    required this.extension,
    required this.id,
    required this.identifiers,
    this.managementStatusChange,
    this.resourceConfigurationChanges,
    this.symbolicName,
    required this.type,
    this.unsupportedReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'changeCertainty': changeCertainty,
      'changeType': changeType,
      'denyStatusChange': ?denyStatusChange == null ? null : denyStatusChange!.toMap(),
      'deploymentId': ?deploymentId,
      'extension': extension.toMap(),
      'id': id,
      'identifiers': identifiers,
      'managementStatusChange': ?managementStatusChange == null ? null : managementStatusChange!.toMap(),
      'resourceConfigurationChanges': ?resourceConfigurationChanges == null ? null : resourceConfigurationChanges!.toMap(),
      'symbolicName': ?symbolicName,
      'type': type,
      'unsupportedReason': ?unsupportedReason,
    };
  }

  factory DeploymentStacksWhatIfResourceChangeResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfResourceChangeResponse(
      apiVersion: map['apiVersion'] as String,
      changeCertainty: map['changeCertainty'] as String,
      changeType: map['changeType'] as String,
      denyStatusChange: map['denyStatusChange'] == null ? null : DeploymentStacksWhatIfResourceChangeResponseDenyStatusChange.fromMap((map['denyStatusChange'] as Map).cast<String, dynamic>()),
      deploymentId: map['deploymentId'] == null ? null : map['deploymentId'] as String,
      extension: DeploymentExtensionResponse.fromMap((map['extension'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identifiers: map['identifiers'],
      managementStatusChange: map['managementStatusChange'] == null ? null : DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange.fromMap((map['managementStatusChange'] as Map).cast<String, dynamic>()),
      resourceConfigurationChanges: map['resourceConfigurationChanges'] == null ? null : DeploymentStacksWhatIfResourceChangeResponseResourceConfigurationChanges.fromMap((map['resourceConfigurationChanges'] as Map).cast<String, dynamic>()),
      symbolicName: map['symbolicName'] == null ? null : map['symbolicName'] as String,
      type: map['type'] as String,
      unsupportedReason: map['unsupportedReason'] == null ? null : map['unsupportedReason'] as String,
    );
  }
}

