// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_network_connection_args_doc}
/// The set of arguments for NetworkConnection.
/// {@endtemplate}
/// {@macro pulumi_devcenter_network_connection_args_doc}
class NetworkConnectionArgs {
  /// AAD Join type.
  final pulumi.Input<String> domainJoinType;

  /// Active Directory domain name
  final pulumi.Input<String>? domainName;

  /// The password for the account used to join domain
  final pulumi.Input<String>? domainPassword;

  /// The username of an Active Directory account (user or service account) that has permissions to create computer objects in Active Directory. Required format: admin@contoso.com.
  final pulumi.Input<String>? domainUsername;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Name of the Network Connection that can be applied to a Pool.
  final pulumi.Input<String>? networkConnectionName;

  /// The name for resource group where NICs will be placed.
  final pulumi.Input<String>? networkingResourceGroupName;

  /// Active Directory domain Organization Unit (OU)
  final pulumi.Input<String>? organizationUnit;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The subnet to attach Virtual Machines to
  final pulumi.Input<String> subnetId;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkConnectionArgs].
  /// [domainJoinType] AAD Join type.
  /// [domainName] Active Directory domain name
  /// [domainPassword] The password for the account used to join domain
  /// [domainUsername] The username of an Active Directory account (user or service account) that has permissions to create computer objects in Active Directory. Required format: admin@contoso.com.
  /// [location] The geo-location where the resource lives
  /// [networkConnectionName] Name of the Network Connection that can be applied to a Pool.
  /// [networkingResourceGroupName] The name for resource group where NICs will be placed.
  /// [organizationUnit] Active Directory domain Organization Unit (OU)
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subnetId] The subnet to attach Virtual Machines to
  /// [tags] Resource tags.
  NetworkConnectionArgs({
    required this.domainJoinType,
    this.domainName,
    this.domainPassword,
    this.domainUsername,
    this.location,
    this.networkConnectionName,
    this.networkingResourceGroupName,
    this.organizationUnit,
    required this.resourceGroupName,
    required this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainJoinType': domainJoinType,
      'domainName': ?domainName,
      'domainPassword': ?domainPassword,
      'domainUsername': ?domainUsername,
      'location': ?location,
      'networkConnectionName': ?networkConnectionName,
      'networkingResourceGroupName': ?networkingResourceGroupName,
      'organizationUnit': ?organizationUnit,
      'resourceGroupName': resourceGroupName,
      'subnetId': subnetId,
      'tags': ?tags,
    };
  }

  factory NetworkConnectionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionArgs(
      domainJoinType: pulumi.Input.fromValue(map['domainJoinType'] as String),
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainPassword: (() {
        final guardedValue = map['domainPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainUsername: (() {
        final guardedValue = map['domainUsername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkConnectionName: (() {
        final guardedValue = map['networkConnectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkingResourceGroupName: (() {
        final guardedValue = map['networkingResourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationUnit: (() {
        final guardedValue = map['organizationUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
