// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_preferences_response2.dart';

/// Result data returned by getPreferenceSet.
class GetPreferenceSetResult2 {
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
  final VirtualMachinePreferencesResponse2 virtualMachinePreferences;

  GetPreferenceSetResult2({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.name,
    required this.updateTime,
    required this.virtualMachinePreferences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['name'] = name;
    map['updateTime'] = updateTime;
    map['virtualMachinePreferences'] = virtualMachinePreferences.toMap();
    return map;
  }

  factory GetPreferenceSetResult2.fromMap(Map<String, dynamic> map) {
    return GetPreferenceSetResult2(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      virtualMachinePreferences: VirtualMachinePreferencesResponse2.fromMap(
          (map['virtualMachinePreferences'] as Map).cast<String, dynamic>()),
    );
  }
}
