// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uefi_key_response.dart';

/// Additional UEFI key signatures that will be added to the image in addition to the signature templates
class UefiKeySignaturesResponse {
  /// The database of UEFI keys for this image version.
  final pulumi.Input<List<UefiKeyResponse>>? db;
  /// The database of revoked UEFI keys for this image version.
  final pulumi.Input<List<UefiKeyResponse>>? dbx;
  /// The Key Encryption Keys of this image version.
  final pulumi.Input<List<UefiKeyResponse>>? kek;
  /// The Platform Key of this image version.
  final pulumi.Input<UefiKeyResponse>? pk;

  /// Creates a new [UefiKeySignaturesResponse].
  /// [db] The database of UEFI keys for this image version.
  /// [dbx] The database of revoked UEFI keys for this image version.
  /// [kek] The Key Encryption Keys of this image version.
  /// [pk] The Platform Key of this image version.
  UefiKeySignaturesResponse({
    this.db,
    this.dbx,
    this.kek,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'db': ?pulumi.Input.mapOptionalInputValue<List<UefiKeyResponse>, List<Map<String, dynamic>>>(db, (value) => pulumi.Input.encodeList<UefiKeyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbx': ?pulumi.Input.mapOptionalInputValue<List<UefiKeyResponse>, List<Map<String, dynamic>>>(dbx, (value) => pulumi.Input.encodeList<UefiKeyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kek': ?pulumi.Input.mapOptionalInputValue<List<UefiKeyResponse>, List<Map<String, dynamic>>>(kek, (value) => pulumi.Input.encodeList<UefiKeyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pk': ?pulumi.Input.mapOptionalInputValue<UefiKeyResponse, Map<String, dynamic>>(pk, (value) => value.toMap()),
    };
  }

  factory UefiKeySignaturesResponse.fromMap(Map<String, dynamic> map) {
    return UefiKeySignaturesResponse(
      db: map['db'] == null ? null : (pulumi.Input.decodeList<UefiKeyResponse>(map['db']!, (value) => UefiKeyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dbx: map['dbx'] == null ? null : (pulumi.Input.decodeList<UefiKeyResponse>(map['dbx']!, (value) => UefiKeyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kek: map['kek'] == null ? null : (pulumi.Input.decodeList<UefiKeyResponse>(map['kek']!, (value) => UefiKeyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pk: map['pk'] == null ? null : (UefiKeyResponse.fromMap((map['pk']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

