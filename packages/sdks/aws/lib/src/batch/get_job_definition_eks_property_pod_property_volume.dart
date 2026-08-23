// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_eks_property_pod_property_volume_empty_dir.dart';
import 'get_job_definition_eks_property_pod_property_volume_host_path.dart';
import 'get_job_definition_eks_property_pod_property_volume_secret.dart';

class GetJobDefinitionEksPropertyPodPropertyVolume {
  /// Configuration of a Kubernetes emptyDir volume. See `emptyDir` below.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir>> emptyDirs;
  /// Path for the device on the host container instance.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyVolumeHostPath>> hostPaths;
  /// Name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final pulumi.Input<String> name;
  /// Configuration of a Kubernetes secret volume. See `secret` below.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyVolumeSecret>> secrets;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyVolume].
  /// [emptyDirs] Configuration of a Kubernetes emptyDir volume. See `emptyDir` below.
  /// [hostPaths] Path for the device on the host container instance.
  /// [name] Name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [secrets] Configuration of a Kubernetes secret volume. See `secret` below.
  const GetJobDefinitionEksPropertyPodPropertyVolume({
    required this.emptyDirs,
    required this.hostPaths,
    required this.name,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emptyDirs': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir>, List<Map<String, dynamic>>>(emptyDirs, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostPaths': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyVolumeHostPath>, List<Map<String, dynamic>>>(hostPaths, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyVolumeHostPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'secrets': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyVolumeSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyVolumeSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetJobDefinitionEksPropertyPodPropertyVolume.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyVolume(
      emptyDirs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir>(map['emptyDirs']!, (value) => GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir.fromMap((value as Map).cast<String, dynamic>()))),
      hostPaths: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyVolumeHostPath>(map['hostPaths']!, (value) => GetJobDefinitionEksPropertyPodPropertyVolumeHostPath.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      secrets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyVolumeSecret>(map['secrets']!, (value) => GetJobDefinitionEksPropertyPodPropertyVolumeSecret.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
