// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDomain.
class GetDomainManagedidentitiesV1beta1Args {
  final pulumi.Input<String> domainId;
  final pulumi.Input<String>? project;

  GetDomainManagedidentitiesV1beta1Args({
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

  factory GetDomainManagedidentitiesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetDomainManagedidentitiesV1beta1Args(
      domainId: pulumi.Input.asInput<String>(map['domainId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
