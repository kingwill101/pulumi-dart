// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkspaces.
class GetWorkspacesArgs {
  /// Limits results to workspaces with aliases that begin with this value.
  final pulumi.Input<String>? aliasPrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetWorkspacesArgs({
    this.aliasPrefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aliasPrefixValue = aliasPrefix;
    if (aliasPrefixValue != null) {
      map['aliasPrefix'] = aliasPrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetWorkspacesArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspacesArgs(
      aliasPrefix: pulumi.Input.asOptionalInput<String>(map['aliasPrefix']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
