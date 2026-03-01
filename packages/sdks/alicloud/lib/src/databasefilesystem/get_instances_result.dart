// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetInstancesInstance> instances;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetInstancesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetInstancesResult({
    required this.id,
    required this.ids,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
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
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances'], (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

