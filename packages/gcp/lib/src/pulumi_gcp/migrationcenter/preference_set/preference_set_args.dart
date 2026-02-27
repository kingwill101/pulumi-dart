// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../preference_set_virtual_machine_preferences/preference_set_virtual_machine_preferences.dart';

/// The set of arguments for PreferenceSet.
class PreferenceSetArgs {
  /// A description of the preference set.
  final Input<String>? description;

  /// User-friendly display name. Maximum length is 63 characters.
  final Input<String>? displayName;

  /// Part of `parent`. See documentation of `projectsId`.
  final Input<String> location;

  /// Required. User specified ID for the preference set. It will become the last component of the preference set name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression `a-z?`.
  final Input<String> preferenceSetId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
  /// Structure is documented below.
  final Input<PreferenceSetVirtualMachinePreferences>?
      virtualMachinePreferences;

  PreferenceSetArgs({
    this.description,
    this.displayName,
    required this.location,
    required this.preferenceSetId,
    this.project,
    this.virtualMachinePreferences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    map['preferenceSetId'] = preferenceSetId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final virtualMachinePreferencesValue = virtualMachinePreferences;
    if (virtualMachinePreferencesValue != null) {
      map['virtualMachinePreferences'] = Input.mapOptionalInputValue<
              PreferenceSetVirtualMachinePreferences, Map<String, dynamic>>(
          virtualMachinePreferencesValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreferenceSetArgs.fromMap(Map<String, dynamic> map) {
    return PreferenceSetArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      preferenceSetId: Input.asInput<String>(map['preferenceSetId']),
      project: Input.asOptionalInput<String>(map['project']),
      virtualMachinePreferences:
          Input.asOptionalInput<PreferenceSetVirtualMachinePreferences>(
              map['virtualMachinePreferences']),
    );
  }
}
