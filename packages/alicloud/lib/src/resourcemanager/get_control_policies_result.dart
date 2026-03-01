// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_policies_policy.dart';

/// Result data returned by getControlPolicies.
class GetControlPoliciesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? language;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetControlPoliciesPolicy> policies;
  final String? policyType;

  /// Creates a new [GetControlPoliciesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [language] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [policies] Required.
  /// [policyType] Optional.
  GetControlPoliciesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.language,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.policies,
    this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'language': ?language,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policies': pulumi.Input.encodeList<GetControlPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'policyType': ?policyType,
    };
  }

  factory GetControlPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetControlPoliciesResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      language: map['language'] == null ? null : map['language'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      policies: pulumi.Input.decodeList<GetControlPoliciesPolicy>(map['policies'], (value) => GetControlPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
    );
  }
}

