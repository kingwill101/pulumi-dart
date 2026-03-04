// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_honeypot_presets_preset_meta.dart';

class GetHoneypotPresetsPreset {
  /// Honeypot mirror name
  final pulumi.Input<String> honeypotImageName;

  /// Unique ID of honeypot Template.
  final pulumi.Input<String> honeypotPresetId;

  /// The id of the Honeypot template.
  final pulumi.Input<String> id;

  /// Honeypot template custom parameters.
  final pulumi.Input<List<GetHoneypotPresetsPresetMeta>> metas;

  /// Unique id of management node
  final pulumi.Input<String> nodeId;

  /// Honeypot template custom name
  final pulumi.Input<String> presetName;

  /// Creates a new [GetHoneypotPresetsPreset].
  /// [honeypotImageName] Honeypot mirror name
  /// [honeypotPresetId] Unique ID of honeypot Template.
  /// [id] The id of the Honeypot template.
  /// [metas] Honeypot template custom parameters.
  /// [nodeId] Unique id of management node
  /// [presetName] Honeypot template custom name
  GetHoneypotPresetsPreset({
    required this.honeypotImageName,
    required this.honeypotPresetId,
    required this.id,
    required this.metas,
    required this.nodeId,
    required this.presetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'honeypotImageName': honeypotImageName,
      'honeypotPresetId': honeypotPresetId,
      'id': id,
      'metas':
          pulumi.Input.mapInputValue<
            List<GetHoneypotPresetsPresetMeta>,
            List<Map<String, dynamic>>
          >(
            metas,
            (value) =>
                pulumi.Input.encodeList<
                  GetHoneypotPresetsPresetMeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'nodeId': nodeId,
      'presetName': presetName,
    };
  }

  factory GetHoneypotPresetsPreset.fromMap(Map<String, dynamic> map) {
    return GetHoneypotPresetsPreset(
      honeypotImageName: pulumi.Input.fromValue(
        map['honeypotImageName'] as String,
      ),
      honeypotPresetId: pulumi.Input.fromValue(
        map['honeypotPresetId'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      metas: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetHoneypotPresetsPresetMeta>(
          map['metas']!,
          (value) => GetHoneypotPresetsPresetMeta.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      nodeId: pulumi.Input.fromValue(map['nodeId'] as String),
      presetName: pulumi.Input.fromValue(map['presetName'] as String),
    );
  }
}
