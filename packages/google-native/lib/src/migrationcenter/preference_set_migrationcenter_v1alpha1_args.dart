// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_preferences_migrationcenter_v1alpha1.dart';

/// {@template pulumi_migrationcenter_v1alpha1_preference_set_migrationcenter_v1alpha1_args_doc}
/// The set of arguments for PreferenceSet.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_preference_set_migrationcenter_v1alpha1_args_doc}
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

  /// Creates a new [PreferenceSetMigrationcenterV1alpha1Args].
  /// [description] A description of the preference set.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [location] Optional.
  /// [preferenceSetId] Optional.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [virtualMachinePreferences] A set of preferences that applies to all virtual machines in the context.
  PreferenceSetMigrationcenterV1alpha1Args({
    String? description,
    String? displayName,
    String? location,
    String? preferenceSetId,
    String? project,
    String? requestId,
    VirtualMachinePreferencesMigrationcenterV1alpha1? virtualMachinePreferences,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        location = pulumi.Input.asOptionalInput<String>(location),
        preferenceSetId = pulumi.Input.asOptionalInput<String>(preferenceSetId),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        virtualMachinePreferences = pulumi.Input.asOptionalInput<
                VirtualMachinePreferencesMigrationcenterV1alpha1>(
            virtualMachinePreferences);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      preferenceSetId: map['preferenceSetId'] == null
          ? null
          : map['preferenceSetId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      virtualMachinePreferences: map['virtualMachinePreferences'] == null
          ? null
          : VirtualMachinePreferencesMigrationcenterV1alpha1.fromMap(
              (map['virtualMachinePreferences'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
