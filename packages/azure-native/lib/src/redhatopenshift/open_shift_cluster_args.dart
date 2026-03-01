// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apiserver_profile.dart';
import 'cluster_profile.dart';
import 'ingress_profile.dart';
import 'master_profile.dart';
import 'network_profile.dart';
import 'service_principal_profile.dart';
import 'worker_profile.dart';

/// {@template pulumi_redhatopenshift_open_shift_cluster_args_doc}
/// The set of arguments for OpenShiftCluster.
/// {@endtemplate}
/// {@macro pulumi_redhatopenshift_open_shift_cluster_args_doc}
class OpenShiftClusterArgs {
  /// The cluster API server profile.
  final pulumi.Input<APIServerProfile>? apiserverProfile;
  /// The cluster profile.
  final pulumi.Input<ClusterProfile>? clusterProfile;
  /// The cluster ingress profiles.
  final pulumi.Input<List<IngressProfile>>? ingressProfiles;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The cluster master profile.
  final pulumi.Input<MasterProfile>? masterProfile;
  /// The cluster network profile.
  final pulumi.Input<NetworkProfile>? networkProfile;
  /// The cluster provisioning state.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the OpenShift cluster resource.
  final pulumi.Input<String>? resourceName;
  /// The cluster service principal profile.
  final pulumi.Input<ServicePrincipalProfile>? servicePrincipalProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The cluster worker profiles.
  final pulumi.Input<List<WorkerProfile>>? workerProfiles;

  /// Creates a new [OpenShiftClusterArgs].
  /// [apiserverProfile] The cluster API server profile.
  /// [clusterProfile] The cluster profile.
  /// [ingressProfiles] The cluster ingress profiles.
  /// [location] The geo-location where the resource lives
  /// [masterProfile] The cluster master profile.
  /// [networkProfile] The cluster network profile.
  /// [provisioningState] The cluster provisioning state.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the OpenShift cluster resource.
  /// [servicePrincipalProfile] The cluster service principal profile.
  /// [tags] Resource tags.
  /// [workerProfiles] The cluster worker profiles.
  OpenShiftClusterArgs({
    APIServerProfile? apiserverProfile,
    ClusterProfile? clusterProfile,
    List<IngressProfile>? ingressProfiles,
    String? location,
    MasterProfile? masterProfile,
    NetworkProfile? networkProfile,
    String? provisioningState,
    required String resourceGroupName,
    String? resourceName,
    ServicePrincipalProfile? servicePrincipalProfile,
    Map<String, String>? tags,
    List<WorkerProfile>? workerProfiles,
  }) :
      apiserverProfile = pulumi.Input.asOptionalInput<APIServerProfile>(apiserverProfile),
      clusterProfile = pulumi.Input.asOptionalInput<ClusterProfile>(clusterProfile),
      ingressProfiles = pulumi.Input.asOptionalInput<List<IngressProfile>>(ingressProfiles),
      location = pulumi.Input.asOptionalInput<String>(location),
      masterProfile = pulumi.Input.asOptionalInput<MasterProfile>(masterProfile),
      networkProfile = pulumi.Input.asOptionalInput<NetworkProfile>(networkProfile),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      servicePrincipalProfile = pulumi.Input.asOptionalInput<ServicePrincipalProfile>(servicePrincipalProfile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workerProfiles = pulumi.Input.asOptionalInput<List<WorkerProfile>>(workerProfiles);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiserverProfile': ?pulumi.Input.mapOptionalInputValue<APIServerProfile, Map<String, dynamic>>(apiserverProfile, (value) => value.toMap()),
      'clusterProfile': ?pulumi.Input.mapOptionalInputValue<ClusterProfile, Map<String, dynamic>>(clusterProfile, (value) => value.toMap()),
      'ingressProfiles': ?pulumi.Input.mapOptionalInputValue<List<IngressProfile>, List<Map<String, dynamic>>>(ingressProfiles, (value) => pulumi.Input.encodeList<IngressProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'masterProfile': ?pulumi.Input.mapOptionalInputValue<MasterProfile, Map<String, dynamic>>(masterProfile, (value) => value.toMap()),
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'servicePrincipalProfile': ?pulumi.Input.mapOptionalInputValue<ServicePrincipalProfile, Map<String, dynamic>>(servicePrincipalProfile, (value) => value.toMap()),
      'tags': ?tags,
      'workerProfiles': ?pulumi.Input.mapOptionalInputValue<List<WorkerProfile>, List<Map<String, dynamic>>>(workerProfiles, (value) => pulumi.Input.encodeList<WorkerProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OpenShiftClusterArgs.fromMap(Map<String, dynamic> map) {
    return OpenShiftClusterArgs(
      apiserverProfile: map['apiserverProfile'] == null ? null : APIServerProfile.fromMap((map['apiserverProfile'] as Map).cast<String, dynamic>()),
      clusterProfile: map['clusterProfile'] == null ? null : ClusterProfile.fromMap((map['clusterProfile'] as Map).cast<String, dynamic>()),
      ingressProfiles: map['ingressProfiles'] == null ? null : pulumi.Input.decodeList<IngressProfile>(map['ingressProfiles'], (value) => IngressProfile.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      masterProfile: map['masterProfile'] == null ? null : MasterProfile.fromMap((map['masterProfile'] as Map).cast<String, dynamic>()),
      networkProfile: map['networkProfile'] == null ? null : NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      servicePrincipalProfile: map['servicePrincipalProfile'] == null ? null : ServicePrincipalProfile.fromMap((map['servicePrincipalProfile'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workerProfiles: map['workerProfiles'] == null ? null : pulumi.Input.decodeList<WorkerProfile>(map['workerProfiles'], (value) => WorkerProfile.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

