// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_tls_cipher_policies_get_tls_cipher_policies_args_doc}
/// Arguments for getTlsCipherPolicies.
/// {@endtemplate}
/// {@macro pulumi_slb_get_tls_cipher_policies_get_tls_cipher_policies_args_doc}
class GetTlsCipherPoliciesArgs {
  /// A list of Tls Cipher Policy IDs.
  final pulumi.Input<List<String>>? ids;

  /// The include listener.
  final pulumi.Input<bool>? includeListener;

  /// A regex string to filter results by Tls Cipher Policy name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// TLS policy instance state. Valid values: `configuring`, `normal`.
  final pulumi.Input<String>? status;

  /// TLS policy name. Length is from 2 to 128, or in both the English and Chinese characters must be with an uppercase/lowercase letter or a Chinese character and the beginning, may contain numbers, in dot `.`, underscore `_` or dash `-`.
  final pulumi.Input<String>? tlsCipherPolicyName;

  /// Creates a new [GetTlsCipherPoliciesArgs].
  /// [ids] A list of Tls Cipher Policy IDs.
  /// [includeListener] The include listener.
  /// [nameRegex] A regex string to filter results by Tls Cipher Policy name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] TLS policy instance state. Valid values: `configuring`, `normal`.
  /// [tlsCipherPolicyName] TLS policy name. Length is from 2 to 128, or in both the English and Chinese characters must be with an uppercase/lowercase letter or a Chinese character and the beginning, may contain numbers, in dot `.`, underscore `_` or dash `-`.
  GetTlsCipherPoliciesArgs({
    this.ids,
    this.includeListener,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.tlsCipherPolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'includeListener': ?includeListener,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'tlsCipherPolicyName': ?tlsCipherPolicyName,
    };
  }

  factory GetTlsCipherPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetTlsCipherPoliciesArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      includeListener: (() {
        final guardedValue = map['includeListener'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tlsCipherPolicyName: (() {
        final guardedValue = map['tlsCipherPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
