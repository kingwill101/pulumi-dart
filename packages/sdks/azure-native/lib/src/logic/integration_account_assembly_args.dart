// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assembly_properties.dart';

/// {@template pulumi_logic_integration_account_assembly_args_doc}
/// The set of arguments for IntegrationAccountAssembly.
/// {@endtemplate}
/// {@macro pulumi_logic_integration_account_assembly_args_doc}
class IntegrationAccountAssemblyArgs {
  /// The assembly artifact name.
  final pulumi.Input<String>? assemblyArtifactName;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The assembly properties.
  final pulumi.Input<AssemblyProperties> properties;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IntegrationAccountAssemblyArgs].
  /// [assemblyArtifactName] The assembly artifact name.
  /// [integrationAccountName] The integration account name.
  /// [location] The resource location.
  /// [properties] The assembly properties.
  /// [resourceGroupName] The resource group name.
  /// [tags] The resource tags.
  IntegrationAccountAssemblyArgs({
    pulumi.Output<String>? assemblyArtifactName,
    required pulumi.Output<String> integrationAccountName,
    pulumi.Output<String>? location,
    required pulumi.Output<AssemblyProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      assemblyArtifactName = pulumi.Input.asOptionalInput<String>(assemblyArtifactName),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<AssemblyProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assemblyArtifactName': ?assemblyArtifactName,
      'integrationAccountName': integrationAccountName,
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<AssemblyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IntegrationAccountAssemblyArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountAssemblyArgs(
      assemblyArtifactName: map['assemblyArtifactName'] == null ? null : pulumi.Output.create<String>(map['assemblyArtifactName'] as String),
      integrationAccountName: pulumi.Output.create<String>(map['integrationAccountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<AssemblyProperties>(AssemblyProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

