// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redhatopenshift_secret_args_doc}
/// The set of arguments for Secret.
/// {@endtemplate}
/// {@macro pulumi_redhatopenshift_secret_args_doc}
class SecretArgs {
  /// The name of the Secret resource.
  final pulumi.Input<String>? childResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the OpenShift cluster resource.
  final pulumi.Input<String> resourceName;
  /// The Secrets Resources.
  final pulumi.Input<String>? secretResources;

  /// Creates a new [SecretArgs].
  /// [childResourceName] The name of the Secret resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the OpenShift cluster resource.
  /// [secretResources] The Secrets Resources.
  SecretArgs({
    String? childResourceName,
    required String resourceGroupName,
    required String resourceName,
    String? secretResources,
  }) :
      childResourceName = pulumi.Input.asOptionalInput<String>(childResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      secretResources = pulumi.Input.asOptionalInput<String>(secretResources);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childResourceName': ?childResourceName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'secretResources': ?secretResources,
    };
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      childResourceName: map['childResourceName'] == null ? null : map['childResourceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      secretResources: map['secretResources'] == null ? null : map['secretResources'] as String,
    );
  }
}

