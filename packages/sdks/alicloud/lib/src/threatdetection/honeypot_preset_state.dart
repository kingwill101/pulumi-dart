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
    pulumi.Output<String>? honeypotImageName,
    pulumi.Output<String>? honeypotPresetId,
    pulumi.Output<HoneypotPresetMeta>? meta,
    pulumi.Output<String>? nodeId,
    pulumi.Output<String>? presetName,
  }) :
      honeypotImageName = pulumi.Input.asOptionalInput<String>(honeypotImageName),
      honeypotPresetId = pulumi.Input.asOptionalInput<String>(honeypotPresetId),
      meta = pulumi.Input.asOptionalInput<HoneypotPresetMeta>(meta),
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
      presetName = pulumi.Input.asOptionalInput<String>(presetName);

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
      honeypotImageName: map['honeypotImageName'] == null ? null : pulumi.Output.create<String>(map['honeypotImageName'] as String),
      honeypotPresetId: map['honeypotPresetId'] == null ? null : pulumi.Output.create<String>(map['honeypotPresetId'] as String),
      meta: map['meta'] == null ? null : pulumi.Output.create<HoneypotPresetMeta>(HoneypotPresetMeta.fromMap((map['meta'] as Map).cast<String, dynamic>())),
      nodeId: map['nodeId'] == null ? null : pulumi.Output.create<String>(map['nodeId'] as String),
      presetName: map['presetName'] == null ? null : pulumi.Output.create<String>(map['presetName'] as String),
    );
  }
}

