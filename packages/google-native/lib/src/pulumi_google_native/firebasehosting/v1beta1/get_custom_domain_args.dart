// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCustomDomain.
class GetCustomDomainArgs {
  final Input<String> customDomainId;
  final Input<String>? project;
  final Input<String> siteId;

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
      customDomainId: Input.asInput<String>(map['customDomainId']),
      project: Input.asOptionalInput<String>(map['project']),
      siteId: Input.asInput<String>(map['siteId']),
    );
  }
}
