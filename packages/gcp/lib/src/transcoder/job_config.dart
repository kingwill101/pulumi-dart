// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config_ad_break.dart';
import 'job_config_edit_list.dart';
import 'job_config_elementary_stream.dart';
import 'job_config_encryption.dart';
import 'job_config_input.dart';
import 'job_config_manifest.dart';
import 'job_config_mux_stream.dart';
import 'job_config_output.dart';
import 'job_config_overlay.dart';
import 'job_config_pubsub_destination.dart';

class JobConfig {
  /// Ad break.
  /// Structure is documented below.
  final List<JobConfigAdBreak>? adBreaks;

  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final List<JobConfigEditList>? editLists;

  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final List<JobConfigElementaryStream>? elementaryStreams;

  /// List of encryption configurations for the content.
  /// Structure is documented below.
  final List<JobConfigEncryption>? encryptions;

  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final List<JobConfigInput>? inputs;

  /// Manifest configuration.
  /// Structure is documented below.
  final List<JobConfigManifest>? manifests;

  /// Multiplexing settings for output stream.
  /// Structure is documented below.
  final List<JobConfigMuxStream>? muxStreams;

  /// Location of output file(s) in a Cloud Storage bucket.
  /// Structure is documented below.
  final JobConfigOutput? output;

  /// List of overlays on the output video, in descending Z-order.
  /// Structure is documented below.
  final List<JobConfigOverlay>? overlays;

  /// Pub/Sub destination.
  /// Structure is documented below.
  final JobConfigPubsubDestination? pubsubDestination;

  /// Creates a new [JobConfig].
  /// [adBreaks] Ad break.
  /// [editLists] List of input assets stored in Cloud Storage.
  /// [elementaryStreams] List of input assets stored in Cloud Storage.
  /// [encryptions] List of encryption configurations for the content.
  /// [inputs] List of input assets stored in Cloud Storage.
  /// [manifests] Manifest configuration.
  /// [muxStreams] Multiplexing settings for output stream.
  /// [output] Location of output file(s) in a Cloud Storage bucket.
  /// [overlays] List of overlays on the output video, in descending Z-order.
  /// [pubsubDestination] Pub/Sub destination.
  JobConfig({
    this.adBreaks,
    this.editLists,
    this.elementaryStreams,
    this.encryptions,
    this.inputs,
    this.manifests,
    this.muxStreams,
    this.output,
    this.overlays,
    this.pubsubDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adBreaksValue = adBreaks;
    if (adBreaksValue != null) {
      map['adBreaks'] =
          pulumi.Input.encodeList<JobConfigAdBreak, Map<String, dynamic>>(
              adBreaksValue, (value) => value.toMap());
    }
    final editListsValue = editLists;
    if (editListsValue != null) {
      map['editLists'] =
          pulumi.Input.encodeList<JobConfigEditList, Map<String, dynamic>>(
              editListsValue, (value) => value.toMap());
    }
    final elementaryStreamsValue = elementaryStreams;
    if (elementaryStreamsValue != null) {
      map['elementaryStreams'] = pulumi.Input.encodeList<
              JobConfigElementaryStream, Map<String, dynamic>>(
          elementaryStreamsValue, (value) => value.toMap());
    }
    final encryptionsValue = encryptions;
    if (encryptionsValue != null) {
      map['encryptions'] =
          pulumi.Input.encodeList<JobConfigEncryption, Map<String, dynamic>>(
              encryptionsValue, (value) => value.toMap());
    }
    final inputsValue = inputs;
    if (inputsValue != null) {
      map['inputs'] =
          pulumi.Input.encodeList<JobConfigInput, Map<String, dynamic>>(
              inputsValue, (value) => value.toMap());
    }
    final manifestsValue = manifests;
    if (manifestsValue != null) {
      map['manifests'] =
          pulumi.Input.encodeList<JobConfigManifest, Map<String, dynamic>>(
              manifestsValue, (value) => value.toMap());
    }
    final muxStreamsValue = muxStreams;
    if (muxStreamsValue != null) {
      map['muxStreams'] =
          pulumi.Input.encodeList<JobConfigMuxStream, Map<String, dynamic>>(
              muxStreamsValue, (value) => value.toMap());
    }
    final outputValue = output;
    if (outputValue != null) {
      map['output'] = outputValue.toMap();
    }
    final overlaysValue = overlays;
    if (overlaysValue != null) {
      map['overlays'] =
          pulumi.Input.encodeList<JobConfigOverlay, Map<String, dynamic>>(
              overlaysValue, (value) => value.toMap());
    }
    final pubsubDestinationValue = pubsubDestination;
    if (pubsubDestinationValue != null) {
      map['pubsubDestination'] = pubsubDestinationValue.toMap();
    }
    return map;
  }

  factory JobConfig.fromMap(Map<String, dynamic> map) {
    return JobConfig(
      adBreaks: map['adBreaks'] == null
          ? null
          : pulumi.Input.decodeList<JobConfigAdBreak>(
              map['adBreaks'],
              (value) => JobConfigAdBreak.fromMap(
                  (value as Map).cast<String, dynamic>())),
      editLists: map['editLists'] == null
          ? null
          : pulumi.Input.decodeList<JobConfigEditList>(
              map['editLists'],
              (value) => JobConfigEditList.fromMap(
                  (value as Map).cast<String, dynamic>())),
      elementaryStreams: map['elementaryStreams'] == null
          ? null
          : pulumi.Input.decodeList<JobConfigElementaryStream>(
              map['elementaryStreams'],
              (value) => JobConfigElementaryStream.fromMap(
                  (value as Map).cast<String, dynamic>())),
      encryptions: map['encryptions'] == null
          ? null
          : pulumi.Input.decodeList<JobConfigEncryption>(
              map['encryptions'],
              (value) => JobConfigEncryption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inputs: map['inputs'] == null
          ? null
          : pulumi.Input.decodeList<JobConfigInput>(
              map['inputs'],
              (value) => JobConfigInput.fromMap(
                  (value as Map).cast<String, dynamic>())),
      manifests: map['manifests'] == null
          ? null
          : pulumi.Input.decodeList<JobConfigManifest>(
              map['manifests'],
              (value) => JobConfigManifest.fromMap(
                  (value as Map).cast<String, dynamic>())),
      muxStreams: map['muxStreams'] == null
          ? null
          : pulumi.Input.decodeList<JobConfigMuxStream>(
              map['muxStreams'],
              (value) => JobConfigMuxStream.fromMap(
                  (value as Map).cast<String, dynamic>())),
      output: map['output'] == null
          ? null
          : JobConfigOutput.fromMap(
              (map['output'] as Map).cast<String, dynamic>()),
      overlays: map['overlays'] == null
          ? null
          : pulumi.Input.decodeList<JobConfigOverlay>(
              map['overlays'],
              (value) => JobConfigOverlay.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pubsubDestination: map['pubsubDestination'] == null
          ? null
          : JobConfigPubsubDestination.fromMap(
              (map['pubsubDestination'] as Map).cast<String, dynamic>()),
    );
  }
}
