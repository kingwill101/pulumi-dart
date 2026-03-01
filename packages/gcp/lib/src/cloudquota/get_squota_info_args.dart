// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudquota_get_squota_info_get_squota_info_args_doc}
/// Arguments for getSQuotaInfo.
/// {@endtemplate}
/// {@macro pulumi_cloudquota_get_squota_info_get_squota_info_args_doc}
class GetSQuotaInfoArgs {
  /// The parent of the quota info. Allowed parents are "projects/[project-id / number]" or "folders/[folder-id / number]" or "organizations/[org-id / number].
  final pulumi.Input<String> parent;
  /// The id of the quota, which is unique within the service.
  final pulumi.Input<String> quotaId;
  /// The name of the service in which the quota is defined.
  final pulumi.Input<String> service;

  /// Creates a new [GetSQuotaInfoArgs].
  /// [parent] The parent of the quota info. Allowed parents are "projects/[project-id / number]" or "folders/[folder-id / number]" or "organizations/[org-id / number].
  /// [quotaId] The id of the quota, which is unique within the service.
  /// [service] The name of the service in which the quota is defined.
  GetSQuotaInfoArgs({
    required String parent,
    required String quotaId,
    required String service,
  }) :
      parent = pulumi.Input.asInput<String>(parent),
      quotaId = pulumi.Input.asInput<String>(quotaId),
      service = pulumi.Input.asInput<String>(service);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
      'quotaId': quotaId,
      'service': service,
    };
  }

  factory GetSQuotaInfoArgs.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfoArgs(
      parent: map['parent'] as String,
      quotaId: map['quotaId'] as String,
      service: map['service'] as String,
    );
  }
}

