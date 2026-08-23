// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_definition_eks_properties_pod_properties_volume_empty_dir.dart';
import 'job_definition_eks_properties_pod_properties_volume_host_path.dart';
import 'job_definition_eks_properties_pod_properties_volume_secret.dart';

class JobDefinitionEksPropertiesPodPropertiesVolume {
  /// Empty directory to mount on the pod. See `emptyDir` below.
  final pulumi.Input<JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir>? emptyDir;
  /// Path on the host that's mounted to the pod. See `hostPath` below.
  final pulumi.Input<JobDefinitionEksPropertiesPodPropertiesVolumeHostPath>? hostPath;
  /// Name of the volume. The name must be allowed as a DNS subdomain name.
  final pulumi.Input<String>? name;
  /// Secret to mount as a volume. See `secret` below.
  final pulumi.Input<JobDefinitionEksPropertiesPodPropertiesVolumeSecret>? secret;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesVolume].
  /// [emptyDir] Empty directory to mount on the pod. See `emptyDir` below.
  /// [hostPath] Path on the host that's mounted to the pod. See `hostPath` below.
  /// [name] Name of the volume. The name must be allowed as a DNS subdomain name.
  /// [secret] Secret to mount as a volume. See `secret` below.
  const JobDefinitionEksPropertiesPodPropertiesVolume({
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
