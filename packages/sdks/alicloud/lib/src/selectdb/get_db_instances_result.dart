// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_instances_instance.dart';

/// Result data returned by getDbInstances.
class GetDbInstancesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;

  /// A list of SelectDB DBInstance. Each element contains the following attributes:
  final List<GetDbInstancesInstance> instances;
  final String? outputFile;
  final Map<String, String>? tags;

  /// Creates a new [GetDbInstancesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instances] A list of SelectDB DBInstance. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [tags] Optional.
  GetDbInstancesResult({
    required this.id,
    required this.ids,
    required this.instances,
    this.outputFile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instances':
          pulumi.Input.encodeList<GetDbInstancesInstance, Map<String, dynamic>>(
            instances,
            (value) => value.toMap(),
          ),
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetDbInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetDbInstancesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetDbInstancesInstance>(
        map['instances']!,
        (value) => GetDbInstancesInstance.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
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
