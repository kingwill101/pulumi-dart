// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_set_definition_version_response.dart';

/// Result data returned by listPolicySetDefinitionVersionAllBuiltins.
class ListPolicySetDefinitionVersionAllBuiltinsResult {
  /// The URL to use for getting the next set of results.
  final String? nextLink;
  /// An array of policy set definition versions.
  final List<PolicySetDefinitionVersionResponse>? value;

  /// Creates a new [ListPolicySetDefinitionVersionAllBuiltinsResult].
  /// [nextLink] The URL to use for getting the next set of results.
  /// [value] An array of policy set definition versions.
  ListPolicySetDefinitionVersionAllBuiltinsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<PolicySetDefinitionVersionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListPolicySetDefinitionVersionAllBuiltinsResult.fromMap(Map<String, dynamic> map) {
    return ListPolicySetDefinitionVersionAllBuiltinsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicySetDefinitionVersionResponse>(guardedValue, (value) => PolicySetDefinitionVersionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

