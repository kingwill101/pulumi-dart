// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters used to create a new compute policy while creating a new Data Lake Analytics account.
class CreateComputePolicyWithAccountParameters {
  /// The maximum degree of parallelism per job this user can use to submit jobs. This property, the min priority per job property, or both must be passed.
  final pulumi.Input<int>? maxDegreeOfParallelismPerJob;
  /// The minimum priority per job this user can use to submit jobs. This property, the max degree of parallelism per job property, or both must be passed.
  final pulumi.Input<int>? minPriorityPerJob;
  /// The unique name of the compute policy to create.
  final pulumi.Input<String> name;
  /// The AAD object identifier for the entity to create a policy for.
  final pulumi.Input<String> objectId;
  /// The type of AAD object the object identifier refers to.
  final pulumi.Input<String> objectType;

  /// Creates a new [CreateComputePolicyWithAccountParameters].
  /// [maxDegreeOfParallelismPerJob] The maximum degree of parallelism per job this user can use to submit jobs. This property, the min priority per job property, or both must be passed.
  /// [minPriorityPerJob] The minimum priority per job this user can use to submit jobs. This property, the max degree of parallelism per job property, or both must be passed.
  /// [name] The unique name of the compute policy to create.
  /// [objectId] The AAD object identifier for the entity to create a policy for.
  /// [objectType] The type of AAD object the object identifier refers to.
  CreateComputePolicyWithAccountParameters({
    this.maxDegreeOfParallelismPerJob,
    this.minPriorityPerJob,
    required this.name,
    required this.objectId,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDegreeOfParallelismPerJob': ?maxDegreeOfParallelismPerJob,
      'minPriorityPerJob': ?minPriorityPerJob,
      'name': name,
      'objectId': objectId,
      'objectType': objectType,
    };
  }

  factory CreateComputePolicyWithAccountParameters.fromMap(Map<String, dynamic> map) {
    return CreateComputePolicyWithAccountParameters(
      maxDegreeOfParallelismPerJob: map['maxDegreeOfParallelismPerJob'] == null ? null : (map['maxDegreeOfParallelismPerJob'] as int).input(),
      minPriorityPerJob: map['minPriorityPerJob'] == null ? null : (map['minPriorityPerJob'] as int).input(),
      name: (map['name'] as String).input(),
      objectId: (map['objectId'] as String).input(),
      objectType: (map['objectType'] as String).input(),
    );
  }
}

