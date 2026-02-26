// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../image_shielded_instance_initial_state_db/image_shielded_instance_initial_state_db.dart';
import '../image_shielded_instance_initial_state_dbx/image_shielded_instance_initial_state_dbx.dart';
import '../image_shielded_instance_initial_state_kek/image_shielded_instance_initial_state_kek.dart';
import '../image_shielded_instance_initial_state_pk/image_shielded_instance_initial_state_pk.dart';

class ImageShieldedInstanceInitialState {
  /// The Key Database (db).
  /// Structure is documented below.
  final List<ImageShieldedInstanceInitialStateDb>? dbs;

  /// The forbidden key database (dbx).
  /// Structure is documented below.
  final List<ImageShieldedInstanceInitialStateDbx>? dbxs;

  /// The Key Exchange Key (KEK).
  /// Structure is documented below.
  final List<ImageShieldedInstanceInitialStateKek>? keks;

  /// The Platform Key (PK).
  /// Structure is documented below.
  final ImageShieldedInstanceInitialStatePk? pk;

  ImageShieldedInstanceInitialState({
    this.dbs,
    this.dbxs,
    this.keks,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dbsValue = dbs;
    if (dbsValue != null) {
      map['dbs'] = Input.encodeList<ImageShieldedInstanceInitialStateDb,
          Map<String, dynamic>>(dbsValue, (value) => value.toMap());
    }
    final dbxsValue = dbxs;
    if (dbxsValue != null) {
      map['dbxs'] = Input.encodeList<ImageShieldedInstanceInitialStateDbx,
          Map<String, dynamic>>(dbxsValue, (value) => value.toMap());
    }
    final keksValue = keks;
    if (keksValue != null) {
      map['keks'] = Input.encodeList<ImageShieldedInstanceInitialStateKek,
          Map<String, dynamic>>(keksValue, (value) => value.toMap());
    }
    final pkValue = pk;
    if (pkValue != null) {
      map['pk'] = pkValue.toMap();
    }
    return map;
  }

  factory ImageShieldedInstanceInitialState.fromMap(Map<String, dynamic> map) {
    return ImageShieldedInstanceInitialState(
      dbs: map['dbs'] == null
          ? null
          : Input.decodeList<ImageShieldedInstanceInitialStateDb>(
              map['dbs'],
              (value) => ImageShieldedInstanceInitialStateDb.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dbxs: map['dbxs'] == null
          ? null
          : Input.decodeList<ImageShieldedInstanceInitialStateDbx>(
              map['dbxs'],
              (value) => ImageShieldedInstanceInitialStateDbx.fromMap(
                  (value as Map).cast<String, dynamic>())),
      keks: map['keks'] == null
          ? null
          : Input.decodeList<ImageShieldedInstanceInitialStateKek>(
              map['keks'],
              (value) => ImageShieldedInstanceInitialStateKek.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pk: map['pk'] == null
          ? null
          : ImageShieldedInstanceInitialStatePk.fromMap(
              (map['pk'] as Map).cast<String, dynamic>()),
    );
  }
}
