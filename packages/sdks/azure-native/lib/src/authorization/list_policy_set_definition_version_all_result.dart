// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_set_definition_version_response.dart';

/// Result data returned by listPolicySetDefinitionVersionAll.
class ListPolicySetDefinitionVersionAllResult {
  /// The URL to use for getting the next set of results.
  final String? nextLink;
  /// An array of policy set definition versions.
  final List<PolicySetDefinitionVersionResponse>? value;

  /// Creates a new [ListPolicySetDefinitionVersionAllResult].
  /// [nextLink] The URL to use for getting the next set of results.
  /// [value] An array of policy set definition versions.
  ListPolicySetDefinitionVersionAllResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<PolicySetDefinitionVersionResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListPolicySetDefinitionVersionAllResult.fromMap(Map<String, dynamic> map) {
    return ListPolicySetDefinitionVersionAllResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<PolicySetDefinitionVersionResponse>(map['value']!, (value) => PolicySetDefinitionVersionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

