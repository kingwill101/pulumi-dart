// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiJobJobSettingsDdlHandlingSetting {
  final pulumi.Input<String>? action;
  /// DDL type, optional enumeration value:
  ///
  /// RenameColumn (rename column)
  ///
  /// ModifyColumn (rename column)
  ///
  /// CreateTable (Rename Column)
  ///
  /// TruncateTable (empty table)
  ///
  /// DropTable (delete table)
  final pulumi.Input<String>? type;

  /// Creates a new [DiJobJobSettingsDdlHandlingSetting].
  /// [action] Optional.
  /// [type] DDL type, optional enumeration value:
  DiJobJobSettingsDdlHandlingSetting({
    this.action,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'type': ?type,
    };
  }

  factory DiJobJobSettingsDdlHandlingSetting.fromMap(Map<String, dynamic> map) {
    return DiJobJobSettingsDdlHandlingSetting(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

