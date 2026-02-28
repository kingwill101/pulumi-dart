// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfig {
  /// The Key Database (db).
  final List<FileContentBuffer>? dbs;

  /// The forbidden key database (dbx).
  final List<FileContentBuffer>? dbxs;

  /// The Key Exchange Key (KEK).
  final List<FileContentBuffer>? keks;

  /// The Platform Key (PK).
  final FileContentBuffer? pk;

  /// Creates a new [InitialStateConfig].
  /// [dbs] The Key Database (db).
  /// [dbxs] The forbidden key database (dbx).
  /// [keks] The Key Exchange Key (KEK).
  /// [pk] The Platform Key (PK).
  InitialStateConfig({
    this.dbs,
    this.dbxs,
    this.keks,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dbsValue = dbs;
    if (dbsValue != null) {
      map['dbs'] =
          pulumi.Input.encodeList<FileContentBuffer, Map<String, dynamic>>(
              dbsValue, (value) => value.toMap());
    }
    final dbxsValue = dbxs;
    if (dbxsValue != null) {
      map['dbxs'] =
          pulumi.Input.encodeList<FileContentBuffer, Map<String, dynamic>>(
              dbxsValue, (value) => value.toMap());
    }
    final keksValue = keks;
    if (keksValue != null) {
      map['keks'] =
          pulumi.Input.encodeList<FileContentBuffer, Map<String, dynamic>>(
              keksValue, (value) => value.toMap());
    }
    final pkValue = pk;
    if (pkValue != null) {
      map['pk'] = pkValue.toMap();
    }
    return map;
  }

  factory InitialStateConfig.fromMap(Map<String, dynamic> map) {
    return InitialStateConfig(
      dbs: map['dbs'] == null
          ? null
          : pulumi.Input.decodeList<FileContentBuffer>(
              map['dbs'],
              (value) => FileContentBuffer.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dbxs: map['dbxs'] == null
          ? null
          : pulumi.Input.decodeList<FileContentBuffer>(
              map['dbxs'],
              (value) => FileContentBuffer.fromMap(
                  (value as Map).cast<String, dynamic>())),
      keks: map['keks'] == null
          ? null
          : pulumi.Input.decodeList<FileContentBuffer>(
              map['keks'],
              (value) => FileContentBuffer.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pk: map['pk'] == null
          ? null
          : FileContentBuffer.fromMap(
              (map['pk'] as Map).cast<String, dynamic>()),
    );
  }
}
