// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_configuration.dart';
import 'factory_git_hub_configuration.dart';
import 'factory_identity.dart';
import 'global_parameter_specification.dart';
import 'purview_configuration.dart';

/// {@template pulumi_datafactory_factory_args_doc}
/// The set of arguments for Factory.
/// {@endtemplate}
/// {@macro pulumi_datafactory_factory_args_doc}
class FactoryArgs {
  /// Properties to enable Customer Managed Key for the factory.
  final pulumi.Input<EncryptionConfiguration>? encryption;
  /// The factory name.
  final pulumi.Input<String>? factoryName;
  /// List of parameters for factory.
  final pulumi.Input<Map<String, GlobalParameterSpecification>>? globalParameters;
  /// Managed service identity of the factory.
  final pulumi.Input<FactoryIdentity>? identity;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// Whether or not public network access is allowed for the data factory.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Purview information of the factory.
  final pulumi.Input<PurviewConfiguration>? purviewConfiguration;
  /// Git repo information of the factory.
  final pulumi.Input<FactoryGitHubConfiguration>? repoConfiguration;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FactoryArgs].
  /// [encryption] Properties to enable Customer Managed Key for the factory.
  /// [factoryName] The factory name.
  /// [globalParameters] List of parameters for factory.
  /// [identity] Managed service identity of the factory.
  /// [location] The resource location.
  /// [publicNetworkAccess] Whether or not public network access is allowed for the data factory.
  /// [purviewConfiguration] Purview information of the factory.
  /// [repoConfiguration] Git repo information of the factory.
  /// [resourceGroupName] The resource group name.
  /// [tags] The resource tags.
  FactoryArgs({
    this.encryption,
    this.factoryName,
    this.globalParameters,
    this.identity,
    this.location,
    this.publicNetworkAccess,
    this.purviewConfiguration,
    this.repoConfiguration,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionConfiguration, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'factoryName': ?factoryName,
      'globalParameters': ?pulumi.Input.mapOptionalInputValue<Map<String, GlobalParameterSpecification>, Map<String, Map<String, dynamic>>>(globalParameters, (value) => pulumi.Input.encodeMapValues<GlobalParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<FactoryIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'publicNetworkAccess': ?publicNetworkAccess,
      'purviewConfiguration': ?pulumi.Input.mapOptionalInputValue<PurviewConfiguration, Map<String, dynamic>>(purviewConfiguration, (value) => value.toMap()),
      'repoConfiguration': ?pulumi.Input.mapOptionalInputValue<FactoryGitHubConfiguration, Map<String, dynamic>>(repoConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory FactoryArgs.fromMap(Map<String, dynamic> map) {
    return FactoryArgs(
      encryption: map['encryption'] == null ? null : (EncryptionConfiguration.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      factoryName: map['factoryName'] == null ? null : (map['factoryName']! as String).input(),
      globalParameters: map['globalParameters'] == null ? null : (pulumi.Input.decodeMapValues<GlobalParameterSpecification>(map['globalParameters']!, (value) => GlobalParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (FactoryIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      purviewConfiguration: map['purviewConfiguration'] == null ? null : (PurviewConfiguration.fromMap((map['purviewConfiguration']! as Map).cast<String, dynamic>())).input(),
      repoConfiguration: map['repoConfiguration'] == null ? null : (FactoryGitHubConfiguration.fromMap((map['repoConfiguration']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

