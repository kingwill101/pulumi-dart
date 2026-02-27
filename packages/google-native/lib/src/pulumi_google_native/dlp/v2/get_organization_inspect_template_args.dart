// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationInspectTemplate.
class GetOrganizationInspectTemplateArgs {
  final Input<String> inspectTemplateId;
  final Input<String> location;
  final Input<String> organizationId;

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
      inspectTemplateId: Input.asInput<String>(map['inspectTemplateId']),
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
