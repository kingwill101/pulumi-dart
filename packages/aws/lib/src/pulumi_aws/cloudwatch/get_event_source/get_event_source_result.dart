// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEventSource.
class GetEventSourceResult {
  /// ARN of the partner event source
  final String arn;

  /// Name of the SaaS partner that created the event source
  final String createdBy;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the event source
  final String name;
  final String? namePrefix;
  final String region;

  /// State of the event source (`ACTIVE` or `PENDING`)
  final String state;

  GetEventSourceResult({
    required this.arn,
    required this.createdBy,
    required this.id,
    required this.name,
    this.namePrefix,
    required this.region,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createdBy'] = createdBy;
    map['id'] = id;
    map['name'] = name;
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    map['region'] = region;
    map['state'] = state;
    return map;
  }

  factory GetEventSourceResult.fromMap(Map<String, dynamic> map) {
    return GetEventSourceResult(
      arn: map['arn'] as String,
      createdBy: map['createdBy'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
    );
  }
}
