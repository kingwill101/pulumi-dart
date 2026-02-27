// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer_compute_beta.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfigComputeBeta {
  /// The Key Database (db).
  final List<FileContentBufferComputeBeta>? dbs;

  /// The forbidden key database (dbx).
  final List<FileContentBufferComputeBeta>? dbxs;

  /// The Key Exchange Key (KEK).
  final List<FileContentBufferComputeBeta>? keks;

  /// The Platform Key (PK).
  final FileContentBufferComputeBeta? pk;

  InitialStateConfigComputeBeta({
    this.dbs,
    this.dbxs,
    this.keks,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dbsValue = dbs;
    if (dbsValue != null) {
      map['dbs'] = pulumi.Input.encodeList<FileContentBufferComputeBeta,
          Map<String, dynamic>>(dbsValue, (value) => value.toMap());
    }
    final dbxsValue = dbxs;
    if (dbxsValue != null) {
      map['dbxs'] = pulumi.Input.encodeList<FileContentBufferComputeBeta,
          Map<String, dynamic>>(dbxsValue, (value) => value.toMap());
    }
    final keksValue = keks;
    if (keksValue != null) {
      map['keks'] = pulumi.Input.encodeList<FileContentBufferComputeBeta,
          Map<String, dynamic>>(keksValue, (value) => value.toMap());
    }
    final pkValue = pk;
    if (pkValue != null) {
      map['pk'] = pkValue.toMap();
    }
    return map;
  }

  factory InitialStateConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return InitialStateConfigComputeBeta(
      dbs: map['dbs'] == null
          ? null
          : pulumi.Input.decodeList<FileContentBufferComputeBeta>(
              map['dbs'],
              (value) => FileContentBufferComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dbxs: map['dbxs'] == null
          ? null
          : pulumi.Input.decodeList<FileContentBufferComputeBeta>(
              map['dbxs'],
              (value) => FileContentBufferComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      keks: map['keks'] == null
          ? null
          : pulumi.Input.decodeList<FileContentBufferComputeBeta>(
              map['keks'],
              (value) => FileContentBufferComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pk: map['pk'] == null
          ? null
          : FileContentBufferComputeBeta.fromMap(
              (map['pk'] as Map).cast<String, dynamic>()),
    );
  }
}
