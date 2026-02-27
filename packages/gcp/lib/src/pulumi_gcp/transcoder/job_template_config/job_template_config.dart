// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../job_template_config_ad_break/job_template_config_ad_break.dart';
import '../job_template_config_edit_list/job_template_config_edit_list.dart';
import '../job_template_config_elementary_stream/job_template_config_elementary_stream.dart';
import '../job_template_config_encryption/job_template_config_encryption.dart';
import '../job_template_config_input/job_template_config_input.dart';
import '../job_template_config_manifest/job_template_config_manifest.dart';
import '../job_template_config_mux_stream/job_template_config_mux_stream.dart';
import '../job_template_config_output/job_template_config_output.dart';
import '../job_template_config_overlay/job_template_config_overlay.dart';
import '../job_template_config_pubsub_destination/job_template_config_pubsub_destination.dart';

class JobTemplateConfig {
  /// Ad break.
  /// Structure is documented below.
  final List<JobTemplateConfigAdBreak>? adBreaks;

  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final List<JobTemplateConfigEditList>? editLists;

  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final List<JobTemplateConfigElementaryStream>? elementaryStreams;

  /// List of encryption configurations for the content.
  /// Structure is documented below.
  final List<JobTemplateConfigEncryption>? encryptions;

  /// List of input assets stored in Cloud Storage.
  /// Structure is documented below.
  final List<JobTemplateConfigInput>? inputs;

  /// Manifest configuration.
  /// Structure is documented below.
  final List<JobTemplateConfigManifest>? manifests;

  /// Multiplexing settings for output stream.
  /// Structure is documented below.
  final List<JobTemplateConfigMuxStream>? muxStreams;

  /// Location of output file(s) in a Cloud Storage bucket.
  /// Structure is documented below.
  final JobTemplateConfigOutput? output;

  /// List of overlays on the output video, in descending Z-order.
  /// Structure is documented below.
  final List<JobTemplateConfigOverlay>? overlays;

  /// Pub/Sub destination.
  /// Structure is documented below.
  final JobTemplateConfigPubsubDestination? pubsubDestination;

  JobTemplateConfig({
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
      map['adBreaks'] = pulumi.Input.encodeList<JobTemplateConfigAdBreak,
          Map<String, dynamic>>(adBreaksValue, (value) => value.toMap());
    }
    final editListsValue = editLists;
    if (editListsValue != null) {
      map['editLists'] = pulumi.Input.encodeList<JobTemplateConfigEditList,
          Map<String, dynamic>>(editListsValue, (value) => value.toMap());
    }
    final elementaryStreamsValue = elementaryStreams;
    if (elementaryStreamsValue != null) {
      map['elementaryStreams'] = pulumi.Input.encodeList<
              JobTemplateConfigElementaryStream, Map<String, dynamic>>(
          elementaryStreamsValue, (value) => value.toMap());
    }
    final encryptionsValue = encryptions;
    if (encryptionsValue != null) {
      map['encryptions'] = pulumi.Input.encodeList<JobTemplateConfigEncryption,
          Map<String, dynamic>>(encryptionsValue, (value) => value.toMap());
    }
    final inputsValue = inputs;
    if (inputsValue != null) {
      map['inputs'] =
          pulumi.Input.encodeList<JobTemplateConfigInput, Map<String, dynamic>>(
              inputsValue, (value) => value.toMap());
    }
    final manifestsValue = manifests;
    if (manifestsValue != null) {
      map['manifests'] = pulumi.Input.encodeList<JobTemplateConfigManifest,
          Map<String, dynamic>>(manifestsValue, (value) => value.toMap());
    }
    final muxStreamsValue = muxStreams;
    if (muxStreamsValue != null) {
      map['muxStreams'] = pulumi.Input.encodeList<JobTemplateConfigMuxStream,
          Map<String, dynamic>>(muxStreamsValue, (value) => value.toMap());
    }
    final outputValue = output;
    if (outputValue != null) {
      map['output'] = outputValue.toMap();
    }
    final overlaysValue = overlays;
    if (overlaysValue != null) {
      map['overlays'] = pulumi.Input.encodeList<JobTemplateConfigOverlay,
          Map<String, dynamic>>(overlaysValue, (value) => value.toMap());
    }
    final pubsubDestinationValue = pubsubDestination;
    if (pubsubDestinationValue != null) {
      map['pubsubDestination'] = pubsubDestinationValue.toMap();
    }
    return map;
  }

  factory JobTemplateConfig.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfig(
      adBreaks: map['adBreaks'] == null
          ? null
          : pulumi.Input.decodeList<JobTemplateConfigAdBreak>(
              map['adBreaks'],
              (value) => JobTemplateConfigAdBreak.fromMap(
                  (value as Map).cast<String, dynamic>())),
      editLists: map['editLists'] == null
          ? null
          : pulumi.Input.decodeList<JobTemplateConfigEditList>(
              map['editLists'],
              (value) => JobTemplateConfigEditList.fromMap(
                  (value as Map).cast<String, dynamic>())),
      elementaryStreams: map['elementaryStreams'] == null
          ? null
          : pulumi.Input.decodeList<JobTemplateConfigElementaryStream>(
              map['elementaryStreams'],
              (value) => JobTemplateConfigElementaryStream.fromMap(
                  (value as Map).cast<String, dynamic>())),
      encryptions: map['encryptions'] == null
          ? null
          : pulumi.Input.decodeList<JobTemplateConfigEncryption>(
              map['encryptions'],
              (value) => JobTemplateConfigEncryption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inputs: map['inputs'] == null
          ? null
          : pulumi.Input.decodeList<JobTemplateConfigInput>(
              map['inputs'],
              (value) => JobTemplateConfigInput.fromMap(
                  (value as Map).cast<String, dynamic>())),
      manifests: map['manifests'] == null
          ? null
          : pulumi.Input.decodeList<JobTemplateConfigManifest>(
              map['manifests'],
              (value) => JobTemplateConfigManifest.fromMap(
                  (value as Map).cast<String, dynamic>())),
      muxStreams: map['muxStreams'] == null
          ? null
          : pulumi.Input.decodeList<JobTemplateConfigMuxStream>(
              map['muxStreams'],
              (value) => JobTemplateConfigMuxStream.fromMap(
                  (value as Map).cast<String, dynamic>())),
      output: map['output'] == null
          ? null
          : JobTemplateConfigOutput.fromMap(
              (map['output'] as Map).cast<String, dynamic>()),
      overlays: map['overlays'] == null
          ? null
          : pulumi.Input.decodeList<JobTemplateConfigOverlay>(
              map['overlays'],
              (value) => JobTemplateConfigOverlay.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pubsubDestination: map['pubsubDestination'] == null
          ? null
          : JobTemplateConfigPubsubDestination.fromMap(
              (map['pubsubDestination'] as Map).cast<String, dynamic>()),
    );
  }
}
