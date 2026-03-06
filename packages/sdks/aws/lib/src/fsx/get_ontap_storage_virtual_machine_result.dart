// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ontap_storage_virtual_machine_active_directory_configuration.dart';
import 'get_ontap_storage_virtual_machine_endpoint.dart';
import 'get_ontap_storage_virtual_machine_filter.dart';
import 'get_ontap_storage_virtual_machine_lifecycle_transition_reason.dart';

/// Result data returned by getOntapStorageVirtualMachine.
class GetOntapStorageVirtualMachineResult {
  /// The Microsoft Active Directory configuration to which the SVM is joined, if applicable. See Active Directory Configuration below.
  final List<GetOntapStorageVirtualMachineActiveDirectoryConfiguration> activeDirectoryConfigurations;
  /// Amazon Resource Name of the SVM.
  final String arn;
  /// The time that the SVM was created.
  final String creationTime;
  /// The endpoints that are used to access data or to manage the SVM using the NetApp ONTAP CLI, REST API, or NetApp CloudManager. They are the Iscsi, Management, Nfs, and Smb endpoints. See SVM Endpoints below.
  final List<GetOntapStorageVirtualMachineEndpoint> endpoints;
  /// Identifier of the file system (e.g. `fs-12345678`).
  final String fileSystemId;
  final List<GetOntapStorageVirtualMachineFilter>? filters;
  /// The SVM's system generated unique ID.
  final String id;
  /// The SVM's lifecycle status.
  final String lifecycleStatus;
  /// Describes why the SVM lifecycle state changed. See Lifecycle Transition Reason below.
  final List<GetOntapStorageVirtualMachineLifecycleTransitionReason> lifecycleTransitionReasons;
  /// The name of the SVM, if provisioned.
  final String name;
  final String region;
  /// The SVM's subtype.
  final String subtype;
  final Map<String, String> tags;
  /// The SVM's UUID.
  final String uuid;

  /// Creates a new [GetOntapStorageVirtualMachineResult].
  /// [activeDirectoryConfigurations] The Microsoft Active Directory configuration to which the SVM is joined, if applicable. See Active Directory Configuration below.
  /// [arn] Amazon Resource Name of the SVM.
  /// [creationTime] The time that the SVM was created.
  /// [endpoints] The endpoints that are used to access data or to manage the SVM using the NetApp ONTAP CLI, REST API, or NetApp CloudManager. They are the Iscsi, Management, Nfs, and Smb endpoints. See SVM Endpoints below.
  /// [fileSystemId] Identifier of the file system (e.g. `fs-12345678`).
  /// [filters] Optional.
  /// [id] The SVM's system generated unique ID.
  /// [lifecycleStatus] The SVM's lifecycle status.
  /// [lifecycleTransitionReasons] Describes why the SVM lifecycle state changed. See Lifecycle Transition Reason below.
  /// [name] The name of the SVM, if provisioned.
  /// [region] Required.
  /// [subtype] The SVM's subtype.
  /// [tags] Required.
  /// [uuid] The SVM's UUID.
  const GetOntapStorageVirtualMachineResult({
    required this.activeDirectoryConfigurations,
    required this.arn,
    required this.creationTime,
    required this.endpoints,
    required this.fileSystemId,
    this.filters,
    required this.id,
    required this.lifecycleStatus,
    required this.lifecycleTransitionReasons,
    required this.name,
    required this.region,
    required this.subtype,
    required this.tags,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryConfigurations': pulumi.Input.encodeList<GetOntapStorageVirtualMachineActiveDirectoryConfiguration, Map<String, dynamic>>(activeDirectoryConfigurations, (value) => value.toMap()),
      'arn': arn,
      'creationTime': creationTime,
      'endpoints': pulumi.Input.encodeList<GetOntapStorageVirtualMachineEndpoint, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'fileSystemId': fileSystemId,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOntapStorageVirtualMachineFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'lifecycleStatus': lifecycleStatus,
      'lifecycleTransitionReasons': pulumi.Input.encodeList<GetOntapStorageVirtualMachineLifecycleTransitionReason, Map<String, dynamic>>(lifecycleTransitionReasons, (value) => value.toMap()),
      'name': name,
      'region': region,
      'subtype': subtype,
      'tags': tags,
      'uuid': uuid,
    };
  }

  factory GetOntapStorageVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachineResult(
      activeDirectoryConfigurations: pulumi.Input.decodeList<GetOntapStorageVirtualMachineActiveDirectoryConfiguration>(map['activeDirectoryConfigurations']!, (value) => GetOntapStorageVirtualMachineActiveDirectoryConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      arn: map['arn'] as String,
      creationTime: map['creationTime'] as String,
      endpoints: pulumi.Input.decodeList<GetOntapStorageVirtualMachineEndpoint>(map['endpoints']!, (value) => GetOntapStorageVirtualMachineEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      fileSystemId: map['fileSystemId'] as String,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOntapStorageVirtualMachineFilter>(guardedValue, (value) => GetOntapStorageVirtualMachineFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      lifecycleStatus: map['lifecycleStatus'] as String,
      lifecycleTransitionReasons: pulumi.Input.decodeList<GetOntapStorageVirtualMachineLifecycleTransitionReason>(map['lifecycleTransitionReasons']!, (value) => GetOntapStorageVirtualMachineLifecycleTransitionReason.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      region: map['region'] as String,
      subtype: map['subtype'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      uuid: map['uuid'] as String,
    );
  }
}

