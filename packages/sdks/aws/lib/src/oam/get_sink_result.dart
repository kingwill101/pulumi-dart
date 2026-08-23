// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSink.
class GetSinkResult {
  /// ARN of the sink.
  final String arn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Name of the sink.
  final String name;
  final String region;
  /// Random ID string that AWS generated as part of the sink ARN.
  final String sinkId;
  final String sinkIdentifier;
  /// Tags assigned to the sink.
  final Map<String, String> tags;

  /// Creates a new [GetSinkResult].
  /// [arn] ARN of the sink.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the sink.
  /// [region] Required.
  /// [sinkId] Random ID string that AWS generated as part of the sink ARN.
  /// [sinkIdentifier] Required.
  /// [tags] Tags assigned to the sink.
  const GetSinkResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.region,
    required this.sinkId,
    required this.sinkIdentifier,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'name': name,
      'region': region,
      'sinkId': sinkId,
      'sinkIdentifier': sinkIdentifier,
      'tags': tags,
    };
  }

  factory GetSinkResult.fromMap(Map<String, dynamic> map) {
    return GetSinkResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      sinkId: map['sinkId'] as String,
      sinkIdentifier: map['sinkIdentifier'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
