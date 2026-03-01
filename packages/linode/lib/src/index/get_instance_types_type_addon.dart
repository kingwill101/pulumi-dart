// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_type_addon_backup.dart';

class GetInstanceTypesTypeAddon {
  final List<GetInstanceTypesTypeAddonBackup> backups;

  /// Creates a new [GetInstanceTypesTypeAddon].
  /// [backups] Required.
  GetInstanceTypesTypeAddon({
    required this.backups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backups': pulumi.Input.encodeList<GetInstanceTypesTypeAddonBackup, Map<String, dynamic>>(backups, (value) => value.toMap()),
    };
  }

  factory GetInstanceTypesTypeAddon.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesTypeAddon(
      backups: pulumi.Input.decodeList<GetInstanceTypesTypeAddonBackup>(map['backups'], (value) => GetInstanceTypesTypeAddonBackup.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

