// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_storage_virtual_machine_endpoint_iscsi.dart';
import 'ontap_storage_virtual_machine_endpoint_management.dart';
import 'ontap_storage_virtual_machine_endpoint_nf.dart';
import 'ontap_storage_virtual_machine_endpoint_smb.dart';

class OntapStorageVirtualMachineEndpoint {
  /// An endpoint for accessing data on your storage virtual machine via iSCSI protocol. See Endpoint.
  final List<OntapStorageVirtualMachineEndpointIscsi>? iscsis;
  /// An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint.
  final List<OntapStorageVirtualMachineEndpointManagement>? managements;
  /// An endpoint for accessing data on your storage virtual machine via NFS protocol. See Endpoint.
  final List<OntapStorageVirtualMachineEndpointNf>? nfs;
  /// An endpoint for accessing data on your storage virtual machine via SMB protocol. This is only set if an active_directory_configuration has been set. See Endpoint.
  final List<OntapStorageVirtualMachineEndpointSmb>? smbs;

  /// Creates a new [OntapStorageVirtualMachineEndpoint].
  /// [iscsis] An endpoint for accessing data on your storage virtual machine via iSCSI protocol. See Endpoint.
  /// [managements] An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint.
  /// [nfs] An endpoint for accessing data on your storage virtual machine via NFS protocol. See Endpoint.
  /// [smbs] An endpoint for accessing data on your storage virtual machine via SMB protocol. This is only set if an active_directory_configuration has been set. See Endpoint.
  OntapStorageVirtualMachineEndpoint({
    this.iscsis,
    this.managements,
    this.nfs,
    this.smbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iscsis': ?iscsis == null ? null : pulumi.Input.encodeList<OntapStorageVirtualMachineEndpointIscsi, Map<String, dynamic>>(iscsis!, (value) => value.toMap()),
      'managements': ?managements == null ? null : pulumi.Input.encodeList<OntapStorageVirtualMachineEndpointManagement, Map<String, dynamic>>(managements!, (value) => value.toMap()),
      'nfs': ?nfs == null ? null : pulumi.Input.encodeList<OntapStorageVirtualMachineEndpointNf, Map<String, dynamic>>(nfs!, (value) => value.toMap()),
      'smbs': ?smbs == null ? null : pulumi.Input.encodeList<OntapStorageVirtualMachineEndpointSmb, Map<String, dynamic>>(smbs!, (value) => value.toMap()),
    };
  }

  factory OntapStorageVirtualMachineEndpoint.fromMap(Map<String, dynamic> map) {
    return OntapStorageVirtualMachineEndpoint(
      iscsis: map['iscsis'] == null ? null : pulumi.Input.decodeList<OntapStorageVirtualMachineEndpointIscsi>(map['iscsis'], (value) => OntapStorageVirtualMachineEndpointIscsi.fromMap((value as Map).cast<String, dynamic>())),
      managements: map['managements'] == null ? null : pulumi.Input.decodeList<OntapStorageVirtualMachineEndpointManagement>(map['managements'], (value) => OntapStorageVirtualMachineEndpointManagement.fromMap((value as Map).cast<String, dynamic>())),
      nfs: map['nfs'] == null ? null : pulumi.Input.decodeList<OntapStorageVirtualMachineEndpointNf>(map['nfs'], (value) => OntapStorageVirtualMachineEndpointNf.fromMap((value as Map).cast<String, dynamic>())),
      smbs: map['smbs'] == null ? null : pulumi.Input.decodeList<OntapStorageVirtualMachineEndpointSmb>(map['smbs'], (value) => OntapStorageVirtualMachineEndpointSmb.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

