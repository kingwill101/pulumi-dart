// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aad_ou_container_args_doc}
/// The set of arguments for OuContainer.
/// {@endtemplate}
/// {@macro pulumi_aad_ou_container_args_doc}
class OuContainerArgs {
  /// The account name
  final pulumi.Input<String>? accountName;
  /// The name of the domain service.
  final pulumi.Input<String> domainServiceName;
  /// The name of the OuContainer.
  final pulumi.Input<String>? ouContainerName;
  /// The account password
  final pulumi.Input<String>? password;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The account spn
  final pulumi.Input<String>? spn;

  /// Creates a new [OuContainerArgs].
  /// [accountName] The account name
  /// [domainServiceName] The name of the domain service.
  /// [ouContainerName] The name of the OuContainer.
  /// [password] The account password
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [spn] The account spn
  const OuContainerArgs({
    this.accountName,
    required this.domainServiceName,
    this.ouContainerName,
    this.password,
    required this.resourceGroupName,
    this.spn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'domainServiceName': domainServiceName,
      'ouContainerName': ?ouContainerName,
      'password': ?password,
      'resourceGroupName': resourceGroupName,
      'spn': ?spn,
    };
  }

  factory OuContainerArgs.fromMap(Map<String, dynamic> map) {
    return OuContainerArgs(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainServiceName: pulumi.Input.fromValue(map['domainServiceName'] as String),
      ouContainerName: (() { final guardedValue = map['ouContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      spn: (() { final guardedValue = map['spn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
