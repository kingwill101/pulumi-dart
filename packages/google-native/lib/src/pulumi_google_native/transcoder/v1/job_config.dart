// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'ad_break.dart';
import 'edit_atom.dart';
import 'elementary_stream.dart';
import 'encryption.dart';
import 'input_type.dart';
import 'manifest.dart';
import 'mux_stream.dart';
import 'output_type.dart';
import 'overlay.dart';
import 'pubsub_destination2.dart';
import 'sprite_sheet.dart';

/// Job configuration
class JobConfig {
  /// List of ad breaks. Specifies where to insert ad break tags in the output manifests.
  final List<AdBreak>? adBreaks;

  /// List of edit atoms. Defines the ultimate timeline of the resulting file or manifest.
  final List<EditAtom>? editList;

  /// List of elementary streams.
  final List<ElementaryStream>? elementaryStreams;

  /// List of encryption configurations for the content. Each configuration has an ID. Specify this ID in the MuxStream.encryption_id field to indicate the configuration to use for that `MuxStream` output.
  final List<Encryption>? encryptions;

  /// List of input assets stored in Cloud Storage.
  final List<InputType>? inputs;

  /// List of output manifests.
  final List<Manifest>? manifests;

  /// List of multiplexing settings for output streams.
  final List<MuxStream>? muxStreams;

  /// Output configuration.
  final OutputType? output;

  /// List of overlays on the output video, in descending Z-order.
  final List<Overlay>? overlays;

  /// Destination on Pub/Sub.
  final PubsubDestination2? pubsubDestination;

  /// List of output sprite sheets. Spritesheets require at least one VideoStream in the Jobconfig.
  final List<SpriteSheet>? spriteSheets;

  JobConfig({
    this.adBreaks,
    this.editList,
    this.elementaryStreams,
    this.encryptions,
    this.inputs,
    this.manifests,
    this.muxStreams,
    this.output,
    this.overlays,
    this.pubsubDestination,
    this.spriteSheets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adBreaksValue = adBreaks;
    if (adBreaksValue != null) {
      map['adBreaks'] = Input.encodeList<AdBreak, Map<String, dynamic>>(
          adBreaksValue, (value) => value.toMap());
    }
    final editListValue = editList;
    if (editListValue != null) {
      map['editList'] = Input.encodeList<EditAtom, Map<String, dynamic>>(
          editListValue, (value) => value.toMap());
    }
    final elementaryStreamsValue = elementaryStreams;
    if (elementaryStreamsValue != null) {
      map['elementaryStreams'] =
          Input.encodeList<ElementaryStream, Map<String, dynamic>>(
              elementaryStreamsValue, (value) => value.toMap());
    }
    final encryptionsValue = encryptions;
    if (encryptionsValue != null) {
      map['encryptions'] = Input.encodeList<Encryption, Map<String, dynamic>>(
          encryptionsValue, (value) => value.toMap());
    }
    final inputsValue = inputs;
    if (inputsValue != null) {
      map['inputs'] = Input.encodeList<InputType, Map<String, dynamic>>(
          inputsValue, (value) => value.toMap());
    }
    final manifestsValue = manifests;
    if (manifestsValue != null) {
      map['manifests'] = Input.encodeList<Manifest, Map<String, dynamic>>(
          manifestsValue, (value) => value.toMap());
    }
    final muxStreamsValue = muxStreams;
    if (muxStreamsValue != null) {
      map['muxStreams'] = Input.encodeList<MuxStream, Map<String, dynamic>>(
          muxStreamsValue, (value) => value.toMap());
    }
    final outputValue = output;
    if (outputValue != null) {
      map['output'] = outputValue.toMap();
    }
    final overlaysValue = overlays;
    if (overlaysValue != null) {
      map['overlays'] = Input.encodeList<Overlay, Map<String, dynamic>>(
          overlaysValue, (value) => value.toMap());
    }
    final pubsubDestinationValue = pubsubDestination;
    if (pubsubDestinationValue != null) {
      map['pubsubDestination'] = pubsubDestinationValue.toMap();
    }
    final spriteSheetsValue = spriteSheets;
    if (spriteSheetsValue != null) {
      map['spriteSheets'] = Input.encodeList<SpriteSheet, Map<String, dynamic>>(
          spriteSheetsValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobConfig.fromMap(Map<String, dynamic> map) {
    return JobConfig(
      adBreaks: map['adBreaks'] == null
          ? null
          : Input.decodeList<AdBreak>(
              map['adBreaks'],
              (value) =>
                  AdBreak.fromMap((value as Map).cast<String, dynamic>())),
      editList: map['editList'] == null
          ? null
          : Input.decodeList<EditAtom>(
              map['editList'],
              (value) =>
                  EditAtom.fromMap((value as Map).cast<String, dynamic>())),
      elementaryStreams: map['elementaryStreams'] == null
          ? null
          : Input.decodeList<ElementaryStream>(
              map['elementaryStreams'],
              (value) => ElementaryStream.fromMap(
                  (value as Map).cast<String, dynamic>())),
      encryptions: map['encryptions'] == null
          ? null
          : Input.decodeList<Encryption>(
              map['encryptions'],
              (value) =>
                  Encryption.fromMap((value as Map).cast<String, dynamic>())),
      inputs: map['inputs'] == null
          ? null
          : Input.decodeList<InputType>(
              map['inputs'],
              (value) =>
                  InputType.fromMap((value as Map).cast<String, dynamic>())),
      manifests: map['manifests'] == null
          ? null
          : Input.decodeList<Manifest>(
              map['manifests'],
              (value) =>
                  Manifest.fromMap((value as Map).cast<String, dynamic>())),
      muxStreams: map['muxStreams'] == null
          ? null
          : Input.decodeList<MuxStream>(
              map['muxStreams'],
              (value) =>
                  MuxStream.fromMap((value as Map).cast<String, dynamic>())),
      output: map['output'] == null
          ? null
          : OutputType.fromMap((map['output'] as Map).cast<String, dynamic>()),
      overlays: map['overlays'] == null
          ? null
          : Input.decodeList<Overlay>(
              map['overlays'],
              (value) =>
                  Overlay.fromMap((value as Map).cast<String, dynamic>())),
      pubsubDestination: map['pubsubDestination'] == null
          ? null
          : PubsubDestination2.fromMap(
              (map['pubsubDestination'] as Map).cast<String, dynamic>()),
      spriteSheets: map['spriteSheets'] == null
          ? null
          : Input.decodeList<SpriteSheet>(
              map['spriteSheets'],
              (value) =>
                  SpriteSheet.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
