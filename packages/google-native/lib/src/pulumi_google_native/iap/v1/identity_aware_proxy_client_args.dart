// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IdentityAwareProxyClient.
class IdentityAwareProxyClientArgs {
  final Input<String> brandId;

  /// Human-friendly name given to the OAuth client.
  final Input<String>? displayName;
  final Input<String>? project;

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
      brandId: Input.asInput<String>(map['brandId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
