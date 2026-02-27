// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getClusterVersions.
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

  GetClusterVersionsArgs({
    this.clusterType,
    this.clusterVersionsOnlies,
    this.defaultOnly,
    this.includeAll,
    this.region,
    this.versionStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterTypeValue = clusterType;
    if (clusterTypeValue != null) {
      map['clusterType'] = clusterTypeValue;
    }
    final clusterVersionsOnliesValue = clusterVersionsOnlies;
    if (clusterVersionsOnliesValue != null) {
      map['clusterVersionsOnlies'] = clusterVersionsOnliesValue;
    }
    final defaultOnlyValue = defaultOnly;
    if (defaultOnlyValue != null) {
      map['defaultOnly'] = defaultOnlyValue;
    }
    final includeAllValue = includeAll;
    if (includeAllValue != null) {
      map['includeAll'] = includeAllValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final versionStatusValue = versionStatus;
    if (versionStatusValue != null) {
      map['versionStatus'] = versionStatusValue;
    }
    return map;
  }

  factory GetClusterVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsArgs(
      clusterType: pulumi.Input.asOptionalInput<String>(map['clusterType']),
      clusterVersionsOnlies: pulumi.Input.asOptionalInput<List<String>>(
          map['clusterVersionsOnlies']),
      defaultOnly: pulumi.Input.asOptionalInput<bool>(map['defaultOnly']),
      includeAll: pulumi.Input.asOptionalInput<bool>(map['includeAll']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      versionStatus: pulumi.Input.asOptionalInput<String>(map['versionStatus']),
    );
  }
}
