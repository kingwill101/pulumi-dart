// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acls_acl.dart';

/// Result data returned by getAcls.
class GetAclsResult {
  /// A list of SLB  acls. Each element contains the following attributes:
  final List<GetAclsAcl> acls;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of SLB acls IDs.
  final List<String> ids;
  final String? nameRegex;

  /// A list of SLB acls names.
  final List<String> names;
  final String? outputFile;

  /// Resource group ID.
  final String? resourceGroupId;

  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetAclsResult].
  /// [acls] A list of SLB  acls. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of SLB acls IDs.
  /// [nameRegex] Optional.
  /// [names] A list of SLB acls names.
  /// [outputFile] Optional.
  /// [resourceGroupId] Resource group ID.
  /// [tags] A mapping of tags to assign to the resource.
  GetAclsResult({
    required this.acls,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls': pulumi.Input.encodeList<GetAclsAcl, Map<String, dynamic>>(
        acls,
        (value) => value.toMap(),
      ),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetAclsResult.fromMap(Map<String, dynamic> map) {
    return GetAclsResult(
      acls: pulumi.Input.decodeList<GetAclsAcl>(
        map['acls']!,
        (value) => GetAclsAcl.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
    );
  }
}
