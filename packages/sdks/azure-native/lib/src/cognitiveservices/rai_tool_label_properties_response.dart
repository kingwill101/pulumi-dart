// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_tool_label_properties_response_account_scope.dart';
import 'rai_tool_label_properties_response_project_scopes.dart';

/// RAI Tool Label properties.
class RaiToolLabelPropertiesResponse {
  /// Account-level tool label definition.
  final RaiToolLabelPropertiesResponseAccountScope? accountScope;
  /// List of project-level tool label definitions.
  final List<RaiToolLabelPropertiesResponseProjectScopes>? projectScopes;
  /// The unique tool connection name, e.g., 'Web_Search'.
  final String toolConnectionName;

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
      'accountScope': ?accountScope == null ? null : accountScope!.toMap(),
      'projectScopes': ?projectScopes == null ? null : pulumi.Input.encodeList<RaiToolLabelPropertiesResponseProjectScopes, Map<String, dynamic>>(projectScopes!, (value) => value.toMap()),
      'toolConnectionName': toolConnectionName,
    };
  }

  factory RaiToolLabelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RaiToolLabelPropertiesResponse(
      accountScope: map['accountScope'] == null ? null : RaiToolLabelPropertiesResponseAccountScope.fromMap((map['accountScope'] as Map).cast<String, dynamic>()),
      projectScopes: map['projectScopes'] == null ? null : pulumi.Input.decodeList<RaiToolLabelPropertiesResponseProjectScopes>(map['projectScopes'], (value) => RaiToolLabelPropertiesResponseProjectScopes.fromMap((value as Map).cast<String, dynamic>())),
      toolConnectionName: map['toolConnectionName'] as String,
    );
  }
}

