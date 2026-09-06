// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uefi_key.dart';

/// Additional UEFI key signatures that will be added to the image in addition to the signature templates
class UefiKeySignatures {
  /// The database of UEFI keys for this image version.
  final pulumi.Input<List<UefiKey>?>? db;
  /// The database of revoked UEFI keys for this image version.
  final pulumi.Input<List<UefiKey>?>? dbx;
  /// The Key Encryption Keys of this image version.
  final pulumi.Input<List<UefiKey>?>? kek;
  /// The Platform Key of this image version.
  final pulumi.Input<UefiKey?>? pk;

  /// Creates a new [UefiKeySignatures].
  /// [db] The database of UEFI keys for this image version.
  /// [dbx] The database of revoked UEFI keys for this image version.
  /// [kek] The Key Encryption Keys of this image version.
  /// [pk] The Platform Key of this image version.
  const UefiKeySignatures({
    this.db,
    this.dbx,
    this.kek,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'db': ?pulumi.Input.mapOptionalInputValue<List<UefiKey>, List<Map<String, dynamic>>>(db, (value) => pulumi.Input.encodeList<UefiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbx': ?pulumi.Input.mapOptionalInputValue<List<UefiKey>, List<Map<String, dynamic>>>(dbx, (value) => pulumi.Input.encodeList<UefiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kek': ?pulumi.Input.mapOptionalInputValue<List<UefiKey>, List<Map<String, dynamic>>>(kek, (value) => pulumi.Input.encodeList<UefiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pk': ?pulumi.Input.mapOptionalInputValue<UefiKey, Map<String, dynamic>>(pk, (value) => value.toMap()),
    };
  }

  factory UefiKeySignatures.fromMap(Map<String, dynamic> map) {
    return UefiKeySignatures(
      db: (() { final guardedValue = map['db']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UefiKey>(guardedValue, (value) => UefiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dbx: (() { final guardedValue = map['dbx']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UefiKey>(guardedValue, (value) => UefiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kek: (() { final guardedValue = map['kek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UefiKey>(guardedValue, (value) => UefiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pk: (() { final guardedValue = map['pk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UefiKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
