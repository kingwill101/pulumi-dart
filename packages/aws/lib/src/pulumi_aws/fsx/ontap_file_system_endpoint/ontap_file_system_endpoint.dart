// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ontap_file_system_endpoint_intercluster/ontap_file_system_endpoint_intercluster.dart';
import '../ontap_file_system_endpoint_management/ontap_file_system_endpoint_management.dart';

class OntapFileSystemEndpoint {
  /// An endpoint for managing your file system by setting up NetApp SnapMirror with other ONTAP systems. See Endpoint.
  final List<OntapFileSystemEndpointIntercluster>? interclusters;

  /// An endpoint for managing your file system using the NetApp ONTAP CLI and NetApp ONTAP API. See Endpoint.
  final List<OntapFileSystemEndpointManagement>? managements;

  OntapFileSystemEndpoint({
    this.interclusters,
    this.managements,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final interclustersValue = interclusters;
    if (interclustersValue != null) {
      map['interclusters'] = pulumi.Input.encodeList<
          OntapFileSystemEndpointIntercluster,
          Map<String, dynamic>>(interclustersValue, (value) => value.toMap());
    }
    final managementsValue = managements;
    if (managementsValue != null) {
      map['managements'] = pulumi.Input.encodeList<
          OntapFileSystemEndpointManagement,
          Map<String, dynamic>>(managementsValue, (value) => value.toMap());
    }
    return map;
  }

  factory OntapFileSystemEndpoint.fromMap(Map<String, dynamic> map) {
    return OntapFileSystemEndpoint(
      interclusters: map['interclusters'] == null
          ? null
          : pulumi.Input.decodeList<OntapFileSystemEndpointIntercluster>(
              map['interclusters'],
              (value) => OntapFileSystemEndpointIntercluster.fromMap(
                  (value as Map).cast<String, dynamic>())),
      managements: map['managements'] == null
          ? null
          : pulumi.Input.decodeList<OntapFileSystemEndpointManagement>(
              map['managements'],
              (value) => OntapFileSystemEndpointManagement.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
