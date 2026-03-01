// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_shielded_instance_initial_state_db.dart';
import 'image_shielded_instance_initial_state_dbx.dart';
import 'image_shielded_instance_initial_state_kek.dart';
import 'image_shielded_instance_initial_state_pk.dart';

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

  /// Creates a new [ImageShieldedInstanceInitialState].
  /// [dbs] The Key Database (db).
  /// [dbxs] The forbidden key database (dbx).
  /// [keks] The Key Exchange Key (KEK).
  /// [pk] The Platform Key (PK).
  ImageShieldedInstanceInitialState({
    this.dbs,
    this.dbxs,
    this.keks,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbs': ?dbs == null ? null : pulumi.Input.encodeList<ImageShieldedInstanceInitialStateDb, Map<String, dynamic>>(dbs!, (value) => value.toMap()),
      'dbxs': ?dbxs == null ? null : pulumi.Input.encodeList<ImageShieldedInstanceInitialStateDbx, Map<String, dynamic>>(dbxs!, (value) => value.toMap()),
      'keks': ?keks == null ? null : pulumi.Input.encodeList<ImageShieldedInstanceInitialStateKek, Map<String, dynamic>>(keks!, (value) => value.toMap()),
      'pk': ?pk == null ? null : pk!.toMap(),
    };
  }

  factory ImageShieldedInstanceInitialState.fromMap(Map<String, dynamic> map) {
    return ImageShieldedInstanceInitialState(
      dbs: map['dbs'] == null ? null : pulumi.Input.decodeList<ImageShieldedInstanceInitialStateDb>(map['dbs'], (value) => ImageShieldedInstanceInitialStateDb.fromMap((value as Map).cast<String, dynamic>())),
      dbxs: map['dbxs'] == null ? null : pulumi.Input.decodeList<ImageShieldedInstanceInitialStateDbx>(map['dbxs'], (value) => ImageShieldedInstanceInitialStateDbx.fromMap((value as Map).cast<String, dynamic>())),
      keks: map['keks'] == null ? null : pulumi.Input.decodeList<ImageShieldedInstanceInitialStateKek>(map['keks'], (value) => ImageShieldedInstanceInitialStateKek.fromMap((value as Map).cast<String, dynamic>())),
      pk: map['pk'] == null ? null : ImageShieldedInstanceInitialStatePk.fromMap((map['pk'] as Map).cast<String, dynamic>()),
    );
  }
}

