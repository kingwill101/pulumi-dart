// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ontap_file_system_endpoint_intercluster.dart';
import 'get_ontap_file_system_endpoint_management.dart';

class GetOntapFileSystemEndpoint {
  /// A FileSystemEndpoint for managing your file system by setting up NetApp SnapMirror with other ONTAP systems. See FileSystemEndpoint below.
  final pulumi.Input<List<GetOntapFileSystemEndpointIntercluster>> interclusters;
  /// A FileSystemEndpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See FileSystemEndpoint below.
  final pulumi.Input<List<GetOntapFileSystemEndpointManagement>> managements;

  /// Creates a new [GetOntapFileSystemEndpoint].
  /// [interclusters] A FileSystemEndpoint for managing your file system by setting up NetApp SnapMirror with other ONTAP systems. See FileSystemEndpoint below.
  /// [managements] A FileSystemEndpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See FileSystemEndpoint below.
  GetOntapFileSystemEndpoint({
    required this.interclusters,
    required this.managements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interclusters': pulumi.Input.mapInputValue<List<GetOntapFileSystemEndpointIntercluster>, List<Map<String, dynamic>>>(interclusters, (value) => pulumi.Input.encodeList<GetOntapFileSystemEndpointIntercluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managements': pulumi.Input.mapInputValue<List<GetOntapFileSystemEndpointManagement>, List<Map<String, dynamic>>>(managements, (value) => pulumi.Input.encodeList<GetOntapFileSystemEndpointManagement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetOntapFileSystemEndpoint.fromMap(Map<String, dynamic> map) {
    return GetOntapFileSystemEndpoint(
      interclusters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetOntapFileSystemEndpointIntercluster>(map['interclusters']!, (value) => GetOntapFileSystemEndpointIntercluster.fromMap((value as Map).cast<String, dynamic>()))),
      managements: pulumi.Input.fromValue(pulumi.Input.decodeList<GetOntapFileSystemEndpointManagement>(map['managements']!, (value) => GetOntapFileSystemEndpointManagement.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

