// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_cluster_identity.dart';

/// {@template pulumi_stack_hci_cluster_hci_cluster_args_doc}
/// The set of arguments for HciCluster.
/// {@endtemplate}
/// {@macro pulumi_stack_hci_cluster_hci_cluster_args_doc}
class HciClusterArgs {
  /// The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster.
  final pulumi.Input<String>? automanageConfigurationId;
  /// The Client ID of the Azure Active Directory Application which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clientId;
  /// An `identity` block as defined below.
  final pulumi.Input<HciClusterIdentity>? identity;
  /// The Azure Region where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Tenant ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If unspecified the Tenant ID of the Provider will be used.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [HciClusterArgs].
  /// [automanageConfigurationId] The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster.
  /// [clientId] The Client ID of the Azure Active Directory Application which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Stack HCI Cluster.
  /// [tenantId] The Tenant ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  HciClusterArgs({
    String? automanageConfigurationId,
    String? clientId,
    HciClusterIdentity? identity,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
    String? tenantId,
  }) :
      automanageConfigurationId = pulumi.Input.asOptionalInput<String>(automanageConfigurationId),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      identity = pulumi.Input.asOptionalInput<HciClusterIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automanageConfigurationId': ?automanageConfigurationId,
      'clientId': ?clientId,
      'identity': ?pulumi.Input.mapOptionalInputValue<HciClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory HciClusterArgs.fromMap(Map<String, dynamic> map) {
    return HciClusterArgs(
      automanageConfigurationId: map['automanageConfigurationId'] == null ? null : map['automanageConfigurationId'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      identity: map['identity'] == null ? null : HciClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

