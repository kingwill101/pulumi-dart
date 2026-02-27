// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer_response_compute_beta.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfigResponseComputeBeta {
  /// The Key Database (db).
  final List<FileContentBufferResponseComputeBeta> dbs;

  /// The forbidden key database (dbx).
  final List<FileContentBufferResponseComputeBeta> dbxs;

  /// The Key Exchange Key (KEK).
  final List<FileContentBufferResponseComputeBeta> keks;

  /// The Platform Key (PK).
  final FileContentBufferResponseComputeBeta pk;

  InitialStateConfigResponseComputeBeta({
    required this.dbs,
    required this.dbxs,
    required this.keks,
    required this.pk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbs'] = pulumi.Input.encodeList<FileContentBufferResponseComputeBeta,
        Map<String, dynamic>>(dbs, (value) => value.toMap());
    map['dbxs'] = pulumi.Input.encodeList<FileContentBufferResponseComputeBeta,
        Map<String, dynamic>>(dbxs, (value) => value.toMap());
    map['keks'] = pulumi.Input.encodeList<FileContentBufferResponseComputeBeta,
        Map<String, dynamic>>(keks, (value) => value.toMap());
    map['pk'] = pk.toMap();
    return map;
  }

  factory InitialStateConfigResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return InitialStateConfigResponseComputeBeta(
      dbs: pulumi.Input.decodeList<FileContentBufferResponseComputeBeta>(
          map['dbs'],
          (value) => FileContentBufferResponseComputeBeta.fromMap(
              (value as Map).cast<String, dynamic>())),
      dbxs: pulumi.Input.decodeList<FileContentBufferResponseComputeBeta>(
          map['dbxs'],
          (value) => FileContentBufferResponseComputeBeta.fromMap(
              (value as Map).cast<String, dynamic>())),
      keks: pulumi.Input.decodeList<FileContentBufferResponseComputeBeta>(
          map['keks'],
          (value) => FileContentBufferResponseComputeBeta.fromMap(
              (value as Map).cast<String, dynamic>())),
      pk: FileContentBufferResponseComputeBeta.fromMap(
          (map['pk'] as Map).cast<String, dynamic>()),
    );
  }
}
