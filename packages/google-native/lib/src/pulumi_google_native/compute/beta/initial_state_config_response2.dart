// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'file_content_buffer_response2.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfigResponse2 {
  /// The Key Database (db).
  final List<FileContentBufferResponse2> dbs;

  /// The forbidden key database (dbx).
  final List<FileContentBufferResponse2> dbxs;

  /// The Key Exchange Key (KEK).
  final List<FileContentBufferResponse2> keks;

  /// The Platform Key (PK).
  final FileContentBufferResponse2 pk;

  InitialStateConfigResponse2({
    required this.dbs,
    required this.dbxs,
    required this.keks,
    required this.pk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbs'] =
        Input.encodeList<FileContentBufferResponse2, Map<String, dynamic>>(
            dbs, (value) => value.toMap());
    map['dbxs'] =
        Input.encodeList<FileContentBufferResponse2, Map<String, dynamic>>(
            dbxs, (value) => value.toMap());
    map['keks'] =
        Input.encodeList<FileContentBufferResponse2, Map<String, dynamic>>(
            keks, (value) => value.toMap());
    map['pk'] = pk.toMap();
    return map;
  }

  factory InitialStateConfigResponse2.fromMap(Map<String, dynamic> map) {
    return InitialStateConfigResponse2(
      dbs: Input.decodeList<FileContentBufferResponse2>(
          map['dbs'],
          (value) => FileContentBufferResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      dbxs: Input.decodeList<FileContentBufferResponse2>(
          map['dbxs'],
          (value) => FileContentBufferResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      keks: Input.decodeList<FileContentBufferResponse2>(
          map['keks'],
          (value) => FileContentBufferResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      pk: FileContentBufferResponse2.fromMap(
          (map['pk'] as Map).cast<String, dynamic>()),
    );
  }
}
