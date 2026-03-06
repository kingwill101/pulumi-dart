// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_storage_virtual_machine_endpoint_iscsi.dart';
import 'ontap_storage_virtual_machine_endpoint_management.dart';
import 'ontap_storage_virtual_machine_endpoint_nf.dart';
import 'ontap_storage_virtual_machine_endpoint_smb.dart';

class OntapStorageVirtualMachineEndpoint {
  /// An endpoint for accessing data on your storage virtual machine via iSCSI protocol. See Endpoint.
  final pulumi.Input<List<OntapStorageVirtualMachineEndpointIscsi>>? iscsis;
  /// An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint.
  final pulumi.Input<List<OntapStorageVirtualMachineEndpointManagement>>? managements;
  /// An endpoint for accessing data on your storage virtual machine via NFS protocol. See Endpoint.
  final pulumi.Input<List<OntapStorageVirtualMachineEndpointNf>>? nfs;
  /// An endpoint for accessing data on your storage virtual machine via SMB protocol. This is only set if an active_directory_configuration has been set. See Endpoint.
  final pulumi.Input<List<OntapStorageVirtualMachineEndpointSmb>>? smbs;

  /// Creates a new [OntapStorageVirtualMachineEndpoint].
  /// [iscsis] An endpoint for accessing data on your storage virtual machine via iSCSI protocol. See Endpoint.
  /// [managements] An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint.
  /// [nfs] An endpoint for accessing data on your storage virtual machine via NFS protocol. See Endpoint.
  /// [smbs] An endpoint for accessing data on your storage virtual machine via SMB protocol. This is only set if an active_directory_configuration has been set. See Endpoint.
  const OntapStorageVirtualMachineEndpoint({
    this.iscsis,
    this.managements,
    this.nfs,
    this.smbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iscsis': ?pulumi.Input.mapOptionalInputValue<List<OntapStorageVirtualMachineEndpointIscsi>, List<Map<String, dynamic>>>(iscsis, (value) => pulumi.Input.encodeList<OntapStorageVirtualMachineEndpointIscsi, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managements': ?pulumi.Input.mapOptionalInputValue<List<OntapStorageVirtualMachineEndpointManagement>, List<Map<String, dynamic>>>(managements, (value) => pulumi.Input.encodeList<OntapStorageVirtualMachineEndpointManagement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nfs': ?pulumi.Input.mapOptionalInputValue<List<OntapStorageVirtualMachineEndpointNf>, List<Map<String, dynamic>>>(nfs, (value) => pulumi.Input.encodeList<OntapStorageVirtualMachineEndpointNf, Map<String, dynamic>>(value, (value) => value.toMap())),
      'smbs': ?pulumi.Input.mapOptionalInputValue<List<OntapStorageVirtualMachineEndpointSmb>, List<Map<String, dynamic>>>(smbs, (value) => pulumi.Input.encodeList<OntapStorageVirtualMachineEndpointSmb, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OntapStorageVirtualMachineEndpoint.fromMap(Map<String, dynamic> map) {
    return OntapStorageVirtualMachineEndpoint(
      iscsis: (() { final guardedValue = map['iscsis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OntapStorageVirtualMachineEndpointIscsi>(guardedValue, (value) => OntapStorageVirtualMachineEndpointIscsi.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managements: (() { final guardedValue = map['managements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OntapStorageVirtualMachineEndpointManagement>(guardedValue, (value) => OntapStorageVirtualMachineEndpointManagement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nfs: (() { final guardedValue = map['nfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OntapStorageVirtualMachineEndpointNf>(guardedValue, (value) => OntapStorageVirtualMachineEndpointNf.fromMap((value as Map).cast<String, dynamic>()))); })(),
      smbs: (() { final guardedValue = map['smbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OntapStorageVirtualMachineEndpointSmb>(guardedValue, (value) => OntapStorageVirtualMachineEndpointSmb.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

