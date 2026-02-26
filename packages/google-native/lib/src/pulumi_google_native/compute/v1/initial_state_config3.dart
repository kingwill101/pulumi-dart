// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'file_content_buffer3.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfig3 {
  /// The Key Database (db).
  final List<FileContentBuffer3>? dbs;

  /// The forbidden key database (dbx).
  final List<FileContentBuffer3>? dbxs;

  /// The Key Exchange Key (KEK).
  final List<FileContentBuffer3>? keks;

  /// The Platform Key (PK).
  final FileContentBuffer3? pk;

  InitialStateConfig3({
    this.dbs,
    this.dbxs,
    this.keks,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dbsValue = dbs;
    if (dbsValue != null) {
      map['dbs'] = Input.encodeList<FileContentBuffer3, Map<String, dynamic>>(
          dbsValue, (value) => value.toMap());
    }
    final dbxsValue = dbxs;
    if (dbxsValue != null) {
      map['dbxs'] = Input.encodeList<FileContentBuffer3, Map<String, dynamic>>(
          dbxsValue, (value) => value.toMap());
    }
    final keksValue = keks;
    if (keksValue != null) {
      map['keks'] = Input.encodeList<FileContentBuffer3, Map<String, dynamic>>(
          keksValue, (value) => value.toMap());
    }
    final pkValue = pk;
    if (pkValue != null) {
      map['pk'] = pkValue.toMap();
    }
    return map;
  }

  factory InitialStateConfig3.fromMap(Map<String, dynamic> map) {
    return InitialStateConfig3(
      dbs: map['dbs'] == null
          ? null
          : Input.decodeList<FileContentBuffer3>(
              map['dbs'],
              (value) => FileContentBuffer3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dbxs: map['dbxs'] == null
          ? null
          : Input.decodeList<FileContentBuffer3>(
              map['dbxs'],
              (value) => FileContentBuffer3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      keks: map['keks'] == null
          ? null
          : Input.decodeList<FileContentBuffer3>(
              map['keks'],
              (value) => FileContentBuffer3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pk: map['pk'] == null
          ? null
          : FileContentBuffer3.fromMap(
              (map['pk'] as Map).cast<String, dynamic>()),
    );
  }
}
