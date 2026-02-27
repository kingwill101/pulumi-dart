// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAddon.
class GetAddonArgs {
  /// Name of the EKS add-on. The name must match one of
  /// the names returned by [list-addon](https://docs.aws.amazon.com/cli/latest/reference/eks/list-addons.html).
  final pulumi.Input<String> addonName;

  /// Name of the EKS Cluster.
  final pulumi.Input<String> clusterName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  GetAddonArgs({
    required this.addonName,
    required this.clusterName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addonName'] = addonName;
    map['clusterName'] = clusterName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetAddonArgs.fromMap(Map<String, dynamic> map) {
    return GetAddonArgs(
      addonName: pulumi.Input.asInput<String>(map['addonName']),
      clusterName: pulumi.Input.asInput<String>(map['clusterName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
