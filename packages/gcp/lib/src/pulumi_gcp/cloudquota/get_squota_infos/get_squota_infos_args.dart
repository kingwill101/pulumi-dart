// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSQuotaInfos.
class GetSQuotaInfosArgs {
  /// Parent value of QuotaInfo resources. Listing across different resource containers (such as 'projects/-') is not allowed. Allowed parents are "projects/[project-id / number]" or "folders/[folder-id / number]" or "organizations/[org-id / number].
  final pulumi.Input<String> parent;

  /// The name of the service in which the quotas are defined.
  final pulumi.Input<String> service;

  GetSQuotaInfosArgs({
    required this.parent,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    map['service'] = service;
    return map;
  }

  factory GetSQuotaInfosArgs.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfosArgs(
      parent: pulumi.Input.asInput<String>(map['parent']),
      service: pulumi.Input.asInput<String>(map['service']),
    );
  }
}
