// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directory_role_templates_role_template.dart';

/// Result data returned by getDirectoryRoleTemplates.
class GetDirectoryRoleTemplatesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The object IDs of the role templates.
  final List<String> objectIds;
  /// A list of role templates. Each `role_template` object provides the attributes documented below.
  final List<GetDirectoryRoleTemplatesRoleTemplate> roleTemplates;

  /// Creates a new [GetDirectoryRoleTemplatesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectIds] The object IDs of the role templates.
  /// [roleTemplates] A list of role templates. Each `role_template` object provides the attributes documented below.
  GetDirectoryRoleTemplatesResult({
    required this.id,
    required this.objectIds,
    required this.roleTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'objectIds': objectIds,
      'roleTemplates': pulumi.Input.encodeList<GetDirectoryRoleTemplatesRoleTemplate, Map<String, dynamic>>(roleTemplates, (value) => value.toMap()),
    };
  }

  factory GetDirectoryRoleTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoryRoleTemplatesResult(
      id: map['id'] as String,
      objectIds: (map['objectIds'] as List).cast<String>(),
      roleTemplates: pulumi.Input.decodeList<GetDirectoryRoleTemplatesRoleTemplate>(map['roleTemplates'], (value) => GetDirectoryRoleTemplatesRoleTemplate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

