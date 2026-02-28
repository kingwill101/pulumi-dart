// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ontap_storage_virtual_machine_endpoint_iscsi.dart';
import 'get_ontap_storage_virtual_machine_endpoint_management.dart';
import 'get_ontap_storage_virtual_machine_endpoint_nf.dart';
import 'get_ontap_storage_virtual_machine_endpoint_smb.dart';

class GetOntapStorageVirtualMachineEndpoint {
  final List<GetOntapStorageVirtualMachineEndpointIscsi> iscsis;
  /// An endpoint for managing SVMs using the NetApp ONTAP CLI, NetApp ONTAP API, or NetApp CloudManager. See SVM Endpoint below.
  final List<GetOntapStorageVirtualMachineEndpointManagement> managements;
  /// An endpoint for connecting using the Network File System (NFS) protocol. See SVM Endpoint below.
  final List<GetOntapStorageVirtualMachineEndpointNf> nfs;
  /// An endpoint for connecting using the Server Message Block (SMB) protocol. See SVM Endpoint below.
  final List<GetOntapStorageVirtualMachineEndpointSmb> smbs;

  /// Creates a new [GetOntapStorageVirtualMachineEndpoint].
  /// [iscsis] Required.
  /// [managements] An endpoint for managing SVMs using the NetApp ONTAP CLI, NetApp ONTAP API, or NetApp CloudManager. See SVM Endpoint below.
  /// [nfs] An endpoint for connecting using the Network File System (NFS) protocol. See SVM Endpoint below.
  /// [smbs] An endpoint for connecting using the Server Message Block (SMB) protocol. See SVM Endpoint below.
  GetOntapStorageVirtualMachineEndpoint({
    required this.iscsis,
    required this.managements,
    required this.nfs,
    required this.smbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iscsis': pulumi.Input.encodeList<GetOntapStorageVirtualMachineEndpointIscsi, Map<String, dynamic>>(iscsis, (value) => value.toMap()),
      'managements': pulumi.Input.encodeList<GetOntapStorageVirtualMachineEndpointManagement, Map<String, dynamic>>(managements, (value) => value.toMap()),
      'nfs': pulumi.Input.encodeList<GetOntapStorageVirtualMachineEndpointNf, Map<String, dynamic>>(nfs, (value) => value.toMap()),
      'smbs': pulumi.Input.encodeList<GetOntapStorageVirtualMachineEndpointSmb, Map<String, dynamic>>(smbs, (value) => value.toMap()),
    };
  }

  factory GetOntapStorageVirtualMachineEndpoint.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachineEndpoint(
      iscsis: pulumi.Input.decodeList<GetOntapStorageVirtualMachineEndpointIscsi>(map['iscsis'], (value) => GetOntapStorageVirtualMachineEndpointIscsi.fromMap((value as Map).cast<String, dynamic>())),
      managements: pulumi.Input.decodeList<GetOntapStorageVirtualMachineEndpointManagement>(map['managements'], (value) => GetOntapStorageVirtualMachineEndpointManagement.fromMap((value as Map).cast<String, dynamic>())),
      nfs: pulumi.Input.decodeList<GetOntapStorageVirtualMachineEndpointNf>(map['nfs'], (value) => GetOntapStorageVirtualMachineEndpointNf.fromMap((value as Map).cast<String, dynamic>())),
      smbs: pulumi.Input.decodeList<GetOntapStorageVirtualMachineEndpointSmb>(map['smbs'], (value) => GetOntapStorageVirtualMachineEndpointSmb.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

