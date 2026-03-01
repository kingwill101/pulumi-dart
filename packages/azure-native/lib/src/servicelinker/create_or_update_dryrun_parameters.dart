// ignore_for_file: unused_element, unnecessary_cast

import 'access_key_info_base.dart';
import 'azure_resource.dart';
import 'configuration_info.dart';
import 'public_network_solution.dart';
import 'secret_store.dart';
import 'vnet_solution.dart';

/// The dryrun parameters for creation or update a linker
class CreateOrUpdateDryrunParameters {
  /// The name of action for you dryrun job.
  /// Expected value is 'createOrUpdate'.
  final String actionName;
  /// The authentication type.
  final AccessKeyInfoBase? authInfo;
  /// The application client type
  final String? clientType;
  /// The connection information consumed by applications, including secrets, connection strings.
  final ConfigurationInfo? configurationInfo;
  /// The network solution.
  final PublicNetworkSolution? publicNetworkSolution;
  /// connection scope in source service.
  final String? scope;
  /// An option to store secret value in secure place
  final SecretStore? secretStore;
  /// The target service properties
  final AzureResource? targetService;
  /// The VNet solution.
  final VNetSolution? vNetSolution;

  /// Creates a new [CreateOrUpdateDryrunParameters].
  /// [actionName] The name of action for you dryrun job.
  /// [authInfo] The authentication type.
  /// [clientType] The application client type
  /// [configurationInfo] The connection information consumed by applications, including secrets, connection strings.
  /// [publicNetworkSolution] The network solution.
  /// [scope] connection scope in source service.
  /// [secretStore] An option to store secret value in secure place
  /// [targetService] The target service properties
  /// [vNetSolution] The VNet solution.
  CreateOrUpdateDryrunParameters({
    required this.actionName,
    this.authInfo,
    this.clientType,
    this.configurationInfo,
    this.publicNetworkSolution,
    this.scope,
    this.secretStore,
    this.targetService,
    this.vNetSolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': actionName,
      'authInfo': ?authInfo == null ? null : authInfo!.toMap(),
      'clientType': ?clientType,
      'configurationInfo': ?configurationInfo == null ? null : configurationInfo!.toMap(),
      'publicNetworkSolution': ?publicNetworkSolution == null ? null : publicNetworkSolution!.toMap(),
      'scope': ?scope,
      'secretStore': ?secretStore == null ? null : secretStore!.toMap(),
      'targetService': ?targetService == null ? null : targetService!.toMap(),
      'vNetSolution': ?vNetSolution == null ? null : vNetSolution!.toMap(),
    };
  }

  factory CreateOrUpdateDryrunParameters.fromMap(Map<String, dynamic> map) {
    return CreateOrUpdateDryrunParameters(
      actionName: map['actionName'] as String,
      authInfo: map['authInfo'] == null ? null : AccessKeyInfoBase.fromMap((map['authInfo'] as Map).cast<String, dynamic>()),
      clientType: map['clientType'] == null ? null : map['clientType'] as String,
      configurationInfo: map['configurationInfo'] == null ? null : ConfigurationInfo.fromMap((map['configurationInfo'] as Map).cast<String, dynamic>()),
      publicNetworkSolution: map['publicNetworkSolution'] == null ? null : PublicNetworkSolution.fromMap((map['publicNetworkSolution'] as Map).cast<String, dynamic>()),
      scope: map['scope'] == null ? null : map['scope'] as String,
      secretStore: map['secretStore'] == null ? null : SecretStore.fromMap((map['secretStore'] as Map).cast<String, dynamic>()),
      targetService: map['targetService'] == null ? null : AzureResource.fromMap((map['targetService'] as Map).cast<String, dynamic>()),
      vNetSolution: map['vNetSolution'] == null ? null : VNetSolution.fromMap((map['vNetSolution'] as Map).cast<String, dynamic>()),
    );
  }
}

