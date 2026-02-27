// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_job_definition_eks_property_pod_property_volume_empty_dir/get_job_definition_eks_property_pod_property_volume_empty_dir.dart';
import '../get_job_definition_eks_property_pod_property_volume_host_path/get_job_definition_eks_property_pod_property_volume_host_path.dart';
import '../get_job_definition_eks_property_pod_property_volume_secret/get_job_definition_eks_property_pod_property_volume_secret.dart';

class GetJobDefinitionEksPropertyPodPropertyVolume {
  /// Specifies the configuration of a Kubernetes emptyDir volume.
  final List<GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir> emptyDirs;

  /// The path for the device on the host container instance.
  final List<GetJobDefinitionEksPropertyPodPropertyVolumeHostPath> hostPaths;

  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final String name;

  /// Specifies the configuration of a Kubernetes secret volume.
  final List<GetJobDefinitionEksPropertyPodPropertyVolumeSecret> secrets;

  GetJobDefinitionEksPropertyPodPropertyVolume({
    required this.emptyDirs,
    required this.hostPaths,
    required this.name,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['emptyDirs'] = pulumi.Input.encodeList<
        GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir,
        Map<String, dynamic>>(emptyDirs, (value) => value.toMap());
    map['hostPaths'] = pulumi.Input.encodeList<
        GetJobDefinitionEksPropertyPodPropertyVolumeHostPath,
        Map<String, dynamic>>(hostPaths, (value) => value.toMap());
    map['name'] = name;
    map['secrets'] = pulumi.Input.encodeList<
        GetJobDefinitionEksPropertyPodPropertyVolumeSecret,
        Map<String, dynamic>>(secrets, (value) => value.toMap());
    return map;
  }

  factory GetJobDefinitionEksPropertyPodPropertyVolume.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyVolume(
      emptyDirs: pulumi.Input.decodeList<
              GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir>(
          map['emptyDirs'],
          (value) =>
              GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir.fromMap(
                  (value as Map).cast<String, dynamic>())),
      hostPaths: pulumi.Input.decodeList<
              GetJobDefinitionEksPropertyPodPropertyVolumeHostPath>(
          map['hostPaths'],
          (value) =>
              GetJobDefinitionEksPropertyPodPropertyVolumeHostPath.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      secrets: pulumi.Input.decodeList<
              GetJobDefinitionEksPropertyPodPropertyVolumeSecret>(
          map['secrets'],
          (value) => GetJobDefinitionEksPropertyPodPropertyVolumeSecret.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
