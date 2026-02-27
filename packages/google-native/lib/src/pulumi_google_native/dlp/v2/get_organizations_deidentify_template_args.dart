// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationsDeidentifyTemplate.
class GetOrganizationsDeidentifyTemplateArgs {
  final pulumi.Input<String> deidentifyTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

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
      deidentifyTemplateId:
          pulumi.Input.asInput<String>(map['deidentifyTemplateId']),
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
