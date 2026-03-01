// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eks_get_cluster_versions_get_cluster_versions_args_doc}
/// Arguments for getClusterVersions.
/// {@endtemplate}
/// {@macro pulumi_eks_get_cluster_versions_get_cluster_versions_args_doc}
class GetClusterVersionsArgs {
  /// Type of clusters to filter by.
  /// Currently, the only valid value is `eks`.
  final pulumi.Input<String>? clusterType;
  final pulumi.Input<List<String>>? clusterVersionsOnlies;
  /// Whether to show only the default versions of Kubernetes supported by EKS.
  final pulumi.Input<bool>? defaultOnly;
  /// Whether to include all kubernetes versions in the response.
  final pulumi.Input<bool>? includeAll;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of the EKS cluster versions to list.
  /// Valid values are `STANDARD_SUPPORT` or `UNSUPPORTED` or `EXTENDED_SUPPORT`.
  final pulumi.Input<String>? versionStatus;

  /// Creates a new [GetClusterVersionsArgs].
  /// [clusterType] Type of clusters to filter by.
  /// [clusterVersionsOnlies] Optional.
  /// [defaultOnly] Whether to show only the default versions of Kubernetes supported by EKS.
  /// [includeAll] Whether to include all kubernetes versions in the response.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [versionStatus] Status of the EKS cluster versions to list.
  GetClusterVersionsArgs({
    pulumi.Output<String>? clusterType,
    pulumi.Output<List<String>>? clusterVersionsOnlies,
    pulumi.Output<bool>? defaultOnly,
    pulumi.Output<bool>? includeAll,
    pulumi.Output<String>? region,
    pulumi.Output<String>? versionStatus,
  }) :
      clusterType = pulumi.Input.asOptionalInput<String>(clusterType),
      clusterVersionsOnlies = pulumi.Input.asOptionalInput<List<String>>(clusterVersionsOnlies),
      defaultOnly = pulumi.Input.asOptionalInput<bool>(defaultOnly),
      includeAll = pulumi.Input.asOptionalInput<bool>(includeAll),
      region = pulumi.Input.asOptionalInput<String>(region),
      versionStatus = pulumi.Input.asOptionalInput<String>(versionStatus);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': ?clusterType,
      'clusterVersionsOnlies': ?clusterVersionsOnlies,
      'defaultOnly': ?defaultOnly,
      'includeAll': ?includeAll,
      'region': ?region,
      'versionStatus': ?versionStatus,
    };
  }

  factory GetClusterVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsArgs(
      clusterType: map['clusterType'] == null ? null : pulumi.Output.create<String>(map['clusterType'] as String),
      clusterVersionsOnlies: map['clusterVersionsOnlies'] == null ? null : pulumi.Output.create<List<String>>((map['clusterVersionsOnlies'] as List).cast<String>()),
      defaultOnly: map['defaultOnly'] == null ? null : pulumi.Output.create<bool>(map['defaultOnly'] as bool),
      includeAll: map['includeAll'] == null ? null : pulumi.Output.create<bool>(map['includeAll'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      versionStatus: map['versionStatus'] == null ? null : pulumi.Output.create<String>(map['versionStatus'] as String),
    );
  }
}

