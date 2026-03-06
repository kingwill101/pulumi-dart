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
  const GetBastionHostInstancesResult({
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
      descriptionRegex: (() { final guardedValue = map['descriptionRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      descriptions: (map['descriptions'] as List).cast<String>(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetBastionHostInstancesInstance>(map['instances']!, (value) => GetBastionHostInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

