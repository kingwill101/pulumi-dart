// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tls_cipher_policies_policy.dart';

/// Result data returned by getTlsCipherPolicies.
class GetTlsCipherPoliciesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final bool? includeListener;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetTlsCipherPoliciesPolicy> policies;
  final String? status;
  final String? tlsCipherPolicyName;

  /// Creates a new [GetTlsCipherPoliciesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [includeListener] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [policies] Required.
  /// [status] Optional.
  /// [tlsCipherPolicyName] Optional.
  GetTlsCipherPoliciesResult({
    required this.id,
    required this.ids,
    this.includeListener,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.policies,
    this.status,
    this.tlsCipherPolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'includeListener': ?includeListener,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policies':
          pulumi.Input.encodeList<
            GetTlsCipherPoliciesPolicy,
            Map<String, dynamic>
          >(policies, (value) => value.toMap()),
      'status': ?status,
      'tlsCipherPolicyName': ?tlsCipherPolicyName,
    };
  }

  factory GetTlsCipherPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetTlsCipherPoliciesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeListener: (() {
        final guardedValue = map['includeListener'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
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
      policies: pulumi.Input.decodeList<GetTlsCipherPoliciesPolicy>(
        map['policies']!,
        (value) => GetTlsCipherPoliciesPolicy.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tlsCipherPolicyName: (() {
        final guardedValue = map['tlsCipherPolicyName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
