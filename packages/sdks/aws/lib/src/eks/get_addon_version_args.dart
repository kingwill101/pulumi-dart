// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eks_get_addon_version_get_addon_version_args_doc}
/// Arguments for getAddonVersion.
/// {@endtemplate}
/// {@macro pulumi_eks_get_addon_version_get_addon_version_args_doc}
class GetAddonVersionArgs {
  /// Name of the EKS add-on. The name must match one of
  /// the names returned by [list-addon](https://docs.aws.amazon.com/cli/latest/reference/eks/list-addons.html).
  final pulumi.Input<String> addonName;
  /// Version of the EKS Cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (`^[0-9A-Za-z][A-Za-z0-9\-_]+$`).
  final pulumi.Input<String> kubernetesVersion;
  /// Determines if the most recent or default version of the addon should be returned.
  final pulumi.Input<bool?>? mostRecent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetAddonVersionArgs].
  /// [addonName] Name of the EKS add-on. The name must match one of
  /// [kubernetesVersion] Version of the EKS Cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (`^[0-9A-Za-z][A-Za-z0-9\-_]+$`).
  /// [mostRecent] Determines if the most recent or default version of the addon should be returned.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetAddonVersionArgs({
    required this.addonName,
    required this.kubernetesVersion,
    this.mostRecent,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': addonName,
      'kubernetesVersion': kubernetesVersion,
      'mostRecent': ?mostRecent,
      'region': ?region,
    };
  }

  factory GetAddonVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetAddonVersionArgs(
      addonName: pulumi.Input.fromValue(map['addonName'] as String),
      kubernetesVersion: pulumi.Input.fromValue(map['kubernetesVersion'] as String),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
