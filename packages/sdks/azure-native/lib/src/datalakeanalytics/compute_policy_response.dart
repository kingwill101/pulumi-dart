// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data Lake Analytics compute policy information.
class ComputePolicyResponse {
  /// The resource identifier.
  final pulumi.Input<String> id;
  /// The maximum degree of parallelism per job this user can use to submit jobs.
  final pulumi.Input<int> maxDegreeOfParallelismPerJob;
  /// The minimum priority per job this user can use to submit jobs.
  final pulumi.Input<int> minPriorityPerJob;
  /// The resource name.
  final pulumi.Input<String> name;
  /// The AAD object identifier for the entity to create a policy for.
  final pulumi.Input<String> objectId;
  /// The type of AAD object the object identifier refers to.
  final pulumi.Input<String> objectType;
  /// The resource type.
  final pulumi.Input<String> type;

  /// Creates a new [ComputePolicyResponse].
  /// [id] The resource identifier.
  /// [maxDegreeOfParallelismPerJob] The maximum degree of parallelism per job this user can use to submit jobs.
  /// [minPriorityPerJob] The minimum priority per job this user can use to submit jobs.
  /// [name] The resource name.
  /// [objectId] The AAD object identifier for the entity to create a policy for.
  /// [objectType] The type of AAD object the object identifier refers to.
  /// [type] The resource type.
  ComputePolicyResponse({
    required this.id,
    required this.maxDegreeOfParallelismPerJob,
    required this.minPriorityPerJob,
    required this.name,
    required this.objectId,
    required this.objectType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'maxDegreeOfParallelismPerJob': maxDegreeOfParallelismPerJob,
      'minPriorityPerJob': minPriorityPerJob,
      'name': name,
      'objectId': objectId,
      'objectType': objectType,
      'type': type,
    };
  }

  factory ComputePolicyResponse.fromMap(Map<String, dynamic> map) {
    return ComputePolicyResponse(
      id: (map['id'] as String).input(),
      maxDegreeOfParallelismPerJob: (map['maxDegreeOfParallelismPerJob'] as int).input(),
      minPriorityPerJob: (map['minPriorityPerJob'] as int).input(),
      name: (map['name'] as String).input(),
      objectId: (map['objectId'] as String).input(),
      objectType: (map['objectType'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

