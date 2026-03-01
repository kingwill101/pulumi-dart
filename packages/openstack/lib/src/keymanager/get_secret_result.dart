// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_acl.dart';

/// Result data returned by getSecret.
class GetSecretResult {
  /// See Argument Reference above.
  final bool? aclOnly;
  /// The list of ACLs assigned to a secret. The `read` structure is described below.
  final List<GetSecretAcl> acls;
  /// See Argument Reference above.
  final String? algorithm;
  /// See Argument Reference above.
  final int? bitLength;
  /// The map of the content types, assigned on the secret.
  final Map<String, String> contentTypes;
  /// The date the secret ACL was created.
  final String createdAt;
  /// See Argument Reference above.
  final String? createdAtFilter;
  /// The creator of the secret.
  final String creatorId;
  /// The date the secret will expire.
  final String expiration;
  /// See Argument Reference above.
  final String? expirationFilter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The map of metadata, assigned on the secret, which has been
  /// explicitly and implicitly added.
  final Map<String, String> metadata;
  /// See Argument Reference above.
  final String? mode;
  /// See Argument Reference above.
  final String? name;
  /// The secret payload.
  final String payload;
  /// The Secret encoding.
  final String payloadContentEncoding;
  /// The Secret content type.
  final String payloadContentType;
  /// See Argument Reference above.
  final String? region;
  /// The secret reference / where to find the secret.
  final String secretRef;
  /// See Argument Reference above.
  final String? secretType;
  /// The status of the secret.
  final String status;
  /// The date the secret ACL was last updated.
  final String updatedAt;
  /// See Argument Reference above.
  final String? updatedAtFilter;

  /// Creates a new [GetSecretResult].
  /// [aclOnly] See Argument Reference above.
  /// [acls] The list of ACLs assigned to a secret. The `read` structure is described below.
  /// [algorithm] See Argument Reference above.
  /// [bitLength] See Argument Reference above.
  /// [contentTypes] The map of the content types, assigned on the secret.
  /// [createdAt] The date the secret ACL was created.
  /// [createdAtFilter] See Argument Reference above.
  /// [creatorId] The creator of the secret.
  /// [expiration] The date the secret will expire.
  /// [expirationFilter] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metadata] The map of metadata, assigned on the secret, which has been
  /// [mode] See Argument Reference above.
  /// [name] See Argument Reference above.
  /// [payload] The secret payload.
  /// [payloadContentEncoding] The Secret encoding.
  /// [payloadContentType] The Secret content type.
  /// [region] See Argument Reference above.
  /// [secretRef] The secret reference / where to find the secret.
  /// [secretType] See Argument Reference above.
  /// [status] The status of the secret.
  /// [updatedAt] The date the secret ACL was last updated.
  /// [updatedAtFilter] See Argument Reference above.
  GetSecretResult({
    this.aclOnly,
    required this.acls,
    this.algorithm,
    this.bitLength,
    required this.contentTypes,
    required this.createdAt,
    this.createdAtFilter,
    required this.creatorId,
    required this.expiration,
    this.expirationFilter,
    required this.id,
    required this.metadata,
    this.mode,
    this.name,
    required this.payload,
    required this.payloadContentEncoding,
    required this.payloadContentType,
    this.region,
    required this.secretRef,
    this.secretType,
    required this.status,
    required this.updatedAt,
    this.updatedAtFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclOnly': ?aclOnly,
      'acls': pulumi.Input.encodeList<GetSecretAcl, Map<String, dynamic>>(acls, (value) => value.toMap()),
      'algorithm': ?algorithm,
      'bitLength': ?bitLength,
      'contentTypes': contentTypes,
      'createdAt': createdAt,
      'createdAtFilter': ?createdAtFilter,
      'creatorId': creatorId,
      'expiration': expiration,
      'expirationFilter': ?expirationFilter,
      'id': id,
      'metadata': metadata,
      'mode': ?mode,
      'name': ?name,
      'payload': payload,
      'payloadContentEncoding': payloadContentEncoding,
      'payloadContentType': payloadContentType,
      'region': ?region,
      'secretRef': secretRef,
      'secretType': ?secretType,
      'status': status,
      'updatedAt': updatedAt,
      'updatedAtFilter': ?updatedAtFilter,
    };
  }

  factory GetSecretResult.fromMap(Map<String, dynamic> map) {
    return GetSecretResult(
      aclOnly: map['aclOnly'] == null ? null : map['aclOnly'] as bool,
      acls: pulumi.Input.decodeList<GetSecretAcl>(map['acls'], (value) => GetSecretAcl.fromMap((value as Map).cast<String, dynamic>())),
      algorithm: map['algorithm'] == null ? null : map['algorithm'] as String,
      bitLength: map['bitLength'] == null ? null : map['bitLength'] as int,
      contentTypes: (map['contentTypes'] as Map).cast<String, String>(),
      createdAt: map['createdAt'] as String,
      createdAtFilter: map['createdAtFilter'] == null ? null : map['createdAtFilter'] as String,
      creatorId: map['creatorId'] as String,
      expiration: map['expiration'] as String,
      expirationFilter: map['expirationFilter'] == null ? null : map['expirationFilter'] as String,
      id: map['id'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      mode: map['mode'] == null ? null : map['mode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      payload: map['payload'] as String,
      payloadContentEncoding: map['payloadContentEncoding'] as String,
      payloadContentType: map['payloadContentType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      secretRef: map['secretRef'] as String,
      secretType: map['secretType'] == null ? null : map['secretType'] as String,
      status: map['status'] as String,
      updatedAt: map['updatedAt'] as String,
      updatedAtFilter: map['updatedAtFilter'] == null ? null : map['updatedAtFilter'] as String,
    );
  }
}

