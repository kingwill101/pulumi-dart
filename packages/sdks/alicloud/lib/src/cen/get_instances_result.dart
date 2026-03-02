// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of CEN instances IDs.
  final List<String> ids;
  /// A list of CEN instances. Each element contains the following attributes:
  final List<GetInstancesInstance> instances;
  final String? nameRegex;
  /// A list of CEN instances names.
  final List<String> names;
  final String? outputFile;
  /// Status of the CEN instance, including "Creating", "Active" and "Deleting".
  final String? status;
  /// A map of tags assigned to the Cen Instance.
  final Map<String, String>? tags;

  /// Creates a new [GetInstancesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of CEN instances IDs.
  /// [instances] A list of CEN instances. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of CEN instances names.
  /// [outputFile] Optional.
  /// [status] Status of the CEN instance, including "Creating", "Active" and "Deleting".
  /// [tags] A map of tags assigned to the Cen Instance.
  GetInstancesResult({
    required this.id,
    required this.ids,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances'], (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
    );
  }
}

