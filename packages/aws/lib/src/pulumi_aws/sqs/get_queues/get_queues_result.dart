// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getQueues.
class GetQueuesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? queueNamePrefix;

  /// A list of queue URLs.
  final List<String> queueUrls;
  final String region;

  GetQueuesResult({
    required this.id,
    this.queueNamePrefix,
    required this.queueUrls,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final queueNamePrefixValue = queueNamePrefix;
    if (queueNamePrefixValue != null) {
      map['queueNamePrefix'] = queueNamePrefixValue;
    }
    map['queueUrls'] = queueUrls;
    map['region'] = region;
    return map;
  }

  factory GetQueuesResult.fromMap(Map<String, dynamic> map) {
    return GetQueuesResult(
      id: map['id'] as String,
      queueNamePrefix: map['queueNamePrefix'] == null
          ? null
          : map['queueNamePrefix'] as String,
      queueUrls: (map['queueUrls'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
