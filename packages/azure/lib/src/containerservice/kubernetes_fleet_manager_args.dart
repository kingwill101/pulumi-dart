// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_fleet_manager_hub_profile.dart';

/// {@template pulumi_containerservice_kubernetes_fleet_manager_kubernetes_fleet_manager_args_doc}
/// The set of arguments for KubernetesFleetManager.
/// {@endtemplate}
/// {@macro pulumi_containerservice_kubernetes_fleet_manager_kubernetes_fleet_manager_args_doc}
class KubernetesFleetManagerArgs {
  final pulumi.Input<KubernetesFleetManagerHubProfile>? hubProfile;
  /// The Azure Region where the Kubernetes Fleet Manager should exist. Changing this forces a new Kubernetes Fleet Manager to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Kubernetes Fleet Manager. Changing this forces a new Kubernetes Fleet Manager to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group within which this Kubernetes Fleet Manager should exist. Changing this forces a new Kubernetes Fleet Manager to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Kubernetes Fleet Manager.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KubernetesFleetManagerArgs].
  /// [hubProfile] Optional.
  /// [location] The Azure Region where the Kubernetes Fleet Manager should exist. Changing this forces a new Kubernetes Fleet Manager to be created.
  /// [name] Specifies the name of this Kubernetes Fleet Manager. Changing this forces a new Kubernetes Fleet Manager to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Kubernetes Fleet Manager should exist. Changing this forces a new Kubernetes Fleet Manager to be created.
  /// [tags] A mapping of tags which should be assigned to the Kubernetes Fleet Manager.
  KubernetesFleetManagerArgs({
    KubernetesFleetManagerHubProfile? hubProfile,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      hubProfile = pulumi.Input.asOptionalInput<KubernetesFleetManagerHubProfile>(hubProfile),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesFleetManagerHubProfile, Map<String, dynamic>>(hubProfile, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory KubernetesFleetManagerArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesFleetManagerArgs(
      hubProfile: map['hubProfile'] == null ? null : KubernetesFleetManagerHubProfile.fromMap((map['hubProfile'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

