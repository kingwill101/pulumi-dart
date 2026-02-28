// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind {
  /// The name of the Datastore kind.
  final String name;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind].
  /// [name] The name of the Datastore kind.
  PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind(
      name: map['name'] as String,
    );
  }
}
