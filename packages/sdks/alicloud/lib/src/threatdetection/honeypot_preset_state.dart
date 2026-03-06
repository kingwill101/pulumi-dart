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
  const HoneypotPresetState({
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
      honeypotImageName: (() { final guardedValue = map['honeypotImageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      honeypotPresetId: (() { final guardedValue = map['honeypotPresetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HoneypotPresetMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      presetName: (() { final guardedValue = map['presetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

