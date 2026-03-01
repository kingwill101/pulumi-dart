// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dbaudit_instance_instance.dart';

/// Result data returned by getDBAuditInstance.
class GetDBAuditInstanceResult {
  final String? descriptionRegex;
  final List<String> descriptions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetDBAuditInstanceInstance> instances;
  final String? outputFile;
  final Map<String, String>? tags;

  /// Creates a new [GetDBAuditInstanceResult].
  /// [descriptionRegex] Optional.
  /// [descriptions] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] Required.
  /// [outputFile] Optional.
  /// [tags] Optional.
  GetDBAuditInstanceResult({
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
      'instances': pulumi.Input.encodeList<GetDBAuditInstanceInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetDBAuditInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetDBAuditInstanceResult(
      descriptionRegex: map['descriptionRegex'] == null ? null : map['descriptionRegex'] as String,
      descriptions: (map['descriptions'] as List).cast<String>(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetDBAuditInstanceInstance>(map['instances'], (value) => GetDBAuditInstanceInstance.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

