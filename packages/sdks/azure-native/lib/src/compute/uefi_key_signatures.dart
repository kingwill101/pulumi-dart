// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uefi_key.dart';

/// Additional UEFI key signatures that will be added to the image in addition to the signature templates
class UefiKeySignatures {
  /// The database of UEFI keys for this image version.
  final List<UefiKey>? db;
  /// The database of revoked UEFI keys for this image version.
  final List<UefiKey>? dbx;
  /// The Key Encryption Keys of this image version.
  final List<UefiKey>? kek;
  /// The Platform Key of this image version.
  final UefiKey? pk;

  /// Creates a new [UefiKeySignatures].
  /// [db] The database of UEFI keys for this image version.
  /// [dbx] The database of revoked UEFI keys for this image version.
  /// [kek] The Key Encryption Keys of this image version.
  /// [pk] The Platform Key of this image version.
  UefiKeySignatures({
    this.db,
    this.dbx,
    this.kek,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'db': ?db == null ? null : pulumi.Input.encodeList<UefiKey, Map<String, dynamic>>(db!, (value) => value.toMap()),
      'dbx': ?dbx == null ? null : pulumi.Input.encodeList<UefiKey, Map<String, dynamic>>(dbx!, (value) => value.toMap()),
      'kek': ?kek == null ? null : pulumi.Input.encodeList<UefiKey, Map<String, dynamic>>(kek!, (value) => value.toMap()),
      'pk': ?pk == null ? null : pk!.toMap(),
    };
  }

  factory UefiKeySignatures.fromMap(Map<String, dynamic> map) {
    return UefiKeySignatures(
      db: map['db'] == null ? null : pulumi.Input.decodeList<UefiKey>(map['db'], (value) => UefiKey.fromMap((value as Map).cast<String, dynamic>())),
      dbx: map['dbx'] == null ? null : pulumi.Input.decodeList<UefiKey>(map['dbx'], (value) => UefiKey.fromMap((value as Map).cast<String, dynamic>())),
      kek: map['kek'] == null ? null : pulumi.Input.decodeList<UefiKey>(map['kek'], (value) => UefiKey.fromMap((value as Map).cast<String, dynamic>())),
      pk: map['pk'] == null ? null : UefiKey.fromMap((map['pk'] as Map).cast<String, dynamic>()),
    );
  }
}

