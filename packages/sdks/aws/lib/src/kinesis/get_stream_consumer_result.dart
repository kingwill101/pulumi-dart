// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStreamConsumer.
class GetStreamConsumerResult {
  final String? arn;
  /// Approximate timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of when the stream consumer was created.
  final String? creationTimestamp;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// Current status of the stream consumer.
  final String? status;
  final String? streamArn;
  final Map<String, String>? tags;

  /// Creates a new [GetStreamConsumerResult].
  /// [arn] Optional.
  /// [creationTimestamp] Approximate timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of when the stream consumer was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [status] Current status of the stream consumer.
  /// [streamArn] Optional.
  /// [tags] Optional.
  const GetStreamConsumerResult({
    this.arn,
    this.creationTimestamp,
    this.id,
    this.name,
    this.region,
    this.status,
    this.streamArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTimestamp': ?creationTimestamp,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'streamArn': ?streamArn,
      'tags': ?tags,
    };
  }

  factory GetStreamConsumerResult.fromMap(Map<String, dynamic> map) {
    return GetStreamConsumerResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      streamArn: (() { final guardedValue = map['streamArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
