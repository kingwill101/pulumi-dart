// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_cluster_domain_config.dart';
import 'workstation_cluster_private_cluster_config.dart';

/// {@template pulumi_workstations_workstation_cluster_workstation_cluster_args_doc}
/// The set of arguments for WorkstationCluster.
/// {@endtemplate}
/// {@macro pulumi_workstations_workstation_cluster_workstation_cluster_args_doc}
class WorkstationClusterArgs {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Human-readable name for this resource.
  final pulumi.Input<String>? displayName;

  /// Configuration options for a custom domain.
  /// Structure is documented below.
  final pulumi.Input<WorkstationClusterDomainConfig>? domainConfig;

  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the workstation cluster should reside.
  final pulumi.Input<String>? location;

  /// The relative resource name of the VPC network on which the instance can be accessed.
  /// It is specified in the following form: "projects/{projectNumber}/global/networks/{network_id}".
  final pulumi.Input<String> network;

  /// Configuration for private cluster.
  /// Structure is documented below.
  final pulumi.Input<WorkstationClusterPrivateClusterConfig>?
  privateClusterConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Name of the Compute Engine subnetwork in which instances associated with this cluster will be created.
  /// Must be part of the subnetwork specified for this cluster.
  final pulumi.Input<String> subnetwork;

  /// Resource manager tags bound to this resource.
  /// For example:
  /// "123/environment": "production",
  /// "123/costCenter": "marketing"
  final pulumi.Input<Map<String, String>>? tags;

  /// ID to use for the workstation cluster.
  final pulumi.Input<String> workstationClusterId;

  /// Creates a new [WorkstationClusterArgs].
  /// [annotations] Client-specified annotations. This is distinct from labels.
  /// [displayName] Human-readable name for this resource.
  /// [domainConfig] Configuration options for a custom domain.
  /// [labels] Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// [location] The location where the workstation cluster should reside.
  /// [network] The relative resource name of the VPC network on which the instance can be accessed.
  /// [privateClusterConfig] Configuration for private cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [subnetwork] Name of the Compute Engine subnetwork in which instances associated with this cluster will be created.
  /// [tags] Resource manager tags bound to this resource.
  /// [workstationClusterId] ID to use for the workstation cluster.
  WorkstationClusterArgs({
    Map<String, String>? annotations,
    String? displayName,
    WorkstationClusterDomainConfig? domainConfig,
    Map<String, String>? labels,
    String? location,
    required String network,
    WorkstationClusterPrivateClusterConfig? privateClusterConfig,
    String? project,
    required String subnetwork,
    Map<String, String>? tags,
    required String workstationClusterId,
  }) : annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       domainConfig = pulumi
           .Input.asOptionalInput<WorkstationClusterDomainConfig>(domainConfig),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       network = pulumi.Input.asInput<String>(network),
       privateClusterConfig =
           pulumi.Input.asOptionalInput<WorkstationClusterPrivateClusterConfig>(
             privateClusterConfig,
           ),
       project = pulumi.Input.asOptionalInput<String>(project),
       subnetwork = pulumi.Input.asInput<String>(subnetwork),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       workstationClusterId = pulumi.Input.asInput<String>(
         workstationClusterId,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'displayName': ?displayName,
      'domainConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WorkstationClusterDomainConfig,
            Map<String, dynamic>
          >(domainConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'network': network,
      'privateClusterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WorkstationClusterPrivateClusterConfig,
            Map<String, dynamic>
          >(privateClusterConfig, (value) => value.toMap()),
      'project': ?project,
      'subnetwork': subnetwork,
      'tags': ?tags,
      'workstationClusterId': workstationClusterId,
    };
  }

  factory WorkstationClusterArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      domainConfig: map['domainConfig'] == null
          ? null
          : WorkstationClusterDomainConfig.fromMap(
              (map['domainConfig'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      network: map['network'] as String,
      privateClusterConfig: map['privateClusterConfig'] == null
          ? null
          : WorkstationClusterPrivateClusterConfig.fromMap(
              (map['privateClusterConfig'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      subnetwork: map['subnetwork'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      workstationClusterId: map['workstationClusterId'] as String,
    );
  }
}
