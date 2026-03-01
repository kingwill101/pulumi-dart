// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_properties_infrastructure_config.dart';
import 'identity.dart';

/// {@template pulumi_resourceconnector_appliance_args_doc}
/// The set of arguments for Appliance.
/// {@endtemplate}
/// {@macro pulumi_resourceconnector_appliance_args_doc}
class ApplianceArgs {
  /// Represents a supported Fabric/Infra. (AKSEdge etc...).
  final pulumi.Input<String>? distro;
  /// Identity for the resource.
  final pulumi.Input<Identity>? identity;
  /// Contains infrastructure information about the Appliance
  final pulumi.Input<AppliancePropertiesInfrastructureConfig>? infrastructureConfig;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Certificates pair used to download MSI certificate from HIS. Can only be set once.
  final pulumi.Input<String>? publicKey;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Appliances name.
  final pulumi.Input<String>? resourceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Version of the Appliance
  final pulumi.Input<String>? version;

  /// Creates a new [ApplianceArgs].
  /// [distro] Represents a supported Fabric/Infra. (AKSEdge etc...).
  /// [identity] Identity for the resource.
  /// [infrastructureConfig] Contains infrastructure information about the Appliance
  /// [location] The geo-location where the resource lives
  /// [publicKey] Certificates pair used to download MSI certificate from HIS. Can only be set once.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Appliances name.
  /// [tags] Resource tags.
  /// [version] Version of the Appliance
  ApplianceArgs({
    String? distro,
    Identity? identity,
    AppliancePropertiesInfrastructureConfig? infrastructureConfig,
    String? location,
    String? publicKey,
    required String resourceGroupName,
    String? resourceName,
    Map<String, String>? tags,
    String? version,
  }) :
      distro = pulumi.Input.asOptionalInput<String>(distro),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      infrastructureConfig = pulumi.Input.asOptionalInput<AppliancePropertiesInfrastructureConfig>(infrastructureConfig),
      location = pulumi.Input.asOptionalInput<String>(location),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distro': ?distro,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'infrastructureConfig': ?pulumi.Input.mapOptionalInputValue<AppliancePropertiesInfrastructureConfig, Map<String, dynamic>>(infrastructureConfig, (value) => value.toMap()),
      'location': ?location,
      'publicKey': ?publicKey,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory ApplianceArgs.fromMap(Map<String, dynamic> map) {
    return ApplianceArgs(
      distro: map['distro'] == null ? null : map['distro'] as String,
      identity: map['identity'] == null ? null : Identity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      infrastructureConfig: map['infrastructureConfig'] == null ? null : AppliancePropertiesInfrastructureConfig.fromMap((map['infrastructureConfig'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      publicKey: map['publicKey'] == null ? null : map['publicKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

