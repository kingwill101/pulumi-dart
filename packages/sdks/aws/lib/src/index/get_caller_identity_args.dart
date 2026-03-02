// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_caller_identity_get_caller_identity_args_doc}
/// Arguments for getCallerIdentity.
/// {@endtemplate}
/// {@macro pulumi_index_get_caller_identity_get_caller_identity_args_doc}
class GetCallerIdentityArgs {
  /// Account ID number of the account that owns or contains the calling entity.
  final pulumi.Input<String>? id;

  /// Creates a new [GetCallerIdentityArgs].
  /// [id] Account ID number of the account that owns or contains the calling entity.
  GetCallerIdentityArgs({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory GetCallerIdentityArgs.fromMap(Map<String, dynamic> map) {
    return GetCallerIdentityArgs(
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
    );
  }
}

