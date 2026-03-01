// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_definition_version_response.dart';

/// Result data returned by listPolicyDefinitionVersionAll.
class ListPolicyDefinitionVersionAllResult {
  /// The URL to use for getting the next set of results.
  final String? nextLink;
  /// An array of policy definitions versions.
  final List<PolicyDefinitionVersionResponse>? value;

  /// Creates a new [ListPolicyDefinitionVersionAllResult].
  /// [nextLink] The URL to use for getting the next set of results.
  /// [value] An array of policy definitions versions.
  ListPolicyDefinitionVersionAllResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<PolicyDefinitionVersionResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListPolicyDefinitionVersionAllResult.fromMap(Map<String, dynamic> map) {
    return ListPolicyDefinitionVersionAllResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<PolicyDefinitionVersionResponse>(map['value'], (value) => PolicyDefinitionVersionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

