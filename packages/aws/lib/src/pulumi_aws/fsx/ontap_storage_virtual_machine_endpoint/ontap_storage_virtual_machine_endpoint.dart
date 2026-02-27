// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ontap_storage_virtual_machine_endpoint_iscsi/ontap_storage_virtual_machine_endpoint_iscsi.dart';
import '../ontap_storage_virtual_machine_endpoint_management/ontap_storage_virtual_machine_endpoint_management.dart';
import '../ontap_storage_virtual_machine_endpoint_nf/ontap_storage_virtual_machine_endpoint_nf.dart';
import '../ontap_storage_virtual_machine_endpoint_smb/ontap_storage_virtual_machine_endpoint_smb.dart';

class OntapStorageVirtualMachineEndpoint {
  /// An endpoint for accessing data on your storage virtual machine via iSCSI protocol. See Endpoint.
  final List<OntapStorageVirtualMachineEndpointIscsi>? iscsis;

  /// An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint.
  final List<OntapStorageVirtualMachineEndpointManagement>? managements;

  /// An endpoint for accessing data on your storage virtual machine via NFS protocol. See Endpoint.
  final List<OntapStorageVirtualMachineEndpointNf>? nfs;

  /// An endpoint for accessing data on your storage virtual machine via SMB protocol. This is only set if an active_directory_configuration has been set. See Endpoint.
  final List<OntapStorageVirtualMachineEndpointSmb>? smbs;

  OntapStorageVirtualMachineEndpoint({
    this.iscsis,
    this.managements,
    this.nfs,
    this.smbs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final iscsisValue = iscsis;
    if (iscsisValue != null) {
      map['iscsis'] = Input.encodeList<OntapStorageVirtualMachineEndpointIscsi,
          Map<String, dynamic>>(iscsisValue, (value) => value.toMap());
    }
    final managementsValue = managements;
    if (managementsValue != null) {
      map['managements'] = Input.encodeList<
          OntapStorageVirtualMachineEndpointManagement,
          Map<String, dynamic>>(managementsValue, (value) => value.toMap());
    }
    final nfsValue = nfs;
    if (nfsValue != null) {
      map['nfs'] = Input.encodeList<OntapStorageVirtualMachineEndpointNf,
          Map<String, dynamic>>(nfsValue, (value) => value.toMap());
    }
    final smbsValue = smbs;
    if (smbsValue != null) {
      map['smbs'] = Input.encodeList<OntapStorageVirtualMachineEndpointSmb,
          Map<String, dynamic>>(smbsValue, (value) => value.toMap());
    }
    return map;
  }

  factory OntapStorageVirtualMachineEndpoint.fromMap(Map<String, dynamic> map) {
    return OntapStorageVirtualMachineEndpoint(
      iscsis: map['iscsis'] == null
          ? null
          : Input.decodeList<OntapStorageVirtualMachineEndpointIscsi>(
              map['iscsis'],
              (value) => OntapStorageVirtualMachineEndpointIscsi.fromMap(
                  (value as Map).cast<String, dynamic>())),
      managements: map['managements'] == null
          ? null
          : Input.decodeList<OntapStorageVirtualMachineEndpointManagement>(
              map['managements'],
              (value) => OntapStorageVirtualMachineEndpointManagement.fromMap(
                  (value as Map).cast<String, dynamic>())),
      nfs: map['nfs'] == null
          ? null
          : Input.decodeList<OntapStorageVirtualMachineEndpointNf>(
              map['nfs'],
              (value) => OntapStorageVirtualMachineEndpointNf.fromMap(
                  (value as Map).cast<String, dynamic>())),
      smbs: map['smbs'] == null
          ? null
          : Input.decodeList<OntapStorageVirtualMachineEndpointSmb>(
              map['smbs'],
              (value) => OntapStorageVirtualMachineEndpointSmb.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
