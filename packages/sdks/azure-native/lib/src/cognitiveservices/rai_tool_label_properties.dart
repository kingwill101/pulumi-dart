// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_tool_label_properties_account_scope.dart';
import 'rai_tool_label_properties_project_scopes_item.dart';

/// RAI Tool Label properties.
class RaiToolLabelProperties {
  /// Account-level tool label definition.
  final pulumi.Input<RaiToolLabelPropertiesAccountScope?>? accountScope;
  /// List of project-level tool label definitions.
  final pulumi.Input<List<RaiToolLabelPropertiesProjectScopesItem>?>? projectScopes;
  /// The unique tool connection name, e.g., 'Web_Search'.
  final pulumi.Input<String> toolConnectionName;

  /// Creates a new [RaiToolLabelProperties].
  /// [accountScope] Account-level tool label definition.
  /// [projectScopes] List of project-level tool label definitions.
  /// [toolConnectionName] The unique tool connection name, e.g., 'Web_Search'.
  const RaiToolLabelProperties({
    this.accountScope,
    this.projectScopes,
    required this.toolConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountScope': ?pulumi.Input.mapOptionalInputValue<RaiToolLabelPropertiesAccountScope, Map<String, dynamic>>(accountScope, (value) => value.toMap()),
      'projectScopes': ?pulumi.Input.mapOptionalInputValue<List<RaiToolLabelPropertiesProjectScopesItem>, List<Map<String, dynamic>>>(projectScopes, (value) => pulumi.Input.encodeList<RaiToolLabelPropertiesProjectScopesItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toolConnectionName': toolConnectionName,
    };
  }

  factory RaiToolLabelProperties.fromMap(Map<String, dynamic> map) {
    return RaiToolLabelProperties(
      accountScope: (() { final guardedValue = map['accountScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RaiToolLabelPropertiesAccountScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      projectScopes: (() { final guardedValue = map['projectScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RaiToolLabelPropertiesProjectScopesItem>(guardedValue, (value) => RaiToolLabelPropertiesProjectScopesItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      toolConnectionName: pulumi.Input.fromValue(map['toolConnectionName'] as String),
    );
  }
}
