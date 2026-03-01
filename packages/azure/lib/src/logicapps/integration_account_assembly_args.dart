// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logicapps_integration_account_assembly_integration_account_assembly_args_doc}
/// The set of arguments for IntegrationAccountAssembly.
/// {@endtemplate}
/// {@macro pulumi_logicapps_integration_account_assembly_integration_account_assembly_args_doc}
class IntegrationAccountAssemblyArgs {
  /// The name of the Logic App Integration Account Assembly.
  final pulumi.Input<String> assemblyName;
  /// The version of the Logic App Integration Account Assembly. Defaults to `0.0.0.0`.
  final pulumi.Input<String>? assemblyVersion;
  /// The content of the Logic App Integration Account Assembly.
  final pulumi.Input<String>? content;
  /// The content link URI of the Logic App Integration Account Assembly.
  final pulumi.Input<String>? contentLinkUri;
  /// The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> integrationAccountName;
  /// The metadata of the Logic App Integration Account Assembly.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name which should be used for this Logic App Integration Account Assembly Artifact. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Logic App Integration Account Assembly Artifact should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IntegrationAccountAssemblyArgs].
  /// [assemblyName] The name of the Logic App Integration Account Assembly.
  /// [assemblyVersion] The version of the Logic App Integration Account Assembly. Defaults to `0.0.0.0`.
  /// [content] The content of the Logic App Integration Account Assembly.
  /// [contentLinkUri] The content link URI of the Logic App Integration Account Assembly.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  /// [metadata] The metadata of the Logic App Integration Account Assembly.
  /// [name] The name which should be used for this Logic App Integration Account Assembly Artifact. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Assembly Artifact should exist. Changing this forces a new resource to be created.
  IntegrationAccountAssemblyArgs({
    required String assemblyName,
    String? assemblyVersion,
    String? content,
    String? contentLinkUri,
    required String integrationAccountName,
    Map<String, String>? metadata,
    String? name,
    required String resourceGroupName,
  }) :
      assemblyName = pulumi.Input.asInput<String>(assemblyName),
      assemblyVersion = pulumi.Input.asOptionalInput<String>(assemblyVersion),
      content = pulumi.Input.asOptionalInput<String>(content),
      contentLinkUri = pulumi.Input.asOptionalInput<String>(contentLinkUri),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assemblyName': assemblyName,
      'assemblyVersion': ?assemblyVersion,
      'content': ?content,
      'contentLinkUri': ?contentLinkUri,
      'integrationAccountName': integrationAccountName,
      'metadata': ?metadata,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IntegrationAccountAssemblyArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountAssemblyArgs(
      assemblyName: map['assemblyName'] as String,
      assemblyVersion: map['assemblyVersion'] == null ? null : map['assemblyVersion'] as String,
      content: map['content'] == null ? null : map['content'] as String,
      contentLinkUri: map['contentLinkUri'] == null ? null : map['contentLinkUri'] as String,
      integrationAccountName: map['integrationAccountName'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

