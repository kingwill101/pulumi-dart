// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activation_properties_response.dart';
import 'garbage_collection_properties_response.dart';
import 'logging_properties_response.dart';
import 'login_server_properties_response.dart';
import 'parent_properties_response.dart';
import 'status_detail_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConnectedRegistry.
class GetConnectedRegistryResult {
  /// The activation properties of the connected registry.
  final ActivationPropertiesResponse activation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The list of the ACR token resource IDs used to authenticate clients to the connected registry.
  final List<String>? clientTokenIds;
  /// The current connection state of the connected registry.
  final String connectionState;
  /// The garbage collection properties of the connected registry.
  final GarbageCollectionPropertiesResponse? garbageCollection;
  /// The resource ID.
  final String id;
  /// The last activity time of the connected registry.
  final String lastActivityTime;
  /// The logging properties of the connected registry.
  final LoggingPropertiesResponse? logging;
  /// The login server properties of the connected registry.
  final LoginServerPropertiesResponse? loginServer;
  /// The mode of the connected registry resource that indicates the permissions of the registry.
  final String mode;
  /// The name of the resource.
  final String name;
  /// The list of notifications subscription information for the connected registry.
  final List<String>? notificationsList;
  /// The parent of the connected registry.
  final ParentPropertiesResponse parent;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// The list of current statuses of the connected registry.
  final List<StatusDetailPropertiesResponse> statusDetails;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;
  /// The current version of ACR runtime on the connected registry.
  final String version;

  /// Creates a new [GetConnectedRegistryResult].
  /// [activation] The activation properties of the connected registry.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientTokenIds] The list of the ACR token resource IDs used to authenticate clients to the connected registry.
  /// [connectionState] The current connection state of the connected registry.
  /// [garbageCollection] The garbage collection properties of the connected registry.
  /// [id] The resource ID.
  /// [lastActivityTime] The last activity time of the connected registry.
  /// [logging] The logging properties of the connected registry.
  /// [loginServer] The login server properties of the connected registry.
  /// [mode] The mode of the connected registry resource that indicates the permissions of the registry.
  /// [name] The name of the resource.
  /// [notificationsList] The list of notifications subscription information for the connected registry.
  /// [parent] The parent of the connected registry.
  /// [provisioningState] Provisioning state of the resource.
  /// [statusDetails] The list of current statuses of the connected registry.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  /// [version] The current version of ACR runtime on the connected registry.
  const GetConnectedRegistryResult({
    required this.activation,
    required this.azureApiVersion,
    this.clientTokenIds,
    required this.connectionState,
    this.garbageCollection,
    required this.id,
    required this.lastActivityTime,
    this.logging,
    this.loginServer,
    required this.mode,
    required this.name,
    this.notificationsList,
    required this.parent,
    required this.provisioningState,
    required this.statusDetails,
    required this.systemData,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activation': activation.toMap(),
      'azureApiVersion': azureApiVersion,
      'clientTokenIds': ?clientTokenIds,
      'connectionState': connectionState,
      'garbageCollection': ?garbageCollection?.toMap(),
      'id': id,
      'lastActivityTime': lastActivityTime,
      'logging': ?logging?.toMap(),
      'loginServer': ?loginServer?.toMap(),
      'mode': mode,
      'name': name,
      'notificationsList': ?notificationsList,
      'parent': parent.toMap(),
      'provisioningState': provisioningState,
      'statusDetails': pulumi.Input.encodeList<StatusDetailPropertiesResponse, Map<String, dynamic>>(statusDetails, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'type': type,
      'version': version,
    };
  }

  factory GetConnectedRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetConnectedRegistryResult(
      activation: ActivationPropertiesResponse.fromMap((map['activation']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      clientTokenIds: (() { final guardedValue = map['clientTokenIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      connectionState: map['connectionState'] as String,
      garbageCollection: (() { final guardedValue = map['garbageCollection']; if (guardedValue == null) return null; return GarbageCollectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      lastActivityTime: map['lastActivityTime'] as String,
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return LoggingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      loginServer: (() { final guardedValue = map['loginServer']; if (guardedValue == null) return null; return LoginServerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      mode: map['mode'] as String,
      name: map['name'] as String,
      notificationsList: (() { final guardedValue = map['notificationsList']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      parent: ParentPropertiesResponse.fromMap((map['parent']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      statusDetails: pulumi.Input.decodeList<StatusDetailPropertiesResponse>(map['statusDetails']!, (value) => StatusDetailPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

