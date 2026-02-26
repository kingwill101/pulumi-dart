// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSQuotaInfo.
class GetSQuotaInfoArgs {
  /// The parent of the quota info. Allowed parents are "projects/[project-id / number]" or "folders/[folder-id / number]" or "organizations/[org-id / number].
  final Input<String> parent;

  /// The id of the quota, which is unique within the service.
  final Input<String> quotaId;

  /// The name of the service in which the quota is defined.
  final Input<String> service;

  GetSQuotaInfoArgs({
    required this.parent,
    required this.quotaId,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    map['quotaId'] = quotaId;
    map['service'] = service;
    return map;
  }

  factory GetSQuotaInfoArgs.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfoArgs(
      parent: Input.asInput<String>(map['parent']),
      quotaId: Input.asInput<String>(map['quotaId']),
      service: Input.asInput<String>(map['service']),
    );
  }
}
