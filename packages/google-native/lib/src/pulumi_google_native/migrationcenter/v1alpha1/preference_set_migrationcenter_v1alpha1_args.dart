// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_preferences_migrationcenter_v1alpha1.dart';

/// The set of arguments for PreferenceSet.
class PreferenceSetMigrationcenterV1alpha1Args {
  /// A description of the preference set.
  final pulumi.Input<String>? description;

  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? preferenceSetId;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// A set of preferences that applies to all virtual machines in the context.
  final pulumi.Input<VirtualMachinePreferencesMigrationcenterV1alpha1>?
      virtualMachinePreferences;

  PreferenceSetMigrationcenterV1alpha1Args({
    this.description,
    this.displayName,
    this.location,
    this.preferenceSetId,
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
    final preferenceSetIdValue = preferenceSetId;
    if (preferenceSetIdValue != null) {
      map['preferenceSetId'] = preferenceSetIdValue;
    }
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
              VirtualMachinePreferencesMigrationcenterV1alpha1,
              Map<String, dynamic>>(
          virtualMachinePreferencesValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreferenceSetMigrationcenterV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return PreferenceSetMigrationcenterV1alpha1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      preferenceSetId:
          pulumi.Input.asOptionalInput<String>(map['preferenceSetId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      virtualMachinePreferences: pulumi.Input.asOptionalInput<
              VirtualMachinePreferencesMigrationcenterV1alpha1>(
          map['virtualMachinePreferences']),
    );
  }
}
