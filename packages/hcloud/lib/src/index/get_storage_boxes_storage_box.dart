// ignore_for_file: unused_element, unnecessary_cast

import 'get_storage_boxes_storage_box_access_settings.dart';
import 'get_storage_boxes_storage_box_snapshot_plan.dart';

class GetStorageBoxesStorageBox {
  /// Access settings of the Storage Box.
  final GetStorageBoxesStorageBoxAccessSettings accessSettings;
  /// Whether delete protection is enabled.
  final bool deleteProtection;
  /// ID of the Storage Box.
  final int id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String> labels;
  /// Name of the Location.
  final String location;
  /// Name of the Storage Box.
  final String name;
  /// FQDN of the Storage Box.
  final String server;
  /// Details of the active snapshot plan.
  final GetStorageBoxesStorageBoxSnapshotPlan snapshotPlan;
  /// Name of the Storage Box Type.
  final String storageBoxType;
  /// Host system of the Storage Box.
  final String system;
  /// Primary username of the Storage Box.
  final String username;

  /// Creates a new [GetStorageBoxesStorageBox].
  /// [accessSettings] Access settings of the Storage Box.
  /// [deleteProtection] Whether delete protection is enabled.
  /// [id] ID of the Storage Box.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [location] Name of the Location.
  /// [name] Name of the Storage Box.
  /// [server] FQDN of the Storage Box.
  /// [snapshotPlan] Details of the active snapshot plan.
  /// [storageBoxType] Name of the Storage Box Type.
  /// [system] Host system of the Storage Box.
  /// [username] Primary username of the Storage Box.
  GetStorageBoxesStorageBox({
    required this.accessSettings,
    required this.deleteProtection,
    required this.id,
    required this.labels,
    required this.location,
    required this.name,
    required this.server,
    required this.snapshotPlan,
    required this.storageBoxType,
    required this.system,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings': accessSettings.toMap(),
      'deleteProtection': deleteProtection,
      'id': id,
      'labels': labels,
      'location': location,
      'name': name,
      'server': server,
      'snapshotPlan': snapshotPlan.toMap(),
      'storageBoxType': storageBoxType,
      'system': system,
      'username': username,
    };
  }

  factory GetStorageBoxesStorageBox.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxesStorageBox(
      accessSettings: GetStorageBoxesStorageBoxAccessSettings.fromMap((map['accessSettings'] as Map).cast<String, dynamic>()),
      deleteProtection: map['deleteProtection'] as bool,
      id: map['id'] as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      server: map['server'] as String,
      snapshotPlan: GetStorageBoxesStorageBoxSnapshotPlan.fromMap((map['snapshotPlan'] as Map).cast<String, dynamic>()),
      storageBoxType: map['storageBoxType'] as String,
      system: map['system'] as String,
      username: map['username'] as String,
    );
  }
}

