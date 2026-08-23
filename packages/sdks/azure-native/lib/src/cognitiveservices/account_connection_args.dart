// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadauth_type_connection_properties.dart';

/// {@template pulumi_cognitiveservices_account_connection_args_doc}
/// The set of arguments for AccountConnection.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_account_connection_args_doc}
class AccountConnectionArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Friendly name of the connection
  final pulumi.Input<String>? connectionName;
  /// Connection property base schema.
  final pulumi.Input<AADAuthTypeConnectionProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AccountConnectionArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [connectionName] Friendly name of the connection
  /// [properties] Connection property base schema.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const AccountConnectionArgs({
    required this.accountName,
    this.connectionName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'connectionName': ?connectionName,
      'properties': pulumi.Input.mapInputValue<AADAuthTypeConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AccountConnectionArgs.fromMap(Map<String, dynamic> map) {
    return AccountConnectionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(AADAuthTypeConnectionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
