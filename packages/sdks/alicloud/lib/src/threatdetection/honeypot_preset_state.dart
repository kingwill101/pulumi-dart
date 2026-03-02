// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'honeypot_preset_meta.dart';

/// Input properties used for looking up and filtering HoneypotPreset resources.
class HoneypotPresetState {
  /// Honeypot mirror name
  final pulumi.Input<String>? honeypotImageName;
  /// Unique ID of honeypot Template
  final pulumi.Input<String>? honeypotPresetId;
  /// Honeypot template custom parameters. See `meta` below.
  final pulumi.Input<HoneypotPresetMeta>? meta;
  /// Unique id of management node
  final pulumi.Input<String>? nodeId;
  /// Honeypot template custom name
  final pulumi.Input<String>? presetName;

  /// Creates a new [HoneypotPresetState].
  /// [honeypotImageName] Honeypot mirror name
  /// [honeypotPresetId] Unique ID of honeypot Template
  /// [meta] Honeypot template custom parameters. See `meta` below.
  /// [nodeId] Unique id of management node
  /// [presetName] Honeypot template custom name
  HoneypotPresetState({
    this.honeypotImageName,
    this.honeypotPresetId,
    this.meta,
    this.nodeId,
    this.presetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'honeypotImageName': ?honeypotImageName,
      'honeypotPresetId': ?honeypotPresetId,
      'meta': ?pulumi.Input.mapOptionalInputValue<HoneypotPresetMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'nodeId': ?nodeId,
      'presetName': ?presetName,
    };
  }

  factory HoneypotPresetState.fromMap(Map<String, dynamic> map) {
    return HoneypotPresetState(
      honeypotImageName: map['honeypotImageName'] == null ? null : (map['honeypotImageName']! as String).input(),
      honeypotPresetId: map['honeypotPresetId'] == null ? null : (map['honeypotPresetId']! as String).input(),
      meta: map['meta'] == null ? null : (HoneypotPresetMeta.fromMap((map['meta']! as Map).cast<String, dynamic>())).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId']! as String).input(),
      presetName: map['presetName'] == null ? null : (map['presetName']! as String).input(),
    );
  }
}

