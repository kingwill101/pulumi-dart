// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSink.
class GetSinkResult {
  /// ARN of the sink.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the sink.
  final String? name;
  final String? region;
  /// Random ID string that AWS generated as part of the sink ARN.
  final String? sinkId;
  final String? sinkIdentifier;
  /// Tags assigned to the sink.
  final Map<String, String>? tags;

  /// Creates a new [GetSinkResult].
  /// [arn] ARN of the sink.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the sink.
  /// [region] Optional.
  /// [sinkId] Random ID string that AWS generated as part of the sink ARN.
  /// [sinkIdentifier] Optional.
  /// [tags] Tags assigned to the sink.
  const GetSinkResult({
    this.arn,
    this.id,
    this.name,
    this.region,
    this.sinkId,
    this.sinkIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'sinkId': ?sinkId,
      'sinkIdentifier': ?sinkIdentifier,
      'tags': ?tags,
    };
  }

  factory GetSinkResult.fromMap(Map<String, dynamic> map) {
    return GetSinkResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sinkId: (() { final guardedValue = map['sinkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sinkIdentifier: (() { final guardedValue = map['sinkIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
