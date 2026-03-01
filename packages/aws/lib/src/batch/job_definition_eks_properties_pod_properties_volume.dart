// ignore_for_file: unused_element, unnecessary_cast

import 'job_definition_eks_properties_pod_properties_volume_empty_dir.dart';
import 'job_definition_eks_properties_pod_properties_volume_host_path.dart';
import 'job_definition_eks_properties_pod_properties_volume_secret.dart';

class JobDefinitionEksPropertiesPodPropertiesVolume {
  final JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir? emptyDir;
  final JobDefinitionEksPropertiesPodPropertiesVolumeHostPath? hostPath;
  /// Name of the job definition.
  final String? name;
  final JobDefinitionEksPropertiesPodPropertiesVolumeSecret? secret;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesVolume].
  /// [emptyDir] Optional.
  /// [hostPath] Optional.
  /// [name] Name of the job definition.
  /// [secret] Optional.
  JobDefinitionEksPropertiesPodPropertiesVolume({
    this.emptyDir,
    this.hostPath,
    this.name,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emptyDir': ?emptyDir == null ? null : emptyDir!.toMap(),
      'hostPath': ?hostPath == null ? null : hostPath!.toMap(),
      'name': ?name,
      'secret': ?secret == null ? null : secret!.toMap(),
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesVolume.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesVolume(
      emptyDir: map['emptyDir'] == null ? null : JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir.fromMap((map['emptyDir'] as Map).cast<String, dynamic>()),
      hostPath: map['hostPath'] == null ? null : JobDefinitionEksPropertiesPodPropertiesVolumeHostPath.fromMap((map['hostPath'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      secret: map['secret'] == null ? null : JobDefinitionEksPropertiesPodPropertiesVolumeSecret.fromMap((map['secret'] as Map).cast<String, dynamic>()),
    );
  }
}

