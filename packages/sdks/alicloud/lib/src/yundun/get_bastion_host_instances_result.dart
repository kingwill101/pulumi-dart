// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bastion_host_instances_instance.dart';

/// Result data returned by getBastionHostInstances.
class GetBastionHostInstancesResult {
  final String? descriptionRegex;
  final List<String> descriptions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetBastionHostInstancesInstance> instances;
  final String? outputFile;
  final Map<String, String>? tags;

  /// Creates a new [GetBastionHostInstancesResult].
  /// [descriptionRegex] Optional.
  /// [descriptions] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] Required.
  /// [outputFile] Optional.
  /// [tags] Optional.
  GetBastionHostInstancesResult({
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
      'instances': pulumi.Input.encodeList<GetBastionHostInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetBastionHostInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetBastionHostInstancesResult(
      descriptionRegex: map['descriptionRegex'] == null ? null : map['descriptionRegex'] as String,
      descriptions: (map['descriptions'] as List).cast<String>(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetBastionHostInstancesInstance>(map['instances'], (value) => GetBastionHostInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

