// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_voiceservices_get_contact_args_doc}
/// Arguments for getContact.
/// {@endtemplate}
/// {@macro pulumi_voiceservices_get_contact_args_doc}
class GetContactArgs {
  /// Unique identifier for this deployment
  final pulumi.Input<String> communicationsGatewayName;
  /// Unique identifier for this contact
  final pulumi.Input<String> contactName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetContactArgs].
  /// [communicationsGatewayName] Unique identifier for this deployment
  /// [contactName] Unique identifier for this contact
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetContactArgs({
    required String communicationsGatewayName,
    required String contactName,
    required String resourceGroupName,
  }) :
      communicationsGatewayName = pulumi.Input.asInput<String>(communicationsGatewayName),
      contactName = pulumi.Input.asInput<String>(contactName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationsGatewayName': communicationsGatewayName,
      'contactName': contactName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetContactArgs.fromMap(Map<String, dynamic> map) {
    return GetContactArgs(
      communicationsGatewayName: map['communicationsGatewayName'] as String,
      contactName: map['contactName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

