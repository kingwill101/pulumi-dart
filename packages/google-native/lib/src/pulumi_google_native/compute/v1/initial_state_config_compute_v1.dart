// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer_compute_v1.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfigComputeV1 {
  /// The Key Database (db).
  final List<FileContentBufferComputeV1>? dbs;

  /// The forbidden key database (dbx).
  final List<FileContentBufferComputeV1>? dbxs;

  /// The Key Exchange Key (KEK).
  final List<FileContentBufferComputeV1>? keks;

  /// The Platform Key (PK).
  final FileContentBufferComputeV1? pk;

  InitialStateConfigComputeV1({
    this.dbs,
    this.dbxs,
    this.keks,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dbsValue = dbs;
    if (dbsValue != null) {
      map['dbs'] = pulumi.Input.encodeList<FileContentBufferComputeV1,
          Map<String, dynamic>>(dbsValue, (value) => value.toMap());
    }
    final dbxsValue = dbxs;
    if (dbxsValue != null) {
      map['dbxs'] = pulumi.Input.encodeList<FileContentBufferComputeV1,
          Map<String, dynamic>>(dbxsValue, (value) => value.toMap());
    }
    final keksValue = keks;
    if (keksValue != null) {
      map['keks'] = pulumi.Input.encodeList<FileContentBufferComputeV1,
          Map<String, dynamic>>(keksValue, (value) => value.toMap());
    }
    final pkValue = pk;
    if (pkValue != null) {
      map['pk'] = pkValue.toMap();
    }
    return map;
  }

  factory InitialStateConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return InitialStateConfigComputeV1(
      dbs: map['dbs'] == null
          ? null
          : pulumi.Input.decodeList<FileContentBufferComputeV1>(
              map['dbs'],
              (value) => FileContentBufferComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dbxs: map['dbxs'] == null
          ? null
          : pulumi.Input.decodeList<FileContentBufferComputeV1>(
              map['dbxs'],
              (value) => FileContentBufferComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      keks: map['keks'] == null
          ? null
          : pulumi.Input.decodeList<FileContentBufferComputeV1>(
              map['keks'],
              (value) => FileContentBufferComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pk: map['pk'] == null
          ? null
          : FileContentBufferComputeV1.fromMap(
              (map['pk'] as Map).cast<String, dynamic>()),
    );
  }
}
