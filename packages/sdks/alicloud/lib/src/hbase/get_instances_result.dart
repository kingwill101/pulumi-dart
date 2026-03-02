// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final String? availabilityZone;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The ids list of HBase instances
  final List<String> ids;
  /// A list of HBase instances. Its every element contains the following attributes:
  final List<GetInstancesInstance> instances;
  final String? nameRegex;
  /// The names list of HBase instances
  final List<String> names;
  final String? outputFile;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetInstancesResult].
  /// [availabilityZone] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] The ids list of HBase instances
  /// [instances] A list of HBase instances. Its every element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] The names list of HBase instances
  /// [outputFile] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  GetInstancesResult({
    this.availabilityZone,
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
      'availabilityZone': ?availabilityZone,
      'id': id,
      'ids': ids,
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances'], (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
    );
  }
}

