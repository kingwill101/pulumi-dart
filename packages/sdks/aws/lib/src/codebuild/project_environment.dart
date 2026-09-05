// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_environment_docker_server.dart';
import 'project_environment_environment_variable.dart';
import 'project_environment_fleet.dart';
import 'project_environment_registry_credential.dart';

class ProjectEnvironment {
  /// ARN of the S3 bucket, path prefix and object key that contains the PEM-encoded certificate.
  final pulumi.Input<String?>? certificate;
  /// Information about the compute resources the build project will use. Valid values:
  /// `BUILD_GENERAL1_SMALL`, `BUILD_GENERAL1_MEDIUM`, `BUILD_GENERAL1_LARGE`, `BUILD_GENERAL1_XLARGE`, `BUILD_GENERAL1_2XLARGE`, `BUILD_LAMBDA_1GB`,
  /// `BUILD_LAMBDA_2GB`, `BUILD_LAMBDA_4GB`, `BUILD_LAMBDA_8GB`, `BUILD_LAMBDA_10GB`. For additional information, see
  /// the [CodeBuild User Guide](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html).
  final pulumi.Input<String> computeType;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectEnvironmentDockerServer?>? dockerServer;
  /// Configuration block. Detailed below.
  final pulumi.Input<List<ProjectEnvironmentEnvironmentVariable>?>? environmentVariables;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectEnvironmentFleet?>? fleet;
  /// Host operating system kernel used for on-demand builds in the build project. This setting
  /// controls the kernel of the underlying build host. It does not change the build environment operating system, which is
  /// determined by the image you specify. Valid values: `LINUX_KERNEL_4` (runs on an Amazon Linux 2 host, kernel 4.x),
  /// `LINUX_KERNEL_6` (runs on an Amazon Linux 2023 host, kernel 6.x), `LINUX_KERNEL_LATEST` (runs on the latest supported
  /// host kernel). Applies to the `LINUX_CONTAINER`, `ARM_CONTAINER`, `LINUX_EC2`, and `ARM_EC2` environment types; not
  /// applicable to Windows, Lambda, or Mac environment types. If not specified, CodeBuild selects a default.
  final pulumi.Input<String?>? hostKernel;
  /// Docker image to use for this build project. Valid values
  /// include [Docker images provided by CodeBuild](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-available.html) (
  /// e.g `aws/codebuild/amazonlinux2-x86_64-standard:4.0`), [Docker Hub images](https://hub.docker.com/) (e.g.,
  /// `pulumi/pulumi:latest`), and full Docker repository URIs such as those for ECR (e.g.,
  /// `137112412989.dkr.ecr.us-west-2.amazonaws.com/amazonlinux:latest`).
  final pulumi.Input<String> image;
  /// Type of credentials AWS CodeBuild uses to pull images in your build. Valid
  /// values: `CODEBUILD`, `SERVICE_ROLE`. When you use a cross-account or private registry image, you must use SERVICE_ROLE
  /// credentials. When you use an AWS CodeBuild curated image, you must use CodeBuild credentials. Defaults to `CODEBUILD`.
  final pulumi.Input<String?>? imagePullCredentialsType;
  /// Whether to enable running the Docker daemon inside a Docker container. Defaults to
  /// `false`.
  final pulumi.Input<bool?>? privilegedMode;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectEnvironmentRegistryCredential?>? registryCredential;
  /// Type of build environment to use for related builds. Valid values: `WINDOWS_CONTAINER` (deprecated), `LINUX_CONTAINER`,
  /// `LINUX_GPU_CONTAINER`, `ARM_CONTAINER`, `WINDOWS_SERVER_2019_CONTAINER`, `WINDOWS_SERVER_2022_CONTAINER`,
  /// `LINUX_LAMBDA_CONTAINER`, `ARM_LAMBDA_CONTAINER`, `LINUX_EC2`, `ARM_EC2`, `WINDOWS_EC2`, `MAC_ARM`. For additional information, see
  /// the [CodeBuild User Guide](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html).
  final pulumi.Input<String> type;

  /// Creates a new [ProjectEnvironment].
  /// [certificate] ARN of the S3 bucket, path prefix and object key that contains the PEM-encoded certificate.
  /// [computeType] Information about the compute resources the build project will use. Valid values:
  /// [dockerServer] Configuration block. Detailed below.
  /// [environmentVariables] Configuration block. Detailed below.
  /// [fleet] Configuration block. Detailed below.
  /// [hostKernel] Host operating system kernel used for on-demand builds in the build project. This setting
  /// [image] Docker image to use for this build project. Valid values
  /// [imagePullCredentialsType] Type of credentials AWS CodeBuild uses to pull images in your build. Valid
  /// [privilegedMode] Whether to enable running the Docker daemon inside a Docker container. Defaults to
  /// [registryCredential] Configuration block. Detailed below.
  /// [type] Type of build environment to use for related builds. Valid values: `WINDOWS_CONTAINER` (deprecated), `LINUX_CONTAINER`,
  const ProjectEnvironment({
    this.certificate,
    required this.computeType,
    this.dockerServer,
    this.environmentVariables,
    this.fleet,
    this.hostKernel,
    required this.image,
    this.imagePullCredentialsType,
    this.privilegedMode,
    this.registryCredential,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'computeType': computeType,
      'dockerServer': ?pulumi.Input.mapOptionalInputValue<ProjectEnvironmentDockerServer, Map<String, dynamic>>(dockerServer, (value) => value.toMap()),
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<ProjectEnvironmentEnvironmentVariable>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<ProjectEnvironmentEnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fleet': ?pulumi.Input.mapOptionalInputValue<ProjectEnvironmentFleet, Map<String, dynamic>>(fleet, (value) => value.toMap()),
      'hostKernel': ?hostKernel,
      'image': image,
      'imagePullCredentialsType': ?imagePullCredentialsType,
      'privilegedMode': ?privilegedMode,
      'registryCredential': ?pulumi.Input.mapOptionalInputValue<ProjectEnvironmentRegistryCredential, Map<String, dynamic>>(registryCredential, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ProjectEnvironment.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironment(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeType: pulumi.Input.fromValue(map['computeType'] as String),
      dockerServer: (() { final guardedValue = map['dockerServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectEnvironmentDockerServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectEnvironmentEnvironmentVariable>(guardedValue, (value) => ProjectEnvironmentEnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fleet: (() { final guardedValue = map['fleet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectEnvironmentFleet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostKernel: (() { final guardedValue = map['hostKernel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      imagePullCredentialsType: (() { final guardedValue = map['imagePullCredentialsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privilegedMode: (() { final guardedValue = map['privilegedMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registryCredential: (() { final guardedValue = map['registryCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectEnvironmentRegistryCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
