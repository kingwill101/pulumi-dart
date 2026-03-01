// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer_response_compute_v1.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfigResponseComputeV1 {
  /// The Key Database (db).
  final List<FileContentBufferResponseComputeV1> dbs;

  /// The forbidden key database (dbx).
  final List<FileContentBufferResponseComputeV1> dbxs;

  /// The Key Exchange Key (KEK).
  final List<FileContentBufferResponseComputeV1> keks;

  /// The Platform Key (PK).
  final FileContentBufferResponseComputeV1 pk;

  /// Creates a new [InitialStateConfigResponseComputeV1].
  /// [dbs] The Key Database (db).
  /// [dbxs] The forbidden key database (dbx).
  /// [keks] The Key Exchange Key (KEK).
  /// [pk] The Platform Key (PK).
  InitialStateConfigResponseComputeV1({
    required this.dbs,
    required this.dbxs,
    required this.keks,
    required this.pk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbs':
          pulumi.Input.encodeList<
            FileContentBufferResponseComputeV1,
            Map<String, dynamic>
          >(dbs, (value) => value.toMap()),
      'dbxs':
          pulumi.Input.encodeList<
            FileContentBufferResponseComputeV1,
            Map<String, dynamic>
          >(dbxs, (value) => value.toMap()),
      'keks':
          pulumi.Input.encodeList<
            FileContentBufferResponseComputeV1,
            Map<String, dynamic>
          >(keks, (value) => value.toMap()),
      'pk': pk.toMap(),
    };
  }

  factory InitialStateConfigResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return InitialStateConfigResponseComputeV1(
      dbs: pulumi.Input.decodeList<FileContentBufferResponseComputeV1>(
        map['dbs'],
        (value) => FileContentBufferResponseComputeV1.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      dbxs: pulumi.Input.decodeList<FileContentBufferResponseComputeV1>(
        map['dbxs'],
        (value) => FileContentBufferResponseComputeV1.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      keks: pulumi.Input.decodeList<FileContentBufferResponseComputeV1>(
        map['keks'],
        (value) => FileContentBufferResponseComputeV1.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      pk: FileContentBufferResponseComputeV1.fromMap(
        (map['pk'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
