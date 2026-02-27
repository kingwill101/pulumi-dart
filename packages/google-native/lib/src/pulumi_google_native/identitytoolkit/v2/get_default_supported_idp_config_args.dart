// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDefaultSupportedIdpConfig.
class GetDefaultSupportedIdpConfigArgs {
  final pulumi.Input<String> defaultSupportedIdpConfigId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  GetDefaultSupportedIdpConfigArgs({
    required this.defaultSupportedIdpConfigId,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultSupportedIdpConfigId'] = defaultSupportedIdpConfigId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tenantId'] = tenantId;
    return map;
  }

  factory GetDefaultSupportedIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultSupportedIdpConfigArgs(
      defaultSupportedIdpConfigId:
          pulumi.Input.asInput<String>(map['defaultSupportedIdpConfigId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tenantId: pulumi.Input.asInput<String>(map['tenantId']),
    );
  }
}
