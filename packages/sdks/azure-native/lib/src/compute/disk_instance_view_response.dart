// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_settings_response.dart';
import 'instance_view_status_response.dart';

/// The instance view of the disk.
class DiskInstanceViewResponse {
  /// Specifies the encryption settings for the OS Disk. <br><br> Minimum api-version: 2015-06-15
  final List<DiskEncryptionSettingsResponse>? encryptionSettings;
  /// The disk name.
  final String? name;
  /// The resource status information.
  final List<InstanceViewStatusResponse>? statuses;

  /// Creates a new [DiskInstanceViewResponse].
  /// [encryptionSettings] Specifies the encryption settings for the OS Disk. <br><br> Minimum api-version: 2015-06-15
  /// [name] The disk name.
  /// [statuses] The resource status information.
  DiskInstanceViewResponse({
    this.encryptionSettings,
    this.name,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSettings': ?encryptionSettings == null ? null : pulumi.Input.encodeList<DiskEncryptionSettingsResponse, Map<String, dynamic>>(encryptionSettings!, (value) => value.toMap()),
      'name': ?name,
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
    };
  }

  factory DiskInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return DiskInstanceViewResponse(
      encryptionSettings: map['encryptionSettings'] == null ? null : pulumi.Input.decodeList<DiskEncryptionSettingsResponse>(map['encryptionSettings'], (value) => DiskEncryptionSettingsResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<InstanceViewStatusResponse>(map['statuses'], (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

