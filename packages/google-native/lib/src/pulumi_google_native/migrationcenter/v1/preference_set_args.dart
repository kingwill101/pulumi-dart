// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_preferences.dart';

/// The set of arguments for PreferenceSet.
class PreferenceSetArgs {
  /// A description of the preference set.
  final pulumi.Input<String>? description;

  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;

  /// Required. User specified ID for the preference set. It will become the last component of the preference set name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  final pulumi.Input<String> preferenceSetId;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// A set of preferences that applies to all virtual machines in the context.
  final pulumi.Input<VirtualMachinePreferences>? virtualMachinePreferences;

  PreferenceSetArgs({
    this.description,
    this.displayName,
    this.location,
    required this.preferenceSetId,
    this.project,
    this.requestId,
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
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['preferenceSetId'] = preferenceSetId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final virtualMachinePreferencesValue = virtualMachinePreferences;
    if (virtualMachinePreferencesValue != null) {
      map['virtualMachinePreferences'] = pulumi.Input.mapOptionalInputValue<
              VirtualMachinePreferences, Map<String, dynamic>>(
          virtualMachinePreferencesValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreferenceSetArgs.fromMap(Map<String, dynamic> map) {
    return PreferenceSetArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      preferenceSetId: pulumi.Input.asInput<String>(map['preferenceSetId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      virtualMachinePreferences:
          pulumi.Input.asOptionalInput<VirtualMachinePreferences>(
              map['virtualMachinePreferences']),
    );
  }
}
