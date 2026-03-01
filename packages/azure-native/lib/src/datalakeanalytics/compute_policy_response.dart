// ignore_for_file: unused_element, unnecessary_cast


/// Data Lake Analytics compute policy information.
class ComputePolicyResponse {
  /// The resource identifier.
  final String id;
  /// The maximum degree of parallelism per job this user can use to submit jobs.
  final int maxDegreeOfParallelismPerJob;
  /// The minimum priority per job this user can use to submit jobs.
  final int minPriorityPerJob;
  /// The resource name.
  final String name;
  /// The AAD object identifier for the entity to create a policy for.
  final String objectId;
  /// The type of AAD object the object identifier refers to.
  final String objectType;
  /// The resource type.
  final String type;

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
      id: map['id'] as String,
      maxDegreeOfParallelismPerJob: map['maxDegreeOfParallelismPerJob'] as int,
      minPriorityPerJob: map['minPriorityPerJob'] as int,
      name: map['name'] as String,
      objectId: map['objectId'] as String,
      objectType: map['objectType'] as String,
      type: map['type'] as String,
    );
  }
}

