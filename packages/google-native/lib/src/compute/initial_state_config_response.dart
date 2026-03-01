// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer_response.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfigResponse {
  /// The Key Database (db).
  final List<FileContentBufferResponse> dbs;

  /// The forbidden key database (dbx).
  final List<FileContentBufferResponse> dbxs;

  /// The Key Exchange Key (KEK).
  final List<FileContentBufferResponse> keks;

  /// The Platform Key (PK).
  final FileContentBufferResponse pk;

  /// Creates a new [InitialStateConfigResponse].
  /// [dbs] The Key Database (db).
  /// [dbxs] The forbidden key database (dbx).
  /// [keks] The Key Exchange Key (KEK).
  /// [pk] The Platform Key (PK).
  InitialStateConfigResponse({
    required this.dbs,
    required this.dbxs,
    required this.keks,
    required this.pk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbs':
          pulumi.Input.encodeList<
            FileContentBufferResponse,
            Map<String, dynamic>
          >(dbs, (value) => value.toMap()),
      'dbxs':
          pulumi.Input.encodeList<
            FileContentBufferResponse,
            Map<String, dynamic>
          >(dbxs, (value) => value.toMap()),
      'keks':
          pulumi.Input.encodeList<
            FileContentBufferResponse,
            Map<String, dynamic>
          >(keks, (value) => value.toMap()),
      'pk': pk.toMap(),
    };
  }

  factory InitialStateConfigResponse.fromMap(Map<String, dynamic> map) {
    return InitialStateConfigResponse(
      dbs: pulumi.Input.decodeList<FileContentBufferResponse>(
        map['dbs'],
        (value) => FileContentBufferResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      dbxs: pulumi.Input.decodeList<FileContentBufferResponse>(
        map['dbxs'],
        (value) => FileContentBufferResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      keks: pulumi.Input.decodeList<FileContentBufferResponse>(
        map['keks'],
        (value) => FileContentBufferResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      pk: FileContentBufferResponse.fromMap(
        (map['pk'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
