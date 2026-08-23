// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_namespace_registration_namespace_registration_args_doc}
/// The set of arguments for NamespaceRegistration.
/// {@endtemplate}
/// {@macro pulumi_redshift_namespace_registration_namespace_registration_args_doc}
class NamespaceRegistrationArgs {
  /// Consumer identifier for the registration. Typically in the format `DataCatalog/&lt;account-id&gt;`.
  final pulumi.Input<String> consumerIdentifier;
  /// Type of namespace being registered. Valid values: `serverless`, `provisioned`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> namespaceType;
  /// Identifier of the provisioned cluster. Required when `namespaceType` is `provisioned`.
  final pulumi.Input<String>? provisionedClusterIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the serverless namespace. Required when `namespaceType` is `serverless`. Can be either the namespace name or namespace ID (UUID).
  final pulumi.Input<String>? serverlessNamespaceIdentifier;
  /// Identifier of the serverless workgroup. Required when `namespaceType` is `serverless`.
  final pulumi.Input<String>? serverlessWorkgroupIdentifier;

  /// Creates a new [NamespaceRegistrationArgs].
  /// [consumerIdentifier] Consumer identifier for the registration. Typically in the format `DataCatalog/&lt;account-id&gt;`.
  /// [namespaceType] Type of namespace being registered. Valid values: `serverless`, `provisioned`.
  /// [provisionedClusterIdentifier] Identifier of the provisioned cluster. Required when `namespaceType` is `provisioned`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverlessNamespaceIdentifier] Identifier of the serverless namespace. Required when `namespaceType` is `serverless`. Can be either the namespace name or namespace ID (UUID).
  /// [serverlessWorkgroupIdentifier] Identifier of the serverless workgroup. Required when `namespaceType` is `serverless`.
  const NamespaceRegistrationArgs({
    required this.consumerIdentifier,
    required this.namespaceType,
    this.provisionedClusterIdentifier,
    this.region,
    this.serverlessNamespaceIdentifier,
    this.serverlessWorkgroupIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerIdentifier': consumerIdentifier,
      'namespaceType': namespaceType,
      'provisionedClusterIdentifier': ?provisionedClusterIdentifier,
      'region': ?region,
      'serverlessNamespaceIdentifier': ?serverlessNamespaceIdentifier,
      'serverlessWorkgroupIdentifier': ?serverlessWorkgroupIdentifier,
    };
  }

  factory NamespaceRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceRegistrationArgs(
      consumerIdentifier: pulumi.Input.fromValue(map['consumerIdentifier'] as String),
      namespaceType: pulumi.Input.fromValue(map['namespaceType'] as String),
      provisionedClusterIdentifier: (() { final guardedValue = map['provisionedClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverlessNamespaceIdentifier: (() { final guardedValue = map['serverlessNamespaceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverlessWorkgroupIdentifier: (() { final guardedValue = map['serverlessWorkgroupIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
