// ignore_for_file: unused_element, unnecessary_cast

import 'get_storage_box_subaccounts_subaccount_access_settings.dart';

class GetStorageBoxSubaccountsSubaccount {
  /// Access settings for the Subaccount.
  final GetStorageBoxSubaccountsSubaccountAccessSettings accessSettings;
  /// Description of the Storage Box Subaccount.
  final String description;
  /// Home directory of the Storage Box Subaccount.
  final String homeDirectory;
  /// ID of the Storage Box Subaccount.
  final int id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String> labels;
  /// Name of the Storage Box Subaccount.
  final String name;
  /// FQDN of the Storage Box Subaccount.
  final String server;
  /// ID of the Storage Box.
  final int storageBoxId;
  /// Username of the Storage Box Subaccount.
  final String username;

  /// Creates a new [GetStorageBoxSubaccountsSubaccount].
  /// [accessSettings] Access settings for the Subaccount.
  /// [description] Description of the Storage Box Subaccount.
  /// [homeDirectory] Home directory of the Storage Box Subaccount.
  /// [id] ID of the Storage Box Subaccount.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the Storage Box Subaccount.
  /// [server] FQDN of the Storage Box Subaccount.
  /// [storageBoxId] ID of the Storage Box.
  /// [username] Username of the Storage Box Subaccount.
  GetStorageBoxSubaccountsSubaccount({
    required this.accessSettings,
    required this.description,
    required this.homeDirectory,
    required this.id,
    required this.labels,
    required this.name,
    required this.server,
    required this.storageBoxId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings': accessSettings.toMap(),
      'description': description,
      'homeDirectory': homeDirectory,
      'id': id,
      'labels': labels,
      'name': name,
      'server': server,
      'storageBoxId': storageBoxId,
      'username': username,
    };
  }

  factory GetStorageBoxSubaccountsSubaccount.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSubaccountsSubaccount(
      accessSettings: GetStorageBoxSubaccountsSubaccountAccessSettings.fromMap((map['accessSettings'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      homeDirectory: map['homeDirectory'] as String,
      id: map['id'] as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      server: map['server'] as String,
      storageBoxId: map['storageBoxId'] as int,
      username: map['username'] as String,
    );
  }
}

