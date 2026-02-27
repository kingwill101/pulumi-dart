// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDomain.
class GetDomainArgs {
  final Input<String> domainId;
  final Input<String>? project;
  final Input<String> siteId;

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
      domainId: Input.asInput<String>(map['domainId']),
      project: Input.asOptionalInput<String>(map['project']),
      siteId: Input.asInput<String>(map['siteId']),
    );
  }
}
