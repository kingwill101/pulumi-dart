// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_datastore_nfs_datastore/get_datastore_nfs_datastore.dart';

/// Result data returned by getDatastore.
class GetDatastoreResult {
  final List<String> clusters;
  final String createTime;
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final List<GetDatastoreNfsDatastore> nfsDatastores;
  final String? project;
  final String state;
  final String uid;
  final String updateTime;

  GetDatastoreResult({
    required this.clusters,
    required this.createTime,
    required this.description,
    required this.id,
    required this.location,
    required this.name,
    required this.nfsDatastores,
    this.project,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusters'] = clusters;
    map['createTime'] = createTime;
    map['description'] = description;
    map['id'] = id;
    map['location'] = location;
    map['name'] = name;
    map['nfsDatastores'] =
        pulumi.Input.encodeList<GetDatastoreNfsDatastore, Map<String, dynamic>>(
            nfsDatastores, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['state'] = state;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetDatastoreResult.fromMap(Map<String, dynamic> map) {
    return GetDatastoreResult(
      clusters: (map['clusters'] as List).cast<String>(),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      nfsDatastores: pulumi.Input.decodeList<GetDatastoreNfsDatastore>(
          map['nfsDatastores'],
          (value) => GetDatastoreNfsDatastore.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
