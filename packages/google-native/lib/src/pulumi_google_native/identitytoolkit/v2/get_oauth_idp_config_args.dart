// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOauthIdpConfig.
class GetOauthIdpConfigArgs {
  final Input<String> oauthIdpConfigId;
  final Input<String>? project;
  final Input<String> tenantId;

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
      oauthIdpConfigId: Input.asInput<String>(map['oauthIdpConfigId']),
      project: Input.asOptionalInput<String>(map['project']),
      tenantId: Input.asInput<String>(map['tenantId']),
    );
  }
}
