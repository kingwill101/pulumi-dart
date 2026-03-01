// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_preferences_response_migrationcenter_v1alpha1.dart';

/// Result data returned by getPreferenceSet.
class GetPreferenceSetMigrationcenterV1alpha1Result {
  /// The timestamp when the preference set was created.
  final String createTime;

  /// A description of the preference set.
  final String description;

  /// User-friendly display name. Maximum length is 63 characters.
  final String displayName;

  /// Name of the preference set.
  final String name;

  /// The timestamp when the preference set was last updated.
  final String updateTime;

  /// A set of preferences that applies to all virtual machines in the context.
  final VirtualMachinePreferencesResponseMigrationcenterV1alpha1
  virtualMachinePreferences;

  /// Creates a new [GetPreferenceSetMigrationcenterV1alpha1Result].
  /// [createTime] The timestamp when the preference set was created.
  /// [description] A description of the preference set.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [name] Name of the preference set.
  /// [updateTime] The timestamp when the preference set was last updated.
  /// [virtualMachinePreferences] A set of preferences that applies to all virtual machines in the context.
  GetPreferenceSetMigrationcenterV1alpha1Result({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.name,
    required this.updateTime,
    required this.virtualMachinePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'name': name,
      'updateTime': updateTime,
      'virtualMachinePreferences': virtualMachinePreferences.toMap(),
    };
  }

  factory GetPreferenceSetMigrationcenterV1alpha1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPreferenceSetMigrationcenterV1alpha1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      virtualMachinePreferences:
          VirtualMachinePreferencesResponseMigrationcenterV1alpha1.fromMap(
            (map['virtualMachinePreferences'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
