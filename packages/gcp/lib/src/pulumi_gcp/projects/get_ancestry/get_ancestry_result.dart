// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_ancestry_ancestor/get_ancestry_ancestor.dart';

/// Result data returned by getAncestry.
class GetAncestryResult {
  /// A list of the project's ancestors. Structure is defined below.
  final List<GetAncestryAncestor> ancestors;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The organization id.
  final String orgId;

  /// The parent's id.
  final String parentId;

  /// One of `"folder"` or `"organization"`.
  final String parentType;
  final String? project;

  GetAncestryResult({
    required this.ancestors,
    required this.id,
    required this.orgId,
    required this.parentId,
    required this.parentType,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ancestors'] =
        Input.encodeList<GetAncestryAncestor, Map<String, dynamic>>(
            ancestors, (value) => value.toMap());
    map['id'] = id;
    map['orgId'] = orgId;
    map['parentId'] = parentId;
    map['parentType'] = parentType;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAncestryResult.fromMap(Map<String, dynamic> map) {
    return GetAncestryResult(
      ancestors: Input.decodeList<GetAncestryAncestor>(
          map['ancestors'],
          (value) => GetAncestryAncestor.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      orgId: map['orgId'] as String,
      parentId: map['parentId'] as String,
      parentType: map['parentType'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
