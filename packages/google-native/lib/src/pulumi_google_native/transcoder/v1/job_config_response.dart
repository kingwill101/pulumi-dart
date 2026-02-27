// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ad_break_response.dart';
import 'edit_atom_response.dart';
import 'elementary_stream_response.dart';
import 'encryption_response.dart';
import 'input_response.dart';
import 'manifest_response.dart';
import 'mux_stream_response.dart';
import 'output_response.dart';
import 'overlay_response.dart';
import 'pubsub_destination_response_transcoder_v1.dart';
import 'sprite_sheet_response.dart';

/// Job configuration
class JobConfigResponse {
  /// List of ad breaks. Specifies where to insert ad break tags in the output manifests.
  final List<AdBreakResponse> adBreaks;

  /// List of edit atoms. Defines the ultimate timeline of the resulting file or manifest.
  final List<EditAtomResponse> editList;

  /// List of elementary streams.
  final List<ElementaryStreamResponse> elementaryStreams;

  /// List of encryption configurations for the content. Each configuration has an ID. Specify this ID in the MuxStream.encryption_id field to indicate the configuration to use for that `MuxStream` output.
  final List<EncryptionResponse> encryptions;

  /// List of input assets stored in Cloud Storage.
  final List<InputResponse> inputs;

  /// List of output manifests.
  final List<ManifestResponse> manifests;

  /// List of multiplexing settings for output streams.
  final List<MuxStreamResponse> muxStreams;

  /// Output configuration.
  final OutputResponse output;

  /// List of overlays on the output video, in descending Z-order.
  final List<OverlayResponse> overlays;

  /// Destination on Pub/Sub.
  final PubsubDestinationResponseTranscoderV1 pubsubDestination;

  /// List of output sprite sheets. Spritesheets require at least one VideoStream in the Jobconfig.
  final List<SpriteSheetResponse> spriteSheets;

  JobConfigResponse({
    required this.adBreaks,
    required this.editList,
    required this.elementaryStreams,
    required this.encryptions,
    required this.inputs,
    required this.manifests,
    required this.muxStreams,
    required this.output,
    required this.overlays,
    required this.pubsubDestination,
    required this.spriteSheets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adBreaks'] =
        pulumi.Input.encodeList<AdBreakResponse, Map<String, dynamic>>(
            adBreaks, (value) => value.toMap());
    map['editList'] =
        pulumi.Input.encodeList<EditAtomResponse, Map<String, dynamic>>(
            editList, (value) => value.toMap());
    map['elementaryStreams'] =
        pulumi.Input.encodeList<ElementaryStreamResponse, Map<String, dynamic>>(
            elementaryStreams, (value) => value.toMap());
    map['encryptions'] =
        pulumi.Input.encodeList<EncryptionResponse, Map<String, dynamic>>(
            encryptions, (value) => value.toMap());
    map['inputs'] =
        pulumi.Input.encodeList<InputResponse, Map<String, dynamic>>(
            inputs, (value) => value.toMap());
    map['manifests'] =
        pulumi.Input.encodeList<ManifestResponse, Map<String, dynamic>>(
            manifests, (value) => value.toMap());
    map['muxStreams'] =
        pulumi.Input.encodeList<MuxStreamResponse, Map<String, dynamic>>(
            muxStreams, (value) => value.toMap());
    map['output'] = output.toMap();
    map['overlays'] =
        pulumi.Input.encodeList<OverlayResponse, Map<String, dynamic>>(
            overlays, (value) => value.toMap());
    map['pubsubDestination'] = pubsubDestination.toMap();
    map['spriteSheets'] =
        pulumi.Input.encodeList<SpriteSheetResponse, Map<String, dynamic>>(
            spriteSheets, (value) => value.toMap());
    return map;
  }

  factory JobConfigResponse.fromMap(Map<String, dynamic> map) {
    return JobConfigResponse(
      adBreaks: pulumi.Input.decodeList<AdBreakResponse>(
          map['adBreaks'],
          (value) =>
              AdBreakResponse.fromMap((value as Map).cast<String, dynamic>())),
      editList: pulumi.Input.decodeList<EditAtomResponse>(
          map['editList'],
          (value) =>
              EditAtomResponse.fromMap((value as Map).cast<String, dynamic>())),
      elementaryStreams: pulumi.Input.decodeList<ElementaryStreamResponse>(
          map['elementaryStreams'],
          (value) => ElementaryStreamResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      encryptions: pulumi.Input.decodeList<EncryptionResponse>(
          map['encryptions'],
          (value) => EncryptionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      inputs: pulumi.Input.decodeList<InputResponse>(
          map['inputs'],
          (value) =>
              InputResponse.fromMap((value as Map).cast<String, dynamic>())),
      manifests: pulumi.Input.decodeList<ManifestResponse>(
          map['manifests'],
          (value) =>
              ManifestResponse.fromMap((value as Map).cast<String, dynamic>())),
      muxStreams: pulumi.Input.decodeList<MuxStreamResponse>(
          map['muxStreams'],
          (value) => MuxStreamResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      output: OutputResponse.fromMap(
          (map['output'] as Map).cast<String, dynamic>()),
      overlays: pulumi.Input.decodeList<OverlayResponse>(
          map['overlays'],
          (value) =>
              OverlayResponse.fromMap((value as Map).cast<String, dynamic>())),
      pubsubDestination: PubsubDestinationResponseTranscoderV1.fromMap(
          (map['pubsubDestination'] as Map).cast<String, dynamic>()),
      spriteSheets: pulumi.Input.decodeList<SpriteSheetResponse>(
          map['spriteSheets'],
          (value) => SpriteSheetResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
