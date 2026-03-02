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
    this.assemblyArtifactName,
    required this.integrationAccountName,
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.tags,
  });

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
      assemblyArtifactName: map['assemblyArtifactName'] == null ? null : (map['assemblyArtifactName']! as String).input(),
      integrationAccountName: (map['integrationAccountName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: (AssemblyProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

