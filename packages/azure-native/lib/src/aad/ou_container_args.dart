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
  OuContainerArgs({
    String? accountName,
    required String domainServiceName,
    String? ouContainerName,
    String? password,
    required String resourceGroupName,
    String? spn,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      domainServiceName = pulumi.Input.asInput<String>(domainServiceName),
      ouContainerName = pulumi.Input.asOptionalInput<String>(ouContainerName),
      password = pulumi.Input.asOptionalInput<String>(password),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spn = pulumi.Input.asOptionalInput<String>(spn);

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
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      domainServiceName: map['domainServiceName'] as String,
      ouContainerName: map['ouContainerName'] == null ? null : map['ouContainerName'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      spn: map['spn'] == null ? null : map['spn'] as String,
    );
  }
}

