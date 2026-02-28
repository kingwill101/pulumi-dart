// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRecordSet.
class GetRecordSetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String managedZone;
  final String name;
  final String? project;

  /// The string data for the records in this record set.
  final List<String> rrdatas;

  /// The time-to-live of this record set (seconds).
  final int ttl;
  final String type;

  /// Creates a new [GetRecordSetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedZone] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [rrdatas] The string data for the records in this record set.
  /// [ttl] The time-to-live of this record set (seconds).
  /// [type] Required.
  GetRecordSetResult({
    required this.id,
    required this.managedZone,
    required this.name,
    this.project,
    required this.rrdatas,
    required this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['managedZone'] = managedZone;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rrdatas'] = rrdatas;
    map['ttl'] = ttl;
    map['type'] = type;
    return map;
  }

  factory GetRecordSetResult.fromMap(Map<String, dynamic> map) {
    return GetRecordSetResult(
      id: map['id'] as String,
      managedZone: map['managedZone'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rrdatas: (map['rrdatas'] as List).cast<String>(),
      ttl: map['ttl'] as int,
      type: map['type'] as String,
    );
  }
}
