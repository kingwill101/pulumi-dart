// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_get_integration_account_session_args_doc}
/// Arguments for getIntegrationAccountSession.
/// {@endtemplate}
/// {@macro pulumi_logic_get_integration_account_session_args_doc}
class GetIntegrationAccountSessionArgs {
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The integration account session name.
  final pulumi.Input<String> sessionName;

  /// Creates a new [GetIntegrationAccountSessionArgs].
  /// [integrationAccountName] The integration account name.
  /// [resourceGroupName] The resource group name.
  /// [sessionName] The integration account session name.
  GetIntegrationAccountSessionArgs({
    required String integrationAccountName,
    required String resourceGroupName,
    required String sessionName,
  }) :
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sessionName = pulumi.Input.asInput<String>(sessionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'resourceGroupName': resourceGroupName,
      'sessionName': sessionName,
    };
  }

  factory GetIntegrationAccountSessionArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountSessionArgs(
      integrationAccountName: map['integrationAccountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sessionName: map['sessionName'] as String,
    );
  }
}

