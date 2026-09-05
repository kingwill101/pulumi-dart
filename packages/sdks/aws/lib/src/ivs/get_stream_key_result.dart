// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStreamKey.
class GetStreamKeyResult {
  /// ARN of the Stream Key.
  final String? arn;
  final String? channelArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// Stream Key value.
  final String? value;

  /// Creates a new [GetStreamKeyResult].
  /// [arn] ARN of the Stream Key.
  /// [channelArn] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [tags] Map of tags assigned to the resource.
  /// [value] Stream Key value.
  const GetStreamKeyResult({
    this.arn,
    this.channelArn,
    this.id,
    this.region,
    this.tags,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'channelArn': ?channelArn,
      'id': ?id,
      'region': ?region,
      'tags': ?tags,
      'value': ?value,
    };
  }

  factory GetStreamKeyResult.fromMap(Map<String, dynamic> map) {
    return GetStreamKeyResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      channelArn: (() { final guardedValue = map['channelArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
