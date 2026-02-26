// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadTargetResourceGcpResource {
  /// Output only. Name of the Google Cloud resource.
  final String? gcpResourcename;

  /// Required. The location for the backup vault.
  final String? location;

  /// Output only. Type of the resource.
  final String? type;

  RestoreWorkloadTargetResourceGcpResource({
    this.gcpResourcename,
    this.location,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcpResourcenameValue = gcpResourcename;
    if (gcpResourcenameValue != null) {
      map['gcpResourcename'] = gcpResourcenameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory RestoreWorkloadTargetResourceGcpResource.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadTargetResourceGcpResource(
      gcpResourcename: map['gcpResourcename'] == null
          ? null
          : map['gcpResourcename'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
