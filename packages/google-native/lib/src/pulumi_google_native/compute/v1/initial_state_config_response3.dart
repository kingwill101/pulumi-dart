// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'file_content_buffer_response3.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfigResponse3 {
  /// The Key Database (db).
  final List<FileContentBufferResponse3> dbs;

  /// The forbidden key database (dbx).
  final List<FileContentBufferResponse3> dbxs;

  /// The Key Exchange Key (KEK).
  final List<FileContentBufferResponse3> keks;

  /// The Platform Key (PK).
  final FileContentBufferResponse3 pk;

  InitialStateConfigResponse3({
    required this.dbs,
    required this.dbxs,
    required this.keks,
    required this.pk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbs'] =
        Input.encodeList<FileContentBufferResponse3, Map<String, dynamic>>(
            dbs, (value) => value.toMap());
    map['dbxs'] =
        Input.encodeList<FileContentBufferResponse3, Map<String, dynamic>>(
            dbxs, (value) => value.toMap());
    map['keks'] =
        Input.encodeList<FileContentBufferResponse3, Map<String, dynamic>>(
            keks, (value) => value.toMap());
    map['pk'] = pk.toMap();
    return map;
  }

  factory InitialStateConfigResponse3.fromMap(Map<String, dynamic> map) {
    return InitialStateConfigResponse3(
      dbs: Input.decodeList<FileContentBufferResponse3>(
          map['dbs'],
          (value) => FileContentBufferResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      dbxs: Input.decodeList<FileContentBufferResponse3>(
          map['dbxs'],
          (value) => FileContentBufferResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      keks: Input.decodeList<FileContentBufferResponse3>(
          map['keks'],
          (value) => FileContentBufferResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      pk: FileContentBufferResponse3.fromMap(
          (map['pk'] as Map).cast<String, dynamic>()),
    );
  }
}
