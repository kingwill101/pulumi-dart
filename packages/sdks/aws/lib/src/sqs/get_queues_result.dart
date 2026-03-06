// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQueues.
class GetQueuesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? queueNamePrefix;
  /// A list of queue URLs.
  final List<String> queueUrls;
  final String region;

  /// Creates a new [GetQueuesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [queueNamePrefix] Optional.
  /// [queueUrls] A list of queue URLs.
  /// [region] Required.
  const GetQueuesResult({
    required this.id,
    this.queueNamePrefix,
    required this.queueUrls,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'queueNamePrefix': ?queueNamePrefix,
      'queueUrls': queueUrls,
      'region': region,
    };
  }

  factory GetQueuesResult.fromMap(Map<String, dynamic> map) {
    return GetQueuesResult(
      id: map['id'] as String,
      queueNamePrefix: (() { final guardedValue = map['queueNamePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueUrls: (map['queueUrls'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

