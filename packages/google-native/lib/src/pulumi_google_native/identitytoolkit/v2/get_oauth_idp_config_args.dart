// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOauthIdpConfig.
class GetOauthIdpConfigArgs {
  final pulumi.Input<String> oauthIdpConfigId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  GetOauthIdpConfigArgs({
    required this.oauthIdpConfigId,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oauthIdpConfigId'] = oauthIdpConfigId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tenantId'] = tenantId;
    return map;
  }

  factory GetOauthIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetOauthIdpConfigArgs(
      oauthIdpConfigId: pulumi.Input.asInput<String>(map['oauthIdpConfigId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tenantId: pulumi.Input.asInput<String>(map['tenantId']),
    );
  }
}
