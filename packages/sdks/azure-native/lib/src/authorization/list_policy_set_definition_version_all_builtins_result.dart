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
      'value': ?value == null ? null : pulumi.Input.encodeList<PolicySetDefinitionVersionResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListPolicySetDefinitionVersionAllBuiltinsResult.fromMap(Map<String, dynamic> map) {
    return ListPolicySetDefinitionVersionAllBuiltinsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<PolicySetDefinitionVersionResponse>(map['value'], (value) => PolicySetDefinitionVersionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

