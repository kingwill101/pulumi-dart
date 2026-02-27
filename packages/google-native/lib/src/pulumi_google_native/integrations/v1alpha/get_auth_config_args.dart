// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAuthConfig.
class GetAuthConfigArgs {
  final pulumi.Input<String> authConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  GetAuthConfigArgs({
    required this.authConfigId,
    required this.location,
    required this.productId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authConfigId'] = authConfigId;
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAuthConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthConfigArgs(
      authConfigId: pulumi.Input.asInput<String>(map['authConfigId']),
      location: pulumi.Input.asInput<String>(map['location']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
