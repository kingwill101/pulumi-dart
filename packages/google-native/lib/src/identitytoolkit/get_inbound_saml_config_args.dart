// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identitytoolkit_v2_get_inbound_saml_config_args_doc}
/// Arguments for getInboundSamlConfig.
/// {@endtemplate}
/// {@macro pulumi_identitytoolkit_v2_get_inbound_saml_config_args_doc}
class GetInboundSamlConfigArgs {
  final pulumi.Input<String> inboundSamlConfigId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetInboundSamlConfigArgs].
  /// [inboundSamlConfigId] Required.
  /// [project] Optional.
  /// [tenantId] Required.
  GetInboundSamlConfigArgs({
    required String inboundSamlConfigId,
    String? project,
    required String tenantId,
  })  : inboundSamlConfigId = pulumi.Input.asInput<String>(inboundSamlConfigId),
        project = pulumi.Input.asOptionalInput<String>(project),
        tenantId = pulumi.Input.asInput<String>(tenantId);

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
      inboundSamlConfigId: map['inboundSamlConfigId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}
