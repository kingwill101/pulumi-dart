// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAddonVersion.
class GetAddonVersionArgs {
  /// Name of the EKS add-on. The name must match one of
  /// the names returned by [list-addon](https://docs.aws.amazon.com/cli/latest/reference/eks/list-addons.html).
  final pulumi.Input<String> addonName;

  /// Version of the EKS Cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (`^[0-9A-Za-z][A-Za-z0-9\-_]+$`).
  final pulumi.Input<String> kubernetesVersion;

  /// Determines if the most recent or default version of the addon should be returned.
  final pulumi.Input<bool>? mostRecent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetAddonVersionArgs({
    required this.addonName,
    required this.kubernetesVersion,
    this.mostRecent,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addonName'] = addonName;
    map['kubernetesVersion'] = kubernetesVersion;
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetAddonVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetAddonVersionArgs(
      addonName: pulumi.Input.asInput<String>(map['addonName']),
      kubernetesVersion: pulumi.Input.asInput<String>(map['kubernetesVersion']),
      mostRecent: pulumi.Input.asOptionalInput<bool>(map['mostRecent']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
