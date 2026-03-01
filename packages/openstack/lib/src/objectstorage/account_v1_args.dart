// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_objectstorage_account_v1_account_v1_args_doc}
/// The set of arguments for AccountV1.
/// {@endtemplate}
/// {@macro pulumi_objectstorage_account_v1_account_v1_args_doc}
class AccountV1Args {
  /// A map of custom key/value pairs to associate with the
  /// account metadata. Changing the `Quota-Bytes` key value is allowed to be
  /// updated only by the cloud administrator.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The project ID of the corresponding account. If
  /// omitted, the token's project ID is used. Changing this creates a new account.
  final pulumi.Input<String>? projectId;
  /// The region in which to create the account. If omitted,
  /// the `region` argument of the provider is used. Changing this creates a new
  /// account.
  final pulumi.Input<String>? region;

  /// Creates a new [AccountV1Args].
  /// [metadata] A map of custom key/value pairs to associate with the
  /// [projectId] The project ID of the corresponding account. If
  /// [region] The region in which to create the account. If omitted,
  AccountV1Args({
    Map<String, String>? metadata,
    String? projectId,
    String? region,
  }) :
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'projectId': ?projectId,
      'region': ?region,
    };
  }

  factory AccountV1Args.fromMap(Map<String, dynamic> map) {
    return AccountV1Args(
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

