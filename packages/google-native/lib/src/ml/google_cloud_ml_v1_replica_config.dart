// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_ml_v1_accelerator_config.dart';
import 'google_cloud_ml_v1_disk_config.dart';

/// Represents the configuration for a replica in a cluster.
class GoogleCloudMlV1ReplicaConfig {
  /// Represents the type and number of accelerators used by the replica. [Learn about restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu)
  final GoogleCloudMlV1AcceleratorConfig? acceleratorConfig;

  /// Arguments to the entrypoint command. The following rules apply for container_command and container_args: - If you do not supply command or args: The defaults defined in the Docker image are used. - If you supply a command but no args: The default EntryPoint and the default Cmd defined in the Docker image are ignored. Your command is run without any arguments. - If you supply only args: The default Entrypoint defined in the Docker image is run with the args that you supplied. - If you supply a command and args: The default Entrypoint and the default Cmd defined in the Docker image are ignored. Your command is run with your args. It cannot be set if custom container image is not provided. Note that this field and [TrainingInput.args] are mutually exclusive, i.e., both cannot be set at the same time.
  final List<String>? containerArgs;

  /// The command with which the replica's custom container is run. If provided, it will override default ENTRYPOINT of the docker image. If not provided, the docker image's ENTRYPOINT is used. It cannot be set if custom container image is not provided. Note that this field and [TrainingInput.args] are mutually exclusive, i.e., both cannot be set at the same time.
  final List<String>? containerCommand;

  /// Represents the configuration of disk options.
  final GoogleCloudMlV1DiskConfig? diskConfig;

  /// The Docker image to run on the replica. This image must be in Container Registry. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).
  final String? imageUri;

  /// The AI Platform runtime version that includes a TensorFlow version matching the one used in the custom container. This field is required if the replica is a TPU worker that uses a custom container. Otherwise, do not specify this field. This must be a [runtime version that currently supports training with TPUs](/ml-engine/docs/tensorflow/runtime-version-list#tpu-support). Note that the version of TensorFlow included in a runtime version may differ from the numbering of the runtime version itself, because it may have a different [patch version](https://www.tensorflow.org/guide/version_compat#semantic_versioning_20). In this field, you must specify the runtime version (TensorFlow minor version). For example, if your custom container runs TensorFlow `1.x.y`, specify `1.x`.
  final String? tpuTfVersion;

  /// Creates a new [GoogleCloudMlV1ReplicaConfig].
  /// [acceleratorConfig] Represents the type and number of accelerators used by the replica. [Learn about restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu)
  /// [containerArgs] Arguments to the entrypoint command. The following rules apply for container_command and container_args: - If you do not supply command or args: The defaults defined in the Docker image are used. - If you supply a command but no args: The default EntryPoint and the default Cmd defined in the Docker image are ignored. Your command is run without any arguments. - If you supply only args: The default Entrypoint defined in the Docker image is run with the args that you supplied. - If you supply a command and args: The default Entrypoint and the default Cmd defined in the Docker image are ignored. Your command is run with your args. It cannot be set if custom container image is not provided. Note that this field and [TrainingInput.args] are mutually exclusive, i.e., both cannot be set at the same time.
  /// [containerCommand] The command with which the replica's custom container is run. If provided, it will override default ENTRYPOINT of the docker image. If not provided, the docker image's ENTRYPOINT is used. It cannot be set if custom container image is not provided. Note that this field and [TrainingInput.args] are mutually exclusive, i.e., both cannot be set at the same time.
  /// [diskConfig] Represents the configuration of disk options.
  /// [imageUri] The Docker image to run on the replica. This image must be in Container Registry. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).
  /// [tpuTfVersion] The AI Platform runtime version that includes a TensorFlow version matching the one used in the custom container. This field is required if the replica is a TPU worker that uses a custom container. Otherwise, do not specify this field. This must be a [runtime version that currently supports training with TPUs](/ml-engine/docs/tensorflow/runtime-version-list#tpu-support). Note that the version of TensorFlow included in a runtime version may differ from the numbering of the runtime version itself, because it may have a different [patch version](https://www.tensorflow.org/guide/version_compat#semantic_versioning_20). In this field, you must specify the runtime version (TensorFlow minor version). For example, if your custom container runs TensorFlow `1.x.y`, specify `1.x`.
  GoogleCloudMlV1ReplicaConfig({
    this.acceleratorConfig,
    this.containerArgs,
    this.containerCommand,
    this.diskConfig,
    this.imageUri,
    this.tpuTfVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorConfigValue = acceleratorConfig;
    if (acceleratorConfigValue != null) {
      map['acceleratorConfig'] = acceleratorConfigValue.toMap();
    }
    final containerArgsValue = containerArgs;
    if (containerArgsValue != null) {
      map['containerArgs'] = containerArgsValue;
    }
    final containerCommandValue = containerCommand;
    if (containerCommandValue != null) {
      map['containerCommand'] = containerCommandValue;
    }
    final diskConfigValue = diskConfig;
    if (diskConfigValue != null) {
      map['diskConfig'] = diskConfigValue.toMap();
    }
    final imageUriValue = imageUri;
    if (imageUriValue != null) {
      map['imageUri'] = imageUriValue;
    }
    final tpuTfVersionValue = tpuTfVersion;
    if (tpuTfVersionValue != null) {
      map['tpuTfVersion'] = tpuTfVersionValue;
    }
    return map;
  }

  factory GoogleCloudMlV1ReplicaConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1ReplicaConfig(
      acceleratorConfig: map['acceleratorConfig'] == null
          ? null
          : GoogleCloudMlV1AcceleratorConfig.fromMap(
              (map['acceleratorConfig'] as Map).cast<String, dynamic>()),
      containerArgs: map['containerArgs'] == null
          ? null
          : (map['containerArgs'] as List).cast<String>(),
      containerCommand: map['containerCommand'] == null
          ? null
          : (map['containerCommand'] as List).cast<String>(),
      diskConfig: map['diskConfig'] == null
          ? null
          : GoogleCloudMlV1DiskConfig.fromMap(
              (map['diskConfig'] as Map).cast<String, dynamic>()),
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
      tpuTfVersion:
          map['tpuTfVersion'] == null ? null : map['tpuTfVersion'] as String,
    );
  }
}
