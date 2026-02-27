// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for IdentityAwareProxyClient.
class IdentityAwareProxyClientArgs {
  final pulumi.Input<String> brandId;

  /// Human-friendly name given to the OAuth client.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? project;

  IdentityAwareProxyClientArgs({
    required this.brandId,
    this.displayName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['brandId'] = brandId;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory IdentityAwareProxyClientArgs.fromMap(Map<String, dynamic> map) {
    return IdentityAwareProxyClientArgs(
      brandId: pulumi.Input.asInput<String>(map['brandId']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
