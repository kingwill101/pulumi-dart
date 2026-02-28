// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identitytoolkit_v2_get_default_supported_idp_config_args_doc}
/// Arguments for getDefaultSupportedIdpConfig.
/// {@endtemplate}
/// {@macro pulumi_identitytoolkit_v2_get_default_supported_idp_config_args_doc}
class GetDefaultSupportedIdpConfigArgs {
  final pulumi.Input<String> defaultSupportedIdpConfigId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetDefaultSupportedIdpConfigArgs].
  /// [defaultSupportedIdpConfigId] Required.
  /// [project] Optional.
  /// [tenantId] Required.
  GetDefaultSupportedIdpConfigArgs({
    required String defaultSupportedIdpConfigId,
    String? project,
    required String tenantId,
  }) :
      defaultSupportedIdpConfigId = pulumi.Input.asInput<String>(defaultSupportedIdpConfigId),
      project = pulumi.Input.asOptionalInput<String>(project),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultSupportedIdpConfigId': defaultSupportedIdpConfigId,
      'project': ?project,
      'tenantId': tenantId,
    };
  }

  factory GetDefaultSupportedIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultSupportedIdpConfigArgs(
      defaultSupportedIdpConfigId: map['defaultSupportedIdpConfigId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

