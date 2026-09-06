// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getComputePolicy.
class GetComputePolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource identifier.
  final String? id;
  /// The maximum degree of parallelism per job this user can use to submit jobs.
  final int? maxDegreeOfParallelismPerJob;
  /// The minimum priority per job this user can use to submit jobs.
  final int? minPriorityPerJob;
  /// The resource name.
  final String? name;
  /// The AAD object identifier for the entity to create a policy for.
  final String? objectId;
  /// The type of AAD object the object identifier refers to.
  final String? objectType;
  /// The resource type.
  final String? type;

  /// Creates a new [GetComputePolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource identifier.
  /// [maxDegreeOfParallelismPerJob] The maximum degree of parallelism per job this user can use to submit jobs.
  /// [minPriorityPerJob] The minimum priority per job this user can use to submit jobs.
  /// [name] The resource name.
  /// [objectId] The AAD object identifier for the entity to create a policy for.
  /// [objectType] The type of AAD object the object identifier refers to.
  /// [type] The resource type.
  const GetComputePolicyResult({
    this.azureApiVersion,
    this.id,
    this.maxDegreeOfParallelismPerJob,
    this.minPriorityPerJob,
    this.name,
    this.objectId,
    this.objectType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'maxDegreeOfParallelismPerJob': ?maxDegreeOfParallelismPerJob,
      'minPriorityPerJob': ?minPriorityPerJob,
      'name': ?name,
      'objectId': ?objectId,
      'objectType': ?objectType,
      'type': ?type,
    };
  }

  factory GetComputePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetComputePolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxDegreeOfParallelismPerJob: (() { final guardedValue = map['maxDegreeOfParallelismPerJob']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      minPriorityPerJob: (() { final guardedValue = map['minPriorityPerJob']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectType: (() { final guardedValue = map['objectType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
