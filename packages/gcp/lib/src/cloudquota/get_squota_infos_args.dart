// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudquota_get_squota_infos_get_squota_infos_args_doc}
/// Arguments for getSQuotaInfos.
/// {@endtemplate}
/// {@macro pulumi_cloudquota_get_squota_infos_get_squota_infos_args_doc}
class GetSQuotaInfosArgs {
  /// Parent value of QuotaInfo resources. Listing across different resource containers (such as 'projects/-') is not allowed. Allowed parents are "projects/[project-id / number]" or "folders/[folder-id / number]" or "organizations/[org-id / number].
  final pulumi.Input<String> parent;
  /// The name of the service in which the quotas are defined.
  final pulumi.Input<String> service;

  /// Creates a new [GetSQuotaInfosArgs].
  /// [parent] Parent value of QuotaInfo resources. Listing across different resource containers (such as 'projects/-') is not allowed. Allowed parents are "projects/[project-id / number]" or "folders/[folder-id / number]" or "organizations/[org-id / number].
  /// [service] The name of the service in which the quotas are defined.
  GetSQuotaInfosArgs({
    required String parent,
    required String service,
  }) :
      parent = pulumi.Input.asInput<String>(parent),
      service = pulumi.Input.asInput<String>(service);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
      'service': service,
    };
  }

  factory GetSQuotaInfosArgs.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfosArgs(
      parent: map['parent'] as String,
      service: map['service'] as String,
    );
  }
}

