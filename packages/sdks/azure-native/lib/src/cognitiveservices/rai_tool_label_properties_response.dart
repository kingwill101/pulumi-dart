// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_tool_label_properties_account_scope_response.dart';
import 'rai_tool_label_properties_project_scopes_item_response.dart';

/// RAI Tool Label properties.
class RaiToolLabelPropertiesResponse {
  /// Account-level tool label definition.
  final pulumi.Input<RaiToolLabelPropertiesAccountScopeResponse>? accountScope;
  /// List of project-level tool label definitions.
  final pulumi.Input<List<RaiToolLabelPropertiesProjectScopesItemResponse>>? projectScopes;
  /// The unique tool connection name, e.g., 'Web_Search'.
  final pulumi.Input<String> toolConnectionName;

  /// Creates a new [RaiToolLabelPropertiesResponse].
  /// [accountScope] Account-level tool label definition.
  /// [projectScopes] List of project-level tool label definitions.
  /// [toolConnectionName] The unique tool connection name, e.g., 'Web_Search'.
  const RaiToolLabelPropertiesResponse({
    this.accountScope,
    this.projectScopes,
    required this.toolConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountScope': ?pulumi.Input.mapOptionalInputValue<RaiToolLabelPropertiesAccountScopeResponse, Map<String, dynamic>>(accountScope, (value) => value.toMap()),
      'projectScopes': ?pulumi.Input.mapOptionalInputValue<List<RaiToolLabelPropertiesProjectScopesItemResponse>, List<Map<String, dynamic>>>(projectScopes, (value) => pulumi.Input.encodeList<RaiToolLabelPropertiesProjectScopesItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toolConnectionName': toolConnectionName,
    };
  }

  factory RaiToolLabelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RaiToolLabelPropertiesResponse(
      accountScope: (() { final guardedValue = map['accountScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RaiToolLabelPropertiesAccountScopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      projectScopes: (() { final guardedValue = map['projectScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RaiToolLabelPropertiesProjectScopesItemResponse>(guardedValue, (value) => RaiToolLabelPropertiesProjectScopesItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      toolConnectionName: pulumi.Input.fromValue(map['toolConnectionName'] as String),
    );
  }
}
