// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sasl_acls_acl.dart';

/// Result data returned by getSaslAcls.
class GetSaslAclsResult {
  /// The resource name of the sasl acl.
  final String aclResourceName;
  /// The resource type of the sasl acl.
  final String aclResourceType;
  /// A list of sasl acls. Each element contains the following attributes:
  final List<GetSaslAclsAcl> acls;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String? outputFile;
  /// The username of the sasl acl.
  final String username;

  /// Creates a new [GetSaslAclsResult].
  /// [aclResourceName] The resource name of the sasl acl.
  /// [aclResourceType] The resource type of the sasl acl.
  /// [acls] A list of sasl acls. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [outputFile] Optional.
  /// [username] The username of the sasl acl.
  const GetSaslAclsResult({
    required this.aclResourceName,
    required this.aclResourceType,
    required this.acls,
    required this.id,
    required this.instanceId,
    this.outputFile,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclResourceName': aclResourceName,
      'aclResourceType': aclResourceType,
      'acls': pulumi.Input.encodeList<GetSaslAclsAcl, Map<String, dynamic>>(acls, (value) => value.toMap()),
      'id': id,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'username': username,
    };
  }

  factory GetSaslAclsResult.fromMap(Map<String, dynamic> map) {
    return GetSaslAclsResult(
      aclResourceName: map['aclResourceName'] as String,
      aclResourceType: map['aclResourceType'] as String,
      acls: pulumi.Input.decodeList<GetSaslAclsAcl>(map['acls']!, (value) => GetSaslAclsAcl.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      username: map['username'] as String,
    );
  }
}

