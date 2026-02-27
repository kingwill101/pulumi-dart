// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCustomDomain.
class GetCustomDomainArgs {
  final pulumi.Input<String> customDomainId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;

  GetCustomDomainArgs({
    required this.customDomainId,
    this.project,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customDomainId'] = customDomainId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['siteId'] = siteId;
    return map;
  }

  factory GetCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainArgs(
      customDomainId: pulumi.Input.asInput<String>(map['customDomainId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
    );
  }
}
