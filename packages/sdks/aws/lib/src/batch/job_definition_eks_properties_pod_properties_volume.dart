// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_definition_eks_properties_pod_properties_volume_empty_dir.dart';
import 'job_definition_eks_properties_pod_properties_volume_host_path.dart';
import 'job_definition_eks_properties_pod_properties_volume_secret.dart';

class JobDefinitionEksPropertiesPodPropertiesVolume {
  final pulumi.Input<JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir>? emptyDir;
  final pulumi.Input<JobDefinitionEksPropertiesPodPropertiesVolumeHostPath>? hostPath;
  /// Name of the job definition.
  final pulumi.Input<String>? name;
  final pulumi.Input<JobDefinitionEksPropertiesPodPropertiesVolumeSecret>? secret;

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
      'emptyDir': ?pulumi.Input.mapOptionalInputValue<JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir, Map<String, dynamic>>(emptyDir, (value) => value.toMap()),
      'hostPath': ?pulumi.Input.mapOptionalInputValue<JobDefinitionEksPropertiesPodPropertiesVolumeHostPath, Map<String, dynamic>>(hostPath, (value) => value.toMap()),
      'name': ?name,
      'secret': ?pulumi.Input.mapOptionalInputValue<JobDefinitionEksPropertiesPodPropertiesVolumeSecret, Map<String, dynamic>>(secret, (value) => value.toMap()),
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesVolume.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesVolume(
      emptyDir: (() { final guardedValue = map['emptyDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostPath: (() { final guardedValue = map['hostPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobDefinitionEksPropertiesPodPropertiesVolumeHostPath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobDefinitionEksPropertiesPodPropertiesVolumeSecret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

