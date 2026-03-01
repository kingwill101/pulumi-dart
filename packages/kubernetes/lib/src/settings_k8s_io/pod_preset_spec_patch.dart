// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/env_from_source_patch.dart';
import '../core/env_var_patch.dart';
import '../core/volume_mount_patch.dart';
import '../core/volume_patch.dart';
import '../meta/label_selector_patch.dart';

/// PodPresetSpec is a description of a pod preset.
class PodPresetSpecPatch {
  /// Env defines the collection of EnvVar to inject into containers.
  final List<EnvVarPatch>? env;
  /// EnvFrom defines the collection of EnvFromSource to inject into containers.
  final List<EnvFromSourcePatch>? envFrom;
  /// Selector is a label query over a set of resources, in this case pods. Required.
  final LabelSelectorPatch? selector;
  /// VolumeMounts defines the collection of VolumeMount to inject into containers.
  final List<VolumeMountPatch>? volumeMounts;
  /// Volumes defines the collection of Volume to inject into the pod.
  final List<VolumePatch>? volumes;

  /// Creates a new [PodPresetSpecPatch].
  /// [env] Env defines the collection of EnvVar to inject into containers.
  /// [envFrom] EnvFrom defines the collection of EnvFromSource to inject into containers.
  /// [selector] Selector is a label query over a set of resources, in this case pods. Required.
  /// [volumeMounts] VolumeMounts defines the collection of VolumeMount to inject into containers.
  /// [volumes] Volumes defines the collection of Volume to inject into the pod.
  PodPresetSpecPatch({
    this.env,
    this.envFrom,
    this.selector,
    this.volumeMounts,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'env': ?env == null ? null : pulumi.Input.encodeList<EnvVarPatch, Map<String, dynamic>>(env!, (value) => value.toMap()),
      'envFrom': ?envFrom == null ? null : pulumi.Input.encodeList<EnvFromSourcePatch, Map<String, dynamic>>(envFrom!, (value) => value.toMap()),
      'selector': ?selector == null ? null : selector!.toMap(),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMountPatch, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<VolumePatch, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
    };
  }

  factory PodPresetSpecPatch.fromMap(Map<String, dynamic> map) {
    return PodPresetSpecPatch(
      env: map['env'] == null ? null : pulumi.Input.decodeList<EnvVarPatch>(map['env'], (value) => EnvVarPatch.fromMap((value as Map).cast<String, dynamic>())),
      envFrom: map['envFrom'] == null ? null : pulumi.Input.decodeList<EnvFromSourcePatch>(map['envFrom'], (value) => EnvFromSourcePatch.fromMap((value as Map).cast<String, dynamic>())),
      selector: map['selector'] == null ? null : LabelSelectorPatch.fromMap((map['selector'] as Map).cast<String, dynamic>()),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMountPatch>(map['volumeMounts'], (value) => VolumeMountPatch.fromMap((value as Map).cast<String, dynamic>())),
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<VolumePatch>(map['volumes'], (value) => VolumePatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

