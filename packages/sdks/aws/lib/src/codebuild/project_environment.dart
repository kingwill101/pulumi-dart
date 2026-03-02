// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_environment_docker_server.dart';
import 'project_environment_environment_variable.dart';
import 'project_environment_fleet.dart';
import 'project_environment_registry_credential.dart';

class ProjectEnvironment {
  /// ARN of the S3 bucket, path prefix and object key that contains the PEM-encoded certificate.
  final pulumi.Input<String>? certificate;
  /// Information about the compute resources the build project will use. Valid values:
  /// `BUILD_GENERAL1_SMALL`, `BUILD_GENERAL1_MEDIUM`, `BUILD_GENERAL1_LARGE`, `BUILD_GENERAL1_XLARGE`, `BUILD_GENERAL1_2XLARGE`, `BUILD_LAMBDA_1GB`,
  /// `BUILD_LAMBDA_2GB`, `BUILD_LAMBDA_4GB`, `BUILD_LAMBDA_8GB`, `BUILD_LAMBDA_10GB`. For additional information, see
  /// the [CodeBuild User Guide](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html).
  final pulumi.Input<String> computeType;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectEnvironmentDockerServer>? dockerServer;
  /// Configuration block. Detailed below.
  final pulumi.Input<List<ProjectEnvironmentEnvironmentVariable>>? environmentVariables;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectEnvironmentFleet>? fleet;
  /// Docker image to use for this build project. Valid values
  /// include [Docker images provided by CodeBuild](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-available.html) (
  /// e.g `aws/codebuild/amazonlinux2-x86_64-standard:4.0`), [Docker Hub images](https://hub.docker.com/) (e.g.,
  /// `pulumi/pulumi:latest`), and full Docker repository URIs such as those for ECR (e.g.,
  /// `137112412989.dkr.ecr.us-west-2.amazonaws.com/amazonlinux:latest`).
  final pulumi.Input<String> image;
  /// Type of credentials AWS CodeBuild uses to pull images in your build. Valid
  /// values: `CODEBUILD`, `SERVICE_ROLE`. When you use a cross-account or private registry image, you must use SERVICE_ROLE
  /// credentials. When you use an AWS CodeBuild curated image, you must use CodeBuild credentials. Defaults to `CODEBUILD`.
  final pulumi.Input<String>? imagePullCredentialsType;
  /// Whether to enable running the Docker daemon inside a Docker container. Defaults to
  /// `false`.
  final pulumi.Input<bool>? privilegedMode;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectEnvironmentRegistryCredential>? registryCredential;
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
  /// [image] Docker image to use for this build project. Valid values
  /// [imagePullCredentialsType] Type of credentials AWS CodeBuild uses to pull images in your build. Valid
  /// [privilegedMode] Whether to enable running the Docker daemon inside a Docker container. Defaults to
  /// [registryCredential] Configuration block. Detailed below.
  /// [type] Type of build environment to use for related builds. Valid values: `WINDOWS_CONTAINER` (deprecated), `LINUX_CONTAINER`,
  ProjectEnvironment({
    this.certificate,
    required this.computeType,
    this.dockerServer,
    this.environmentVariables,
    this.fleet,
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
      'image': image,
      'imagePullCredentialsType': ?imagePullCredentialsType,
      'privilegedMode': ?privilegedMode,
      'registryCredential': ?pulumi.Input.mapOptionalInputValue<ProjectEnvironmentRegistryCredential, Map<String, dynamic>>(registryCredential, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ProjectEnvironment.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironment(
      certificate: map['certificate'] == null ? null : (map['certificate'] as String).input(),
      computeType: (map['computeType'] as String).input(),
      dockerServer: map['dockerServer'] == null ? null : (ProjectEnvironmentDockerServer.fromMap((map['dockerServer'] as Map).cast<String, dynamic>())).input(),
      environmentVariables: map['environmentVariables'] == null ? null : (pulumi.Input.decodeList<ProjectEnvironmentEnvironmentVariable>(map['environmentVariables'], (value) => ProjectEnvironmentEnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fleet: map['fleet'] == null ? null : (ProjectEnvironmentFleet.fromMap((map['fleet'] as Map).cast<String, dynamic>())).input(),
      image: (map['image'] as String).input(),
      imagePullCredentialsType: map['imagePullCredentialsType'] == null ? null : (map['imagePullCredentialsType'] as String).input(),
      privilegedMode: map['privilegedMode'] == null ? null : (map['privilegedMode'] as bool).input(),
      registryCredential: map['registryCredential'] == null ? null : (ProjectEnvironmentRegistryCredential.fromMap((map['registryCredential'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

