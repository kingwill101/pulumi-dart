// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acls_acl.dart';

/// Result data returned by getAcls.
class GetAclsResult {
  /// The name of the acl.
  final String? aclName;
  /// A list of Ga Acls. Each element contains the following attributes:
  final List<GetAclsAcl> acls;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Acl names.
  final List<String> names;
  final String? outputFile;
  /// The status of the resource.
  final String? status;

  /// Creates a new [GetAclsResult].
  /// [aclName] The name of the acl.
  /// [acls] A list of Ga Acls. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Acl names.
  /// [outputFile] Optional.
  /// [status] The status of the resource.
  const GetAclsResult({
    this.aclName,
    required this.acls,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclName': ?aclName,
      'acls': pulumi.Input.encodeList<GetAclsAcl, Map<String, dynamic>>(acls, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAclsResult.fromMap(Map<String, dynamic> map) {
    return GetAclsResult(
      aclName: (() { final guardedValue = map['aclName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      acls: pulumi.Input.decodeList<GetAclsAcl>(map['acls']!, (value) => GetAclsAcl.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

