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
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: pulumi.Input.decodeList<GetControlPoliciesPolicy>(map['policies']!, (value) => GetControlPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

