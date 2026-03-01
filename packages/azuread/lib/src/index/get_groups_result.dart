// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGroups.
class GetGroupsResult {
  final String displayNamePrefix;
  /// The display names of the groups.
  final List<String> displayNames;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? ignoreMissing;
  final bool mailEnabled;
  /// The object IDs of the groups.
  final List<String> objectIds;
  final bool? returnAll;
  final bool securityEnabled;

  /// Creates a new [GetGroupsResult].
  /// [displayNamePrefix] Required.
  /// [displayNames] The display names of the groups.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ignoreMissing] Optional.
  /// [mailEnabled] Required.
  /// [objectIds] The object IDs of the groups.
  /// [returnAll] Optional.
  /// [securityEnabled] Required.
  GetGroupsResult({
    required this.displayNamePrefix,
    required this.displayNames,
    required this.id,
    this.ignoreMissing,
    required this.mailEnabled,
    required this.objectIds,
    this.returnAll,
    required this.securityEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayNamePrefix': displayNamePrefix,
      'displayNames': displayNames,
      'id': id,
      'ignoreMissing': ?ignoreMissing,
      'mailEnabled': mailEnabled,
      'objectIds': objectIds,
      'returnAll': ?returnAll,
      'securityEnabled': securityEnabled,
    };
  }

  factory GetGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupsResult(
      displayNamePrefix: map['displayNamePrefix'] as String,
      displayNames: (map['displayNames'] as List).cast<String>(),
      id: map['id'] as String,
      ignoreMissing: map['ignoreMissing'] == null ? null : map['ignoreMissing'] as bool,
      mailEnabled: map['mailEnabled'] as bool,
      objectIds: (map['objectIds'] as List).cast<String>(),
      returnAll: map['returnAll'] == null ? null : map['returnAll'] as bool,
      securityEnabled: map['securityEnabled'] as bool,
    );
  }
}

