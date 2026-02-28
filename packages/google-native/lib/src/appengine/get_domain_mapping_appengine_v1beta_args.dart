// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1beta_get_domain_mapping_appengine_v1beta_args_doc}
/// Arguments for getDomainMapping.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1beta_get_domain_mapping_appengine_v1beta_args_doc}
class GetDomainMappingAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> domainMappingId;

  /// Creates a new [GetDomainMappingAppengineV1betaArgs].
  /// [appId] Required.
  /// [domainMappingId] Required.
  GetDomainMappingAppengineV1betaArgs({
    required String appId,
    required String domainMappingId,
  })  : appId = pulumi.Input.asInput<String>(appId),
        domainMappingId = pulumi.Input.asInput<String>(domainMappingId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['domainMappingId'] = domainMappingId;
    return map;
  }

  factory GetDomainMappingAppengineV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetDomainMappingAppengineV1betaArgs(
      appId: map['appId'] as String,
      domainMappingId: map['domainMappingId'] as String,
    );
  }
}
