// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../project_environment_docker_server/project_environment_docker_server.dart';
import '../project_environment_environment_variable/project_environment_environment_variable.dart';
import '../project_environment_fleet/project_environment_fleet.dart';
import '../project_environment_registry_credential/project_environment_registry_credential.dart';

class ProjectEnvironment {
  /// ARN of the S3 bucket, path prefix and object key that contains the PEM-encoded certificate.
  final String? certificate;

  /// Information about the compute resources the build project will use. Valid values:
  /// `BUILD_GENERAL1_SMALL`, `BUILD_GENERAL1_MEDIUM`, `BUILD_GENERAL1_LARGE`, `BUILD_GENERAL1_XLARGE`, `BUILD_GENERAL1_2XLARGE`, `BUILD_LAMBDA_1GB`,
  /// `BUILD_LAMBDA_2GB`, `BUILD_LAMBDA_4GB`, `BUILD_LAMBDA_8GB`, `BUILD_LAMBDA_10GB`. For additional information, see
  /// the [CodeBuild User Guide](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html).
  final String computeType;

  /// Configuration block. Detailed below.
  final ProjectEnvironmentDockerServer? dockerServer;

  /// Configuration block. Detailed below.
  final List<ProjectEnvironmentEnvironmentVariable>? environmentVariables;

  /// Configuration block. Detailed below.
  final ProjectEnvironmentFleet? fleet;

  /// Docker image to use for this build project. Valid values
  /// include [Docker images provided by CodeBuild](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-available.html) (
  /// e.g `aws/codebuild/amazonlinux2-x86_64-standard:4.0`), [Docker Hub images](https://hub.docker.com/) (e.g.,
  /// `pulumi/pulumi:latest`), and full Docker repository URIs such as those for ECR (e.g.,
  /// `137112412989.dkr.ecr.us-west-2.amazonaws.com/amazonlinux:latest`).
  final String image;

  /// Type of credentials AWS CodeBuild uses to pull images in your build. Valid
  /// values: `CODEBUILD`, `SERVICE_ROLE`. When you use a cross-account or private registry image, you must use SERVICE_ROLE
  /// credentials. When you use an AWS CodeBuild curated image, you must use CodeBuild credentials. Defaults to `CODEBUILD`.
  final String? imagePullCredentialsType;

  /// Whether to enable running the Docker daemon inside a Docker container. Defaults to
  /// `false`.
  final bool? privilegedMode;

  /// Configuration block. Detailed below.
  final ProjectEnvironmentRegistryCredential? registryCredential;

  /// Type of build environment to use for related builds. Valid values: `WINDOWS_CONTAINER` (deprecated), `LINUX_CONTAINER`,
  /// `LINUX_GPU_CONTAINER`, `ARM_CONTAINER`, `WINDOWS_SERVER_2019_CONTAINER`, `WINDOWS_SERVER_2022_CONTAINER`,
  /// `LINUX_LAMBDA_CONTAINER`, `ARM_LAMBDA_CONTAINER`, `LINUX_EC2`, `ARM_EC2`, `WINDOWS_EC2`, `MAC_ARM`. For additional information, see
  /// the [CodeBuild User Guide](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html).
  final String type;

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
    final map = <String, dynamic>{};
    final certificateValue = certificate;
    if (certificateValue != null) {
      map['certificate'] = certificateValue;
    }
    map['computeType'] = computeType;
    final dockerServerValue = dockerServer;
    if (dockerServerValue != null) {
      map['dockerServer'] = dockerServerValue.toMap();
    }
    final environmentVariablesValue = environmentVariables;
    if (environmentVariablesValue != null) {
      map['environmentVariables'] = Input.encodeList<
              ProjectEnvironmentEnvironmentVariable, Map<String, dynamic>>(
          environmentVariablesValue, (value) => value.toMap());
    }
    final fleetValue = fleet;
    if (fleetValue != null) {
      map['fleet'] = fleetValue.toMap();
    }
    map['image'] = image;
    final imagePullCredentialsTypeValue = imagePullCredentialsType;
    if (imagePullCredentialsTypeValue != null) {
      map['imagePullCredentialsType'] = imagePullCredentialsTypeValue;
    }
    final privilegedModeValue = privilegedMode;
    if (privilegedModeValue != null) {
      map['privilegedMode'] = privilegedModeValue;
    }
    final registryCredentialValue = registryCredential;
    if (registryCredentialValue != null) {
      map['registryCredential'] = registryCredentialValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory ProjectEnvironment.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironment(
      certificate:
          map['certificate'] == null ? null : map['certificate'] as String,
      computeType: map['computeType'] as String,
      dockerServer: map['dockerServer'] == null
          ? null
          : ProjectEnvironmentDockerServer.fromMap(
              (map['dockerServer'] as Map).cast<String, dynamic>()),
      environmentVariables: map['environmentVariables'] == null
          ? null
          : Input.decodeList<ProjectEnvironmentEnvironmentVariable>(
              map['environmentVariables'],
              (value) => ProjectEnvironmentEnvironmentVariable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      fleet: map['fleet'] == null
          ? null
          : ProjectEnvironmentFleet.fromMap(
              (map['fleet'] as Map).cast<String, dynamic>()),
      image: map['image'] as String,
      imagePullCredentialsType: map['imagePullCredentialsType'] == null
          ? null
          : map['imagePullCredentialsType'] as String,
      privilegedMode:
          map['privilegedMode'] == null ? null : map['privilegedMode'] as bool,
      registryCredential: map['registryCredential'] == null
          ? null
          : ProjectEnvironmentRegistryCredential.fromMap(
              (map['registryCredential'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
