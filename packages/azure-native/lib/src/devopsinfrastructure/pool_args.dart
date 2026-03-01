// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_dev_ops_organization_profile.dart';
import 'managed_service_identity.dart';
import 'stateful.dart';
import 'vmss_fabric_profile.dart';

/// {@template pulumi_devopsinfrastructure_pool_args_doc}
/// The set of arguments for Pool.
/// {@endtemplate}
/// {@macro pulumi_devopsinfrastructure_pool_args_doc}
class PoolArgs {
  /// Defines how the machine will be handled once it executed a job.
  final pulumi.Input<Stateful> agentProfile;
  /// The resource id of the DevCenter Project the pool belongs to.
  final pulumi.Input<String> devCenterProjectResourceId;
  /// Defines the type of fabric the agent will run on.
  final pulumi.Input<VmssFabricProfile> fabricProfile;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Defines how many resources can there be created at any given time.
  final pulumi.Input<int> maximumConcurrency;
  /// Defines the organization in which the pool will be used.
  final pulumi.Input<AzureDevOpsOrganizationProfile> organizationProfile;
  /// Name of the pool. It needs to be globally unique.
  final pulumi.Input<String>? poolName;
  /// The status of the current operation.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PoolArgs].
  /// [agentProfile] Defines how the machine will be handled once it executed a job.
  /// [devCenterProjectResourceId] The resource id of the DevCenter Project the pool belongs to.
  /// [fabricProfile] Defines the type of fabric the agent will run on.
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [maximumConcurrency] Defines how many resources can there be created at any given time.
  /// [organizationProfile] Defines the organization in which the pool will be used.
  /// [poolName] Name of the pool. It needs to be globally unique.
  /// [provisioningState] The status of the current operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  PoolArgs({
    required Stateful agentProfile,
    required String devCenterProjectResourceId,
    required VmssFabricProfile fabricProfile,
    ManagedServiceIdentity? identity,
    String? location,
    required int maximumConcurrency,
    required AzureDevOpsOrganizationProfile organizationProfile,
    String? poolName,
    String? provisioningState,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      agentProfile = pulumi.Input.asInput<Stateful>(agentProfile),
      devCenterProjectResourceId = pulumi.Input.asInput<String>(devCenterProjectResourceId),
      fabricProfile = pulumi.Input.asInput<VmssFabricProfile>(fabricProfile),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      maximumConcurrency = pulumi.Input.asInput<int>(maximumConcurrency),
      organizationProfile = pulumi.Input.asInput<AzureDevOpsOrganizationProfile>(organizationProfile),
      poolName = pulumi.Input.asOptionalInput<String>(poolName),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProfile': pulumi.Input.mapInputValue<Stateful, Map<String, dynamic>>(agentProfile, (value) => value.toMap()),
      'devCenterProjectResourceId': devCenterProjectResourceId,
      'fabricProfile': pulumi.Input.mapInputValue<VmssFabricProfile, Map<String, dynamic>>(fabricProfile, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maximumConcurrency': maximumConcurrency,
      'organizationProfile': pulumi.Input.mapInputValue<AzureDevOpsOrganizationProfile, Map<String, dynamic>>(organizationProfile, (value) => value.toMap()),
      'poolName': ?poolName,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PoolArgs.fromMap(Map<String, dynamic> map) {
    return PoolArgs(
      agentProfile: Stateful.fromMap((map['agentProfile'] as Map).cast<String, dynamic>()),
      devCenterProjectResourceId: map['devCenterProjectResourceId'] as String,
      fabricProfile: VmssFabricProfile.fromMap((map['fabricProfile'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      maximumConcurrency: map['maximumConcurrency'] as int,
      organizationProfile: AzureDevOpsOrganizationProfile.fromMap((map['organizationProfile'] as Map).cast<String, dynamic>()),
      poolName: map['poolName'] == null ? null : map['poolName'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

