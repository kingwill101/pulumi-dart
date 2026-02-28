// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_organization_settings_organization_settings_args_doc}
/// The set of arguments for OrganizationSettings.
/// {@endtemplate}
/// {@macro pulumi_logging_organization_settings_organization_settings_args_doc}
class OrganizationSettingsArgs {
  /// If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  final pulumi.Input<bool>? disableDefaultSink;

  /// The resource name for the configured Cloud KMS key.
  final pulumi.Input<String>? kmsKeyName;

  /// The organization for which to retrieve or configure settings.
  final pulumi.Input<String> organization;

  /// The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  final pulumi.Input<String>? storageLocation;

  /// Creates a new [OrganizationSettingsArgs].
  /// [disableDefaultSink] If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  /// [kmsKeyName] The resource name for the configured Cloud KMS key.
  /// [organization] The organization for which to retrieve or configure settings.
  /// [storageLocation] The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  OrganizationSettingsArgs({
    bool? disableDefaultSink,
    String? kmsKeyName,
    required String organization,
    String? storageLocation,
  })  : disableDefaultSink =
            pulumi.Input.asOptionalInput<bool>(disableDefaultSink),
        kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
        organization = pulumi.Input.asInput<String>(organization),
        storageLocation = pulumi.Input.asOptionalInput<String>(storageLocation);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableDefaultSinkValue = disableDefaultSink;
    if (disableDefaultSinkValue != null) {
      map['disableDefaultSink'] = disableDefaultSinkValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    map['organization'] = organization;
    final storageLocationValue = storageLocation;
    if (storageLocationValue != null) {
      map['storageLocation'] = storageLocationValue;
    }
    return map;
  }

  factory OrganizationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationSettingsArgs(
      disableDefaultSink: map['disableDefaultSink'] == null
          ? null
          : map['disableDefaultSink'] as bool,
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      organization: map['organization'] as String,
      storageLocation: map['storageLocation'] == null
          ? null
          : map['storageLocation'] as String,
    );
  }
}
