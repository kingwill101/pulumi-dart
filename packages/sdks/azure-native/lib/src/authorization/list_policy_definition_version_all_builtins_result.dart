// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_definition_version_response.dart';

/// Result data returned by listPolicyDefinitionVersionAllBuiltins.
class ListPolicyDefinitionVersionAllBuiltinsResult {
  /// The URL to use for getting the next set of results.
  final String? nextLink;

  /// An array of policy definitions versions.
  final List<PolicyDefinitionVersionResponse>? value;

  /// Creates a new [ListPolicyDefinitionVersionAllBuiltinsResult].
  /// [nextLink] The URL to use for getting the next set of results.
  /// [value] An array of policy definitions versions.
  ListPolicyDefinitionVersionAllBuiltinsResult({this.nextLink, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() {
        final guardedValue = value;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          PolicyDefinitionVersionResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory ListPolicyDefinitionVersionAllBuiltinsResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListPolicyDefinitionVersionAllBuiltinsResult(
      nextLink: (() {
        final guardedValue = map['nextLink'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<PolicyDefinitionVersionResponse>(
          guardedValue,
          (value) => PolicyDefinitionVersionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
