// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInboundSamlConfig.
class GetInboundSamlConfigArgs {
  final pulumi.Input<String> inboundSamlConfigId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  GetInboundSamlConfigArgs({
    required this.inboundSamlConfigId,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inboundSamlConfigId'] = inboundSamlConfigId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tenantId'] = tenantId;
    return map;
  }

  factory GetInboundSamlConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetInboundSamlConfigArgs(
      inboundSamlConfigId:
          pulumi.Input.asInput<String>(map['inboundSamlConfigId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tenantId: pulumi.Input.asInput<String>(map['tenantId']),
    );
  }
}
