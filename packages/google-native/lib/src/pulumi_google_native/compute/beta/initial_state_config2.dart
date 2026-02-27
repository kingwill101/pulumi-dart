// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'file_content_buffer2.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfig2 {
  /// The Key Database (db).
  final List<FileContentBuffer2>? dbs;

  /// The forbidden key database (dbx).
  final List<FileContentBuffer2>? dbxs;

  /// The Key Exchange Key (KEK).
  final List<FileContentBuffer2>? keks;

  /// The Platform Key (PK).
  final FileContentBuffer2? pk;

  InitialStateConfig2({
    this.dbs,
    this.dbxs,
    this.keks,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dbsValue = dbs;
    if (dbsValue != null) {
      map['dbs'] = Input.encodeList<FileContentBuffer2, Map<String, dynamic>>(
          dbsValue, (value) => value.toMap());
    }
    final dbxsValue = dbxs;
    if (dbxsValue != null) {
      map['dbxs'] = Input.encodeList<FileContentBuffer2, Map<String, dynamic>>(
          dbxsValue, (value) => value.toMap());
    }
    final keksValue = keks;
    if (keksValue != null) {
      map['keks'] = Input.encodeList<FileContentBuffer2, Map<String, dynamic>>(
          keksValue, (value) => value.toMap());
    }
    final pkValue = pk;
    if (pkValue != null) {
      map['pk'] = pkValue.toMap();
    }
    return map;
  }

  factory InitialStateConfig2.fromMap(Map<String, dynamic> map) {
    return InitialStateConfig2(
      dbs: map['dbs'] == null
          ? null
          : Input.decodeList<FileContentBuffer2>(
              map['dbs'],
              (value) => FileContentBuffer2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dbxs: map['dbxs'] == null
          ? null
          : Input.decodeList<FileContentBuffer2>(
              map['dbxs'],
              (value) => FileContentBuffer2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      keks: map['keks'] == null
          ? null
          : Input.decodeList<FileContentBuffer2>(
              map['keks'],
              (value) => FileContentBuffer2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pk: map['pk'] == null
          ? null
          : FileContentBuffer2.fromMap(
              (map['pk'] as Map).cast<String, dynamic>()),
    );
  }
}
