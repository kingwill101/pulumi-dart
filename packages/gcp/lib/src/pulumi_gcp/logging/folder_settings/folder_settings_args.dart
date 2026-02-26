// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for FolderSettings.
class FolderSettingsArgs {
  /// If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  final Input<bool>? disableDefaultSink;

  /// The folder for which to retrieve settings.
  final Input<String> folder;

  /// The resource name for the configured Cloud KMS key.
  final Input<String>? kmsKeyName;

  /// The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  final Input<String>? storageLocation;

  FolderSettingsArgs({
    this.disableDefaultSink,
    required this.folder,
    this.kmsKeyName,
    this.storageLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableDefaultSinkValue = disableDefaultSink;
    if (disableDefaultSinkValue != null) {
      map['disableDefaultSink'] = disableDefaultSinkValue;
    }
    map['folder'] = folder;
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final storageLocationValue = storageLocation;
    if (storageLocationValue != null) {
      map['storageLocation'] = storageLocationValue;
    }
    return map;
  }

  factory FolderSettingsArgs.fromMap(Map<String, dynamic> map) {
    return FolderSettingsArgs(
      disableDefaultSink:
          Input.asOptionalInput<bool>(map['disableDefaultSink']),
      folder: Input.asInput<String>(map['folder']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      storageLocation: Input.asOptionalInput<String>(map['storageLocation']),
    );
  }
}
