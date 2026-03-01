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

  /// Creates a new [InitialStateConfigComputeBeta].
  /// [dbs] The Key Database (db).
  /// [dbxs] The forbidden key database (dbx).
  /// [keks] The Key Exchange Key (KEK).
  /// [pk] The Platform Key (PK).
  InitialStateConfigComputeBeta({this.dbs, this.dbxs, this.keks, this.pk});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbs': ?dbs == null
          ? null
          : pulumi.Input.encodeList<
              FileContentBufferComputeBeta,
              Map<String, dynamic>
            >(dbs!, (value) => value.toMap()),
      'dbxs': ?dbxs == null
          ? null
          : pulumi.Input.encodeList<
              FileContentBufferComputeBeta,
              Map<String, dynamic>
            >(dbxs!, (value) => value.toMap()),
      'keks': ?keks == null
          ? null
          : pulumi.Input.encodeList<
              FileContentBufferComputeBeta,
              Map<String, dynamic>
            >(keks!, (value) => value.toMap()),
      'pk': ?pk == null ? null : pk!.toMap(),
    };
  }

  factory InitialStateConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return InitialStateConfigComputeBeta(
      dbs: map['dbs'] == null
          ? null
          : pulumi.Input.decodeList<FileContentBufferComputeBeta>(
              map['dbs'],
              (value) => FileContentBufferComputeBeta.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      dbxs: map['dbxs'] == null
          ? null
          : pulumi.Input.decodeList<FileContentBufferComputeBeta>(
              map['dbxs'],
              (value) => FileContentBufferComputeBeta.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      keks: map['keks'] == null
          ? null
          : pulumi.Input.decodeList<FileContentBufferComputeBeta>(
              map['keks'],
              (value) => FileContentBufferComputeBeta.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      pk: map['pk'] == null
          ? null
          : FileContentBufferComputeBeta.fromMap(
              (map['pk'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
