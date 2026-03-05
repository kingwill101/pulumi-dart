// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_file_system_endpoint_intercluster.dart';
import 'ontap_file_system_endpoint_management.dart';

class OntapFileSystemEndpoint {
  /// An endpoint for managing your file system by setting up NetApp SnapMirror with other ONTAP systems. See Endpoint.
  final pulumi.Input<List<OntapFileSystemEndpointIntercluster>>? interclusters;
  /// An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint.
  final pulumi.Input<List<OntapFileSystemEndpointManagement>>? managements;

  /// Creates a new [OntapFileSystemEndpoint].
  /// [interclusters] An endpoint for managing your file system by setting up NetApp SnapMirror with other ONTAP systems. See Endpoint.
  /// [managements] An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint.
  OntapFileSystemEndpoint({
    this.interclusters,
    this.managements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interclusters': ?pulumi.Input.mapOptionalInputValue<List<OntapFileSystemEndpointIntercluster>, List<Map<String, dynamic>>>(interclusters, (value) => pulumi.Input.encodeList<OntapFileSystemEndpointIntercluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managements': ?pulumi.Input.mapOptionalInputValue<List<OntapFileSystemEndpointManagement>, List<Map<String, dynamic>>>(managements, (value) => pulumi.Input.encodeList<OntapFileSystemEndpointManagement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OntapFileSystemEndpoint.fromMap(Map<String, dynamic> map) {
    return OntapFileSystemEndpoint(
      interclusters: (() { final guardedValue = map['interclusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OntapFileSystemEndpointIntercluster>(guardedValue, (value) => OntapFileSystemEndpointIntercluster.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managements: (() { final guardedValue = map['managements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OntapFileSystemEndpointManagement>(guardedValue, (value) => OntapFileSystemEndpointManagement.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

