// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_list_apm_secret_keys_args_doc}
/// Arguments for listApmSecretKeys.
/// {@endtemplate}
/// {@macro pulumi_appplatform_list_apm_secret_keys_args_doc}
class ListApmSecretKeysArgs {
  /// The name of the APM
  final pulumi.Input<String> apmName;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListApmSecretKeysArgs].
  /// [apmName] The name of the APM
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  ListApmSecretKeysArgs({
    required this.apmName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apmName': apmName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListApmSecretKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListApmSecretKeysArgs(
      apmName: pulumi.Input.fromValue(map['apmName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
