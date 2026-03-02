// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acls_acl.dart';

/// Result data returned by getAcls.
class GetAclsResult {
  /// A list of Sag Acls. Each element contains the following attributes:
  final List<GetAclsAcl> acls;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Sag Acl IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of Sag Acls names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetAclsResult].
  /// [acls] A list of Sag Acls. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Sag Acl IDs.
  /// [nameRegex] Optional.
  /// [names] A list of Sag Acls names.
  /// [outputFile] Optional.
  GetAclsResult({
    required this.acls,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls': pulumi.Input.encodeList<GetAclsAcl, Map<String, dynamic>>(acls, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetAclsResult.fromMap(Map<String, dynamic> map) {
    return GetAclsResult(
      acls: pulumi.Input.decodeList<GetAclsAcl>(map['acls'], (value) => GetAclsAcl.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

