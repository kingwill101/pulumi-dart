// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_list_integration_account_callback_url_args_doc}
/// Arguments for listIntegrationAccountCallbackUrl.
/// {@endtemplate}
/// {@macro pulumi_logic_list_integration_account_callback_url_args_doc}
class ListIntegrationAccountCallbackUrlArgs {
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The key type.
  final pulumi.Input<String>? keyType;
  /// The expiry time.
  final pulumi.Input<String>? notAfter;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListIntegrationAccountCallbackUrlArgs].
  /// [integrationAccountName] The integration account name.
  /// [keyType] The key type.
  /// [notAfter] The expiry time.
  /// [resourceGroupName] The resource group name.
  ListIntegrationAccountCallbackUrlArgs({
    required this.integrationAccountName,
    this.keyType,
    this.notAfter,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'keyType': ?keyType,
      'notAfter': ?notAfter,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListIntegrationAccountCallbackUrlArgs.fromMap(Map<String, dynamic> map) {
    return ListIntegrationAccountCallbackUrlArgs(
      integrationAccountName: (map['integrationAccountName'] as String).input(),
      keyType: map['keyType'] == null ? null : (map['keyType'] as String).input(),
      notAfter: map['notAfter'] == null ? null : (map['notAfter'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

