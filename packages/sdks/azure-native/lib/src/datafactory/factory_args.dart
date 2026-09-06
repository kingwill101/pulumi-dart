// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_configuration.dart';
import 'factory_identity.dart';
import 'global_parameter_specification.dart';
import 'purview_configuration.dart';

/// {@template pulumi_datafactory_factory_args_doc}
/// The set of arguments for Factory.
/// {@endtemplate}
/// {@macro pulumi_datafactory_factory_args_doc}
class FactoryArgs {
  /// Properties to enable Customer Managed Key for the factory.
  final pulumi.Input<EncryptionConfiguration?>? encryption;
  /// The factory name.
  final pulumi.Input<String?>? factoryName;
  /// List of parameters for factory.
  final pulumi.Input<Map<String, GlobalParameterSpecification>?>? globalParameters;
  /// Managed service identity of the factory.
  final pulumi.Input<FactoryIdentity?>? identity;
  /// The resource location.
  final pulumi.Input<String?>? location;
  /// Whether or not public network access is allowed for the data factory.
  final pulumi.Input<dynamic>? publicNetworkAccess;
  /// Purview information of the factory.
  final pulumi.Input<PurviewConfiguration?>? purviewConfiguration;
  /// Git repo information of the factory.
  final pulumi.Input<dynamic>? repoConfiguration;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FactoryArgs].
  /// [encryption] Properties to enable Customer Managed Key for the factory.
  /// [factoryName] The factory name.
  /// [globalParameters] List of parameters for factory.
  /// [identity] Managed service identity of the factory.
  /// [location] The resource location.
  /// [publicNetworkAccess] Whether or not public network access is allowed for the data factory.
  /// [purviewConfiguration] Purview information of the factory.
  /// [repoConfiguration] Git repo information of the factory.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The resource tags.
  const FactoryArgs({
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
      'repoConfiguration': ?repoConfiguration,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory FactoryArgs.fromMap(Map<String, dynamic> map) {
    return FactoryArgs(
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      factoryName: (() { final guardedValue = map['factoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalParameters: (() { final guardedValue = map['globalParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GlobalParameterSpecification>(guardedValue, (value) => GlobalParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FactoryIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      purviewConfiguration: (() { final guardedValue = map['purviewConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PurviewConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repoConfiguration: (() { final guardedValue = map['repoConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
