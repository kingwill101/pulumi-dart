// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  /// The zone ID of the instance.
  final String? availabilityZone;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The instance type.
  final String? instanceClass;
  /// The instance architecture.
  final String? instanceType;
  /// A list of Instances. Each element contains the following attributes:
  final List<GetInstancesInstance> instances;
  final String? nameRegex;
  /// (Available since v1.42.0) A list of Instance names.
  final List<String> names;
  final String? outputFile;
  /// The instance status.
  final String? status;
  /// (Available since v1.66.0) The details of the resource tags.
  final Map<String, String>? tags;

  /// Creates a new [GetInstancesResult].
  /// [availabilityZone] The zone ID of the instance.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceClass] The instance type.
  /// [instanceType] The instance architecture.
  /// [instances] A list of Instances. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] (Available since v1.42.0) A list of Instance names.
  /// [outputFile] Optional.
  /// [status] The instance status.
  /// [tags] (Available since v1.66.0) The details of the resource tags.
  GetInstancesResult({
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
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone']! as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceClass: map['instanceClass'] == null ? null : map['instanceClass']! as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType']! as String,
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances'], (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
    );
  }
}

