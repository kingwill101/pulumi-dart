// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_ontap_storage_virtual_machine_endpoint_iscsi/get_ontap_storage_virtual_machine_endpoint_iscsi.dart';
import '../get_ontap_storage_virtual_machine_endpoint_management/get_ontap_storage_virtual_machine_endpoint_management.dart';
import '../get_ontap_storage_virtual_machine_endpoint_nf/get_ontap_storage_virtual_machine_endpoint_nf.dart';
import '../get_ontap_storage_virtual_machine_endpoint_smb/get_ontap_storage_virtual_machine_endpoint_smb.dart';

class GetOntapStorageVirtualMachineEndpoint {
  final List<GetOntapStorageVirtualMachineEndpointIscsi> iscsis;

  /// An endpoint for managing SVMs using the NetApp ONTAP CLI, NetApp ONTAP API, or NetApp CloudManager. See SVM Endpoint below.
  final List<GetOntapStorageVirtualMachineEndpointManagement> managements;

  /// An endpoint for connecting using the Network File System (NFS) protocol. See SVM Endpoint below.
  final List<GetOntapStorageVirtualMachineEndpointNf> nfs;

  /// An endpoint for connecting using the Server Message Block (SMB) protocol. See SVM Endpoint below.
  final List<GetOntapStorageVirtualMachineEndpointSmb> smbs;

  GetOntapStorageVirtualMachineEndpoint({
    required this.iscsis,
    required this.managements,
    required this.nfs,
    required this.smbs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iscsis'] = Input.encodeList<GetOntapStorageVirtualMachineEndpointIscsi,
        Map<String, dynamic>>(iscsis, (value) => value.toMap());
    map['managements'] = Input.encodeList<
        GetOntapStorageVirtualMachineEndpointManagement,
        Map<String, dynamic>>(managements, (value) => value.toMap());
    map['nfs'] = Input.encodeList<GetOntapStorageVirtualMachineEndpointNf,
        Map<String, dynamic>>(nfs, (value) => value.toMap());
    map['smbs'] = Input.encodeList<GetOntapStorageVirtualMachineEndpointSmb,
        Map<String, dynamic>>(smbs, (value) => value.toMap());
    return map;
  }

  factory GetOntapStorageVirtualMachineEndpoint.fromMap(
      Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachineEndpoint(
      iscsis: Input.decodeList<GetOntapStorageVirtualMachineEndpointIscsi>(
          map['iscsis'],
          (value) => GetOntapStorageVirtualMachineEndpointIscsi.fromMap(
              (value as Map).cast<String, dynamic>())),
      managements:
          Input.decodeList<GetOntapStorageVirtualMachineEndpointManagement>(
              map['managements'],
              (value) =>
                  GetOntapStorageVirtualMachineEndpointManagement.fromMap(
                      (value as Map).cast<String, dynamic>())),
      nfs: Input.decodeList<GetOntapStorageVirtualMachineEndpointNf>(
          map['nfs'],
          (value) => GetOntapStorageVirtualMachineEndpointNf.fromMap(
              (value as Map).cast<String, dynamic>())),
      smbs: Input.decodeList<GetOntapStorageVirtualMachineEndpointSmb>(
          map['smbs'],
          (value) => GetOntapStorageVirtualMachineEndpointSmb.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
