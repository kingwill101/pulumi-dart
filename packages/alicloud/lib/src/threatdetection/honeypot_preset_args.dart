// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'honeypot_preset_meta.dart';

/// {@template pulumi_threatdetection_honeypot_preset_honeypot_preset_args_doc}
/// The set of arguments for HoneypotPreset.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_honeypot_preset_honeypot_preset_args_doc}
class HoneypotPresetArgs {
  /// Honeypot mirror name
  final pulumi.Input<String> honeypotImageName;
  /// Honeypot template custom parameters. See `meta` below.
  final pulumi.Input<HoneypotPresetMeta> meta;
  /// Unique id of management node
  final pulumi.Input<String> nodeId;
  /// Honeypot template custom name
  final pulumi.Input<String> presetName;

  /// Creates a new [HoneypotPresetArgs].
  /// [honeypotImageName] Honeypot mirror name
  /// [meta] Honeypot template custom parameters. See `meta` below.
  /// [nodeId] Unique id of management node
  /// [presetName] Honeypot template custom name
  HoneypotPresetArgs({
    required String honeypotImageName,
    required HoneypotPresetMeta meta,
    required String nodeId,
    required String presetName,
  }) :
      honeypotImageName = pulumi.Input.asInput<String>(honeypotImageName),
      meta = pulumi.Input.asInput<HoneypotPresetMeta>(meta),
      nodeId = pulumi.Input.asInput<String>(nodeId),
      presetName = pulumi.Input.asInput<String>(presetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'honeypotImageName': honeypotImageName,
      'meta': pulumi.Input.mapInputValue<HoneypotPresetMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'nodeId': nodeId,
      'presetName': presetName,
    };
  }

  factory HoneypotPresetArgs.fromMap(Map<String, dynamic> map) {
    return HoneypotPresetArgs(
      honeypotImageName: map['honeypotImageName'] as String,
      meta: HoneypotPresetMeta.fromMap((map['meta'] as Map).cast<String, dynamic>()),
      nodeId: map['nodeId'] as String,
      presetName: map['presetName'] as String,
    );
  }
}

