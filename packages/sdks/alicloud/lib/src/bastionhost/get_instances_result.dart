// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final String? descriptionRegex;
  final List<String> descriptions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// A list of apis. Each element contains the following attributes:
  final List<GetInstancesInstance> instances;
  final String? outputFile;
  /// A map of tags assigned to the bastionhost instance.
  final Map<String, String>? tags;

  /// Creates a new [GetInstancesResult].
  /// [descriptionRegex] Optional.
  /// [descriptions] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] A list of apis. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [tags] A map of tags assigned to the bastionhost instance.
  GetInstancesResult({
    this.descriptionRegex,
    required this.descriptions,
    required this.id,
    required this.ids,
    required this.instances,
    this.outputFile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionRegex': ?descriptionRegex,
      'descriptions': descriptions,
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      descriptionRegex: map['descriptionRegex'] == null ? null : map['descriptionRegex']! as String,
      descriptions: (map['descriptions'] as List).cast<String>(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances'], (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
    );
  }
}

