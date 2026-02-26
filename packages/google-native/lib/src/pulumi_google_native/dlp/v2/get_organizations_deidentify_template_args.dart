// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationsDeidentifyTemplate.
class GetOrganizationsDeidentifyTemplateArgs {
  final Input<String> deidentifyTemplateId;
  final Input<String> location;
  final Input<String> organizationId;

  GetOrganizationsDeidentifyTemplateArgs({
    required this.deidentifyTemplateId,
    required this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deidentifyTemplateId'] = deidentifyTemplateId;
    map['location'] = location;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationsDeidentifyTemplateArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationsDeidentifyTemplateArgs(
      deidentifyTemplateId: Input.asInput<String>(map['deidentifyTemplateId']),
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
