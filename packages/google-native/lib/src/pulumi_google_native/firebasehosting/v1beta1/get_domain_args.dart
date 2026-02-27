// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDomain.
class GetDomainArgs {
  final pulumi.Input<String> domainId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;

  GetDomainArgs({
    required this.domainId,
    this.project,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainId'] = domainId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['siteId'] = siteId;
    return map;
  }

  factory GetDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs(
      domainId: pulumi.Input.asInput<String>(map['domainId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
    );
  }
}
