// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ontap_storage_virtual_machine_active_directory_configuration.dart';
import 'get_ontap_storage_virtual_machine_endpoint.dart';
import 'get_ontap_storage_virtual_machine_filter.dart';
import 'get_ontap_storage_virtual_machine_lifecycle_transition_reason.dart';

/// Result data returned by getOntapStorageVirtualMachine.
class GetOntapStorageVirtualMachineResult {
  /// Microsoft Active Directory configuration to which the SVM is joined, if applicable. See Active Directory Configuration below.
  final List<GetOntapStorageVirtualMachineActiveDirectoryConfiguration>? activeDirectoryConfigurations;
  /// ARN of the SVM.
  final String? arn;
  /// Time that the SVM was created.
  final String? creationTime;
  /// Endpoints that are used to access data or to manage the SVM using the NetApp ONTAP CLI, REST API, or NetApp CloudManager. They are the Iscsi, Management, Nfs, and Smb endpoints. See SVM Endpoints below.
  final List<GetOntapStorageVirtualMachineEndpoint>? endpoints;
  /// Identifier of the file system (e.g. `fs-12345678`).
  final String? fileSystemId;
  final List<GetOntapStorageVirtualMachineFilter>? filters;
  /// SVM's system generated unique ID.
  final String? id;
  /// SVM's lifecycle status.
  final String? lifecycleStatus;
  /// Reason why the SVM lifecycle state changed. See Lifecycle Transition Reason below.
  final List<GetOntapStorageVirtualMachineLifecycleTransitionReason>? lifecycleTransitionReasons;
  /// Name of the SVM, if provisioned.
  final String? name;
  final String? region;
  /// SVM's subtype.
  final String? subtype;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// SVM's UUID.
  final String? uuid;

  /// Creates a new [GetOntapStorageVirtualMachineResult].
  /// [activeDirectoryConfigurations] Microsoft Active Directory configuration to which the SVM is joined, if applicable. See Active Directory Configuration below.
  /// [arn] ARN of the SVM.
  /// [creationTime] Time that the SVM was created.
  /// [endpoints] Endpoints that are used to access data or to manage the SVM using the NetApp ONTAP CLI, REST API, or NetApp CloudManager. They are the Iscsi, Management, Nfs, and Smb endpoints. See SVM Endpoints below.
  /// [fileSystemId] Identifier of the file system (e.g. `fs-12345678`).
  /// [filters] Optional.
  /// [id] SVM's system generated unique ID.
  /// [lifecycleStatus] SVM's lifecycle status.
  /// [lifecycleTransitionReasons] Reason why the SVM lifecycle state changed. See Lifecycle Transition Reason below.
  /// [name] Name of the SVM, if provisioned.
  /// [region] Optional.
  /// [subtype] SVM's subtype.
  /// [tags] Map of tags assigned to the resource.
  /// [uuid] SVM's UUID.
  const GetOntapStorageVirtualMachineResult({
    this.activeDirectoryConfigurations,
    this.arn,
    this.creationTime,
    this.endpoints,
    this.fileSystemId,
    this.filters,
    this.id,
    this.lifecycleStatus,
    this.lifecycleTransitionReasons,
    this.name,
    this.region,
    this.subtype,
    this.tags,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryConfigurations': ?(() { final guardedValue = activeDirectoryConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOntapStorageVirtualMachineActiveDirectoryConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'arn': ?arn,
      'creationTime': ?creationTime,
      'endpoints': ?(() { final guardedValue = endpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOntapStorageVirtualMachineEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fileSystemId': ?fileSystemId,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOntapStorageVirtualMachineFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'lifecycleStatus': ?lifecycleStatus,
      'lifecycleTransitionReasons': ?(() { final guardedValue = lifecycleTransitionReasons; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOntapStorageVirtualMachineLifecycleTransitionReason, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'region': ?region,
      'subtype': ?subtype,
      'tags': ?tags,
      'uuid': ?uuid,
    };
  }

  factory GetOntapStorageVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachineResult(
      activeDirectoryConfigurations: (() { final guardedValue = map['activeDirectoryConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOntapStorageVirtualMachineActiveDirectoryConfiguration>(guardedValue, (value) => GetOntapStorageVirtualMachineActiveDirectoryConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOntapStorageVirtualMachineEndpoint>(guardedValue, (value) => GetOntapStorageVirtualMachineEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOntapStorageVirtualMachineFilter>(guardedValue, (value) => GetOntapStorageVirtualMachineFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lifecycleStatus: (() { final guardedValue = map['lifecycleStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lifecycleTransitionReasons: (() { final guardedValue = map['lifecycleTransitionReasons']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOntapStorageVirtualMachineLifecycleTransitionReason>(guardedValue, (value) => GetOntapStorageVirtualMachineLifecycleTransitionReason.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subtype: (() { final guardedValue = map['subtype']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
