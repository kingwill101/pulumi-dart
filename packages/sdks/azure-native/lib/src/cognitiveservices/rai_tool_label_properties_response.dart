// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_tool_label_properties_response_account_scope.dart';
import 'rai_tool_label_properties_response_project_scopes.dart';

/// RAI Tool Label properties.
class RaiToolLabelPropertiesResponse {
  /// Account-level tool label definition.
  final pulumi.Input<RaiToolLabelPropertiesResponseAccountScope>? accountScope;
  /// List of project-level tool label definitions.
  final pulumi.Input<List<RaiToolLabelPropertiesResponseProjectScopes>>? projectScopes;
  /// The unique tool connection name, e.g., 'Web_Search'.
  final pulumi.Input<String> toolConnectionName;

  /// Creates a new [RaiToolLabelPropertiesResponse].
  /// [accountScope] Account-level tool label definition.
  /// [projectScopes] List of project-level tool label definitions.
  /// [toolConnectionName] The unique tool connection name, e.g., 'Web_Search'.
  RaiToolLabelPropertiesResponse({
    this.accountScope,
    this.projectScopes,
    required this.toolConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountScope': ?pulumi.Input.mapOptionalInputValue<RaiToolLabelPropertiesResponseAccountScope, Map<String, dynamic>>(accountScope, (value) => value.toMap()),
      'projectScopes': ?pulumi.Input.mapOptionalInputValue<List<RaiToolLabelPropertiesResponseProjectScopes>, List<Map<String, dynamic>>>(projectScopes, (value) => pulumi.Input.encodeList<RaiToolLabelPropertiesResponseProjectScopes, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toolConnectionName': toolConnectionName,
    };
  }

  factory RaiToolLabelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RaiToolLabelPropertiesResponse(
      accountScope: map['accountScope'] == null ? null : (RaiToolLabelPropertiesResponseAccountScope.fromMap((map['accountScope'] as Map).cast<String, dynamic>())).input(),
      projectScopes: map['projectScopes'] == null ? null : (pulumi.Input.decodeList<RaiToolLabelPropertiesResponseProjectScopes>(map['projectScopes'], (value) => RaiToolLabelPropertiesResponseProjectScopes.fromMap((value as Map).cast<String, dynamic>()))).input(),
      toolConnectionName: (map['toolConnectionName'] as String).input(),
    );
  }
}

