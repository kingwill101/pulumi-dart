// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_integration_account_session_args_doc}
/// The set of arguments for IntegrationAccountSession.
/// {@endtemplate}
/// {@macro pulumi_logic_integration_account_session_args_doc}
class IntegrationAccountSessionArgs {
  /// The session content.
  final pulumi.Input<dynamic>? content;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The integration account session name.
  final pulumi.Input<String>? sessionName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IntegrationAccountSessionArgs].
  /// [content] The session content.
  /// [integrationAccountName] The integration account name.
  /// [location] The resource location.
  /// [resourceGroupName] The resource group name.
  /// [sessionName] The integration account session name.
  /// [tags] The resource tags.
  IntegrationAccountSessionArgs({
    dynamic content,
    required String integrationAccountName,
    String? location,
    required String resourceGroupName,
    String? sessionName,
    Map<String, String>? tags,
  }) :
      content = pulumi.Input.asOptionalInput<dynamic>(content),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sessionName = pulumi.Input.asOptionalInput<String>(sessionName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'integrationAccountName': integrationAccountName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sessionName': ?sessionName,
      'tags': ?tags,
    };
  }

  factory IntegrationAccountSessionArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountSessionArgs(
      content: map['content'] == null ? null : map['content'],
      integrationAccountName: map['integrationAccountName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sessionName: map['sessionName'] == null ? null : map['sessionName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

