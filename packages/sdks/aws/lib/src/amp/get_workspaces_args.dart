// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amp_get_workspaces_get_workspaces_args_doc}
/// Arguments for getWorkspaces.
/// {@endtemplate}
/// {@macro pulumi_amp_get_workspaces_get_workspaces_args_doc}
class GetWorkspacesArgs {
  /// Limits results to workspaces with aliases that begin with this value.
  final pulumi.Input<String>? aliasPrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetWorkspacesArgs].
  /// [aliasPrefix] Limits results to workspaces with aliases that begin with this value.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetWorkspacesArgs({
    this.aliasPrefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasPrefix': ?aliasPrefix,
      'region': ?region,
    };
  }

  factory GetWorkspacesArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspacesArgs(
      aliasPrefix: map['aliasPrefix'] == null ? null : (map['aliasPrefix'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

