// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../aws_cluster_authorization/aws_cluster_authorization.dart';
import '../aws_cluster_binary_authorization/aws_cluster_binary_authorization.dart';
import '../aws_cluster_control_plane/aws_cluster_control_plane.dart';
import '../aws_cluster_fleet/aws_cluster_fleet.dart';
import '../aws_cluster_logging_config/aws_cluster_logging_config.dart';
import '../aws_cluster_networking/aws_cluster_networking.dart';

/// The set of arguments for AwsCluster.
class AwsClusterArgs {
  /// Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Configuration related to the cluster RBAC settings.
  final Input<AwsClusterAuthorization> authorization;

  /// The AWS region where the cluster runs. Each Google Cloud region supports a subset of nearby AWS regions. You can call to list all supported AWS regions within a given Google Cloud region.
  final Input<String> awsRegion;

  /// Configuration options for the Binary Authorization feature.
  final Input<AwsClusterBinaryAuthorization>? binaryAuthorization;

  /// Configuration related to the cluster control plane.
  final Input<AwsClusterControlPlane> controlPlane;

  /// Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  final Input<String>? description;

  /// Fleet configuration.
  final Input<AwsClusterFleet> fleet;

  /// The location for the resource
  final Input<String> location;

  /// Logging configuration.
  final Input<AwsClusterLoggingConfig>? loggingConfig;

  /// The name of this resource.
  final Input<String>? name;

  /// Cluster-wide networking configuration.
  final Input<AwsClusterNetworking> networking;

  /// The project for the resource
  final Input<String>? project;

  AwsClusterArgs({
    this.annotations,
    required this.authorization,
    required this.awsRegion,
    this.binaryAuthorization,
    required this.controlPlane,
    this.description,
    required this.fleet,
    required this.location,
    this.loggingConfig,
    this.name,
    required this.networking,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['authorization'] =
        Input.mapInputValue<AwsClusterAuthorization, Map<String, dynamic>>(
            authorization, (value) => value.toMap());
    map['awsRegion'] = awsRegion;
    final binaryAuthorizationValue = binaryAuthorization;
    if (binaryAuthorizationValue != null) {
      map['binaryAuthorization'] = Input.mapOptionalInputValue<
              AwsClusterBinaryAuthorization, Map<String, dynamic>>(
          binaryAuthorizationValue, (value) => value.toMap());
    }
    map['controlPlane'] =
        Input.mapInputValue<AwsClusterControlPlane, Map<String, dynamic>>(
            controlPlane, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['fleet'] = Input.mapInputValue<AwsClusterFleet, Map<String, dynamic>>(
        fleet, (value) => value.toMap());
    map['location'] = location;
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = Input.mapOptionalInputValue<
          AwsClusterLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networking'] =
        Input.mapInputValue<AwsClusterNetworking, Map<String, dynamic>>(
            networking, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AwsClusterArgs.fromMap(Map<String, dynamic> map) {
    return AwsClusterArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      authorization:
          Input.asInput<AwsClusterAuthorization>(map['authorization']),
      awsRegion: Input.asInput<String>(map['awsRegion']),
      binaryAuthorization: Input.asOptionalInput<AwsClusterBinaryAuthorization>(
          map['binaryAuthorization']),
      controlPlane: Input.asInput<AwsClusterControlPlane>(map['controlPlane']),
      description: Input.asOptionalInput<String>(map['description']),
      fleet: Input.asInput<AwsClusterFleet>(map['fleet']),
      location: Input.asInput<String>(map['location']),
      loggingConfig:
          Input.asOptionalInput<AwsClusterLoggingConfig>(map['loggingConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      networking: Input.asInput<AwsClusterNetworking>(map['networking']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
