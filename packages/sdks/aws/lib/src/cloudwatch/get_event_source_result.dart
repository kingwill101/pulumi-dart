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

  /// Creates a new [GetEventSourceResult].
  /// [arn] ARN of the partner event source
  /// [createdBy] Name of the SaaS partner that created the event source
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the event source
  /// [namePrefix] Optional.
  /// [region] Required.
  /// [state] State of the event source (`ACTIVE` or `PENDING`)
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
    return <String, dynamic>{
      'arn': arn,
      'createdBy': createdBy,
      'id': id,
      'name': name,
      'namePrefix': ?namePrefix,
      'region': region,
      'state': state,
    };
  }

  factory GetEventSourceResult.fromMap(Map<String, dynamic> map) {
    return GetEventSourceResult(
      arn: map['arn'] as String,
      createdBy: map['createdBy'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: map['region'] as String,
      state: map['state'] as String,
    );
  }
}
