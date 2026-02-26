// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDomain.
class GetDomainArgs2 {
  final Input<String> domainId;
  final Input<String>? project;

  GetDomainArgs2({
    required this.domainId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainId'] = domainId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDomainArgs2.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs2(
      domainId: Input.asInput<String>(map['domainId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
