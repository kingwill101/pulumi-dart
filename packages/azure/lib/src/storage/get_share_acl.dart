// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_share_acl_access_policy.dart';

class GetShareAcl {
  /// An `access_policy` block as defined below.
  final List<GetShareAclAccessPolicy> accessPolicies;
  /// The ID which should be used for this Shared Identifier.
  final String id;

  /// Creates a new [GetShareAcl].
  /// [accessPolicies] An `access_policy` block as defined below.
  /// [id] The ID which should be used for this Shared Identifier.
  GetShareAcl({
    required this.accessPolicies,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': pulumi.Input.encodeList<GetShareAclAccessPolicy, Map<String, dynamic>>(accessPolicies, (value) => value.toMap()),
      'id': id,
    };
  }

  factory GetShareAcl.fromMap(Map<String, dynamic> map) {
    return GetShareAcl(
      accessPolicies: pulumi.Input.decodeList<GetShareAclAccessPolicy>(map['accessPolicies'], (value) => GetShareAclAccessPolicy.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}

