// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAddonVersion.
class GetAddonVersionArgs {
  /// Name of the EKS add-on. The name must match one of
  /// the names returned by [list-addon](https://docs.aws.amazon.com/cli/latest/reference/eks/list-addons.html).
  final Input<String> addonName;

  /// Version of the EKS Cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (`^[0-9A-Za-z][A-Za-z0-9\-_]+$`).
  final Input<String> kubernetesVersion;

  /// Determines if the most recent or default version of the addon should be returned.
  final Input<bool>? mostRecent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      addonName: Input.asInput<String>(map['addonName']),
      kubernetesVersion: Input.asInput<String>(map['kubernetesVersion']),
      mostRecent: Input.asOptionalInput<bool>(map['mostRecent']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
