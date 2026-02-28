// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eks_get_clusters_get_clusters_args_doc}
/// Arguments for getClusters.
/// {@endtemplate}
/// {@macro pulumi_eks_get_clusters_get_clusters_args_doc}
class GetClustersArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetClustersArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetClustersArgs({
    String? region,
  }) : region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetClustersArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
