// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OrganizationSettings.
class OrganizationSettingsArgs {
  /// If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  final Input<bool>? disableDefaultSink;

  /// The resource name for the configured Cloud KMS key.
  final Input<String>? kmsKeyName;

  /// The organization for which to retrieve or configure settings.
  final Input<String> organization;

  /// The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  final Input<String>? storageLocation;

  OrganizationSettingsArgs({
    this.disableDefaultSink,
    this.kmsKeyName,
    required this.organization,
    this.storageLocation,
  });

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
      disableDefaultSink:
          Input.asOptionalInput<bool>(map['disableDefaultSink']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      organization: Input.asInput<String>(map['organization']),
      storageLocation: Input.asOptionalInput<String>(map['storageLocation']),
    );
  }
}
