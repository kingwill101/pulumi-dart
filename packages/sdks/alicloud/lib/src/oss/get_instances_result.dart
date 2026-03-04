// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of instance IDs.
  final List<String> ids;

  /// A list of instances. Each element contains the following attributes:
  final List<GetInstancesInstance> instances;
  final String? nameRegex;

  /// A list of instance names.
  final List<String> names;
  final String? outputFile;

  /// The tags of the instance.
  final Map<String, String>? tags;

  /// Creates a new [GetInstancesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of instance IDs.
  /// [instances] A list of instances. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of instance names.
  /// [outputFile] Optional.
  /// [tags] The tags of the instance.
  GetInstancesResult({
    required this.id,
    required this.ids,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instances':
          pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(
            instances,
            (value) => value.toMap(),
          ),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(
        map['instances']!,
        (value) => GetInstancesInstance.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
    );
  }
}
