// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInboundSamlConfig.
class GetInboundSamlConfigArgs {
  final Input<String> inboundSamlConfigId;
  final Input<String>? project;
  final Input<String> tenantId;

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
      inboundSamlConfigId: Input.asInput<String>(map['inboundSamlConfigId']),
      project: Input.asOptionalInput<String>(map['project']),
      tenantId: Input.asInput<String>(map['tenantId']),
    );
  }
}
