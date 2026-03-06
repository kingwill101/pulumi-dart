// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dcdn_get_kv_account_get_kv_account_args_doc}
/// Arguments for getKvAccount.
/// {@endtemplate}
/// {@macro pulumi_dcdn_get_kv_account_get_kv_account_args_doc}
class GetKvAccountArgs {
  /// The status of the KV feature for your account. Valid values: `online`, `offline`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetKvAccountArgs].
  /// [status] The status of the KV feature for your account. Valid values: `online`, `offline`.
  const GetKvAccountArgs({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory GetKvAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetKvAccountArgs(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

