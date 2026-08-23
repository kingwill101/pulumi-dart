// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_settings_response.dart';
import 'instance_view_status_response.dart';

/// The instance view of the disk.
class DiskInstanceViewResponse {
  /// Specifies the encryption settings for the OS Disk. &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15
  final pulumi.Input<List<DiskEncryptionSettingsResponse>>? encryptionSettings;
  /// The disk name.
  final pulumi.Input<String>? name;
  /// The resource status information.
  final pulumi.Input<List<InstanceViewStatusResponse>>? statuses;

  /// Creates a new [DiskInstanceViewResponse].
  /// [encryptionSettings] Specifies the encryption settings for the OS Disk. &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15
  /// [name] The disk name.
  /// [statuses] The resource status information.
  const DiskInstanceViewResponse({
    this.encryptionSettings,
    this.name,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSettings': ?pulumi.Input.mapOptionalInputValue<List<DiskEncryptionSettingsResponse>, List<Map<String, dynamic>>>(encryptionSettings, (value) => pulumi.Input.encodeList<DiskEncryptionSettingsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<InstanceViewStatusResponse>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiskInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return DiskInstanceViewResponse(
      encryptionSettings: (() { final guardedValue = map['encryptionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiskEncryptionSettingsResponse>(guardedValue, (value) => DiskEncryptionSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceViewStatusResponse>(guardedValue, (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
