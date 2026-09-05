// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQueues.
class GetQueuesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? queueNamePrefix;
  /// A list of queue URLs.
  final List<String>? queueUrls;
  final String? region;

  /// Creates a new [GetQueuesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [queueNamePrefix] Optional.
  /// [queueUrls] A list of queue URLs.
  /// [region] Optional.
  const GetQueuesResult({
    this.id,
    this.queueNamePrefix,
    this.queueUrls,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'queueNamePrefix': ?queueNamePrefix,
      'queueUrls': ?queueUrls,
      'region': ?region,
    };
  }

  factory GetQueuesResult.fromMap(Map<String, dynamic> map) {
    return GetQueuesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueNamePrefix: (() { final guardedValue = map['queueNamePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueUrls: (() { final guardedValue = map['queueUrls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
