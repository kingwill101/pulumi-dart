// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mongo_instances_instance.dart';

/// Result data returned by getMongoInstances.
class GetMongoInstancesResult {
  final String? availabilityZone;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? instanceClass;
  final String? instanceType;
  final List<GetMongoInstancesInstance> instances;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetMongoInstancesResult].
  /// [availabilityZone] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceClass] Optional.
  /// [instanceType] Optional.
  /// [instances] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  GetMongoInstancesResult({
    this.availabilityZone,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.instanceClass,
    this.instanceType,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instanceClass': ?instanceClass,
      'instanceType': ?instanceType,
      'instances': pulumi.Input.encodeList<GetMongoInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetMongoInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetMongoInstancesResult(
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone']! as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceClass: map['instanceClass'] == null ? null : map['instanceClass']! as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType']! as String,
      instances: pulumi.Input.decodeList<GetMongoInstancesInstance>(map['instances'], (value) => GetMongoInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
    );
  }
}

