// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQueue.
class GetQueueResult {
  /// ARN of the queue.
  final String? arn;
  final String? id;
  /// Same as `id`.
  final String? name;
  final String? region;
  /// Status of the queue.
  final String? status;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final Map<String, String>? tags;

  /// Creates a new [GetQueueResult].
  /// [arn] ARN of the queue.
  /// [id] Optional.
  /// [name] Same as `id`.
  /// [region] Optional.
  /// [status] Status of the queue.
  /// [tags] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const GetQueueResult({
    this.arn,
    this.id,
    this.name,
    this.region,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetQueueResult.fromMap(Map<String, dynamic> map) {
    return GetQueueResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
