// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final String? descriptionRegex;
  /// A list of DRDS descriptions.
  final List<String> descriptions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of DRDS instance IDs.
  final List<String> ids;
  /// A list of DRDS instances.
  final List<GetInstancesInstance> instances;
  final String? nameRegex;
  final String? outputFile;

  /// Creates a new [GetInstancesResult].
  /// [descriptionRegex] Optional.
  /// [descriptions] A list of DRDS descriptions.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of DRDS instance IDs.
  /// [instances] A list of DRDS instances.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  GetInstancesResult({
    this.descriptionRegex,
    required this.descriptions,
    required this.id,
    required this.ids,
    required this.instances,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionRegex': ?descriptionRegex,
      'descriptions': descriptions,
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      descriptionRegex: map['descriptionRegex'] == null ? null : map['descriptionRegex'] as String,
      descriptions: (map['descriptions'] as List).cast<String>(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances'], (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

