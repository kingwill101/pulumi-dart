// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationInspectTemplate.
class GetOrganizationInspectTemplateArgs {
  final pulumi.Input<String> inspectTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  GetOrganizationInspectTemplateArgs({
    required this.inspectTemplateId,
    required this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inspectTemplateId'] = inspectTemplateId;
    map['location'] = location;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationInspectTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationInspectTemplateArgs(
      inspectTemplateId: pulumi.Input.asInput<String>(map['inspectTemplateId']),
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
