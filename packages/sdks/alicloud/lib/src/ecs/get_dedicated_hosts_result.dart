// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_hosts_host.dart';
import 'get_dedicated_hosts_operation_lock.dart';

/// Result data returned by getDedicatedHosts.
class GetDedicatedHostsResult {
  /// ID of the ECS Dedicated Host.
  final String? dedicatedHostId;
  /// The name of the dedicated host.
  final String? dedicatedHostName;
  /// The type of the dedicated host.
  final String? dedicatedHostType;
  /// A list of ECS Dedicated Hosts. Each element contains the following attributes:
  final List<GetDedicatedHostsHost> hosts;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of ECS Dedicated Host names.
  final List<String> names;
  /// (Available since v1.123.1) The operation_locks. contains the following attribute:
  final List<GetDedicatedHostsOperationLock>? operationLocks;
  final String? outputFile;
  /// The ID of the resource group to which the dedicated host belongs.
  final String? resourceGroupId;
  /// The service status of the dedicated host.
  final String? status;
  /// The tags of the dedicated host.
  final Map<String, String>? tags;
  /// The zone id of the dedicated host.
  final String? zoneId;

  /// Creates a new [GetDedicatedHostsResult].
  /// [dedicatedHostId] ID of the ECS Dedicated Host.
  /// [dedicatedHostName] The name of the dedicated host.
  /// [dedicatedHostType] The type of the dedicated host.
  /// [hosts] A list of ECS Dedicated Hosts. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of ECS Dedicated Host names.
  /// [operationLocks] (Available since v1.123.1) The operation_locks. contains the following attribute:
  /// [outputFile] Optional.
  /// [resourceGroupId] The ID of the resource group to which the dedicated host belongs.
  /// [status] The service status of the dedicated host.
  /// [tags] The tags of the dedicated host.
  /// [zoneId] The zone id of the dedicated host.
  GetDedicatedHostsResult({
    this.dedicatedHostId,
    this.dedicatedHostName,
    this.dedicatedHostType,
    required this.hosts,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.operationLocks,
    this.outputFile,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostId': ?dedicatedHostId,
      'dedicatedHostName': ?dedicatedHostName,
      'dedicatedHostType': ?dedicatedHostType,
      'hosts': pulumi.Input.encodeList<GetDedicatedHostsHost, Map<String, dynamic>>(hosts, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'operationLocks': ?(() { final guardedValue = operationLocks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedHostsOperationLock, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory GetDedicatedHostsResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostsResult(
      dedicatedHostId: (() { final guardedValue = map['dedicatedHostId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dedicatedHostName: (() { final guardedValue = map['dedicatedHostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dedicatedHostType: (() { final guardedValue = map['dedicatedHostType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hosts: pulumi.Input.decodeList<GetDedicatedHostsHost>(map['hosts']!, (value) => GetDedicatedHostsHost.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      operationLocks: (() { final guardedValue = map['operationLocks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedHostsOperationLock>(guardedValue, (value) => GetDedicatedHostsOperationLock.fromMap((value as Map).cast<String, dynamic>())); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

