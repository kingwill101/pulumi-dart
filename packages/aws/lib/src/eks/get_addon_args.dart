// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eks_get_addon_get_addon_args_doc}
/// Arguments for getAddon.
/// {@endtemplate}
/// {@macro pulumi_eks_get_addon_get_addon_args_doc}
class GetAddonArgs {
  /// Name of the EKS add-on. The name must match one of
  /// the names returned by [list-addon](https://docs.aws.amazon.com/cli/latest/reference/eks/list-addons.html).
  final pulumi.Input<String> addonName;

  /// Name of the EKS Cluster.
  final pulumi.Input<String> clusterName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetAddonArgs].
  /// [addonName] Name of the EKS add-on. The name must match one of
  /// [clusterName] Name of the EKS Cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  GetAddonArgs({
    required String addonName,
    required String clusterName,
    String? region,
    Map<String, String>? tags,
  }) : addonName = pulumi.Input.asInput<String>(addonName),
       clusterName = pulumi.Input.asInput<String>(clusterName),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': addonName,
      'clusterName': clusterName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetAddonArgs.fromMap(Map<String, dynamic> map) {
    return GetAddonArgs(
      addonName: map['addonName'] as String,
      clusterName: map['clusterName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
