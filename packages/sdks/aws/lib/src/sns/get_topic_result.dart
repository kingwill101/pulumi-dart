// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTopic.
class GetTopicResult {
  /// ARN of the found topic, suitable for referencing in other resources that support SNS topics.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// Map of tags for the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetTopicResult].
  /// [arn] ARN of the found topic, suitable for referencing in other resources that support SNS topics.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [tags] Map of tags for the resource.
  const GetTopicResult({
    this.arn,
    this.id,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
