// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_shutdown_profile.dart';
import 'connection_profile.dart';
import 'lab_network_profile.dart';
import 'roster_profile.dart';
import 'security_profile.dart';
import 'virtual_machine_profile.dart';

/// {@template pulumi_labservices_lab_args_doc}
/// The set of arguments for Lab.
/// {@endtemplate}
/// {@macro pulumi_labservices_lab_args_doc}
class LabArgs {
  /// The resource auto shutdown configuration for the lab. This controls whether actions are taken on resources that are sitting idle.
  final pulumi.Input<AutoShutdownProfile> autoShutdownProfile;
  /// The connection profile for the lab. This controls settings such as web access to lab resources or whether RDP or SSH ports are open.
  final pulumi.Input<ConnectionProfile> connectionProfile;
  /// The description of the lab.
  final pulumi.Input<String>? description;
  /// The name of the lab that uniquely identifies it within containing lab plan. Used in resource URIs.
  final pulumi.Input<String>? labName;
  /// The ID of the lab plan. Used during resource creation to provide defaults and acts as a permission container when creating a lab via labs.azure.com. Setting a labPlanId on an existing lab provides organization..
  final pulumi.Input<String>? labPlanId;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The network profile for the lab, typically applied via a lab plan. This profile cannot be modified once a lab has been created.
  final pulumi.Input<LabNetworkProfile>? networkProfile;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The lab user list management profile.
  final pulumi.Input<RosterProfile>? rosterProfile;
  /// The lab security profile.
  final pulumi.Input<SecurityProfile> securityProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The title of the lab.
  final pulumi.Input<String>? title;
  /// The profile used for creating lab virtual machines.
  final pulumi.Input<VirtualMachineProfile> virtualMachineProfile;

  /// Creates a new [LabArgs].
  /// [autoShutdownProfile] The resource auto shutdown configuration for the lab. This controls whether actions are taken on resources that are sitting idle.
  /// [connectionProfile] The connection profile for the lab. This controls settings such as web access to lab resources or whether RDP or SSH ports are open.
  /// [description] The description of the lab.
  /// [labName] The name of the lab that uniquely identifies it within containing lab plan. Used in resource URIs.
  /// [labPlanId] The ID of the lab plan. Used during resource creation to provide defaults and acts as a permission container when creating a lab via labs.azure.com. Setting a labPlanId on an existing lab provides organization..
  /// [location] The geo-location where the resource lives
  /// [networkProfile] The network profile for the lab, typically applied via a lab plan. This profile cannot be modified once a lab has been created.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rosterProfile] The lab user list management profile.
  /// [securityProfile] The lab security profile.
  /// [tags] Resource tags.
  /// [title] The title of the lab.
  /// [virtualMachineProfile] The profile used for creating lab virtual machines.
  LabArgs({
    required pulumi.Output<AutoShutdownProfile> autoShutdownProfile,
    required pulumi.Output<ConnectionProfile> connectionProfile,
    pulumi.Output<String>? description,
    pulumi.Output<String>? labName,
    pulumi.Output<String>? labPlanId,
    pulumi.Output<String>? location,
    pulumi.Output<LabNetworkProfile>? networkProfile,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<RosterProfile>? rosterProfile,
    required pulumi.Output<SecurityProfile> securityProfile,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? title,
    required pulumi.Output<VirtualMachineProfile> virtualMachineProfile,
  }) :
      autoShutdownProfile = pulumi.Input.asInput<AutoShutdownProfile>(autoShutdownProfile),
      connectionProfile = pulumi.Input.asInput<ConnectionProfile>(connectionProfile),
      description = pulumi.Input.asOptionalInput<String>(description),
      labName = pulumi.Input.asOptionalInput<String>(labName),
      labPlanId = pulumi.Input.asOptionalInput<String>(labPlanId),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkProfile = pulumi.Input.asOptionalInput<LabNetworkProfile>(networkProfile),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rosterProfile = pulumi.Input.asOptionalInput<RosterProfile>(rosterProfile),
      securityProfile = pulumi.Input.asInput<SecurityProfile>(securityProfile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      title = pulumi.Input.asOptionalInput<String>(title),
      virtualMachineProfile = pulumi.Input.asInput<VirtualMachineProfile>(virtualMachineProfile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoShutdownProfile': pulumi.Input.mapInputValue<AutoShutdownProfile, Map<String, dynamic>>(autoShutdownProfile, (value) => value.toMap()),
      'connectionProfile': pulumi.Input.mapInputValue<ConnectionProfile, Map<String, dynamic>>(connectionProfile, (value) => value.toMap()),
      'description': ?description,
      'labName': ?labName,
      'labPlanId': ?labPlanId,
      'location': ?location,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<LabNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'rosterProfile': ?pulumi.Input.mapOptionalInputValue<RosterProfile, Map<String, dynamic>>(rosterProfile, (value) => value.toMap()),
      'securityProfile': pulumi.Input.mapInputValue<SecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'tags': ?tags,
      'title': ?title,
      'virtualMachineProfile': pulumi.Input.mapInputValue<VirtualMachineProfile, Map<String, dynamic>>(virtualMachineProfile, (value) => value.toMap()),
    };
  }

  factory LabArgs.fromMap(Map<String, dynamic> map) {
    return LabArgs(
      autoShutdownProfile: pulumi.Output.create<AutoShutdownProfile>(AutoShutdownProfile.fromMap((map['autoShutdownProfile'] as Map).cast<String, dynamic>())),
      connectionProfile: pulumi.Output.create<ConnectionProfile>(ConnectionProfile.fromMap((map['connectionProfile'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labName: map['labName'] == null ? null : pulumi.Output.create<String>(map['labName'] as String),
      labPlanId: map['labPlanId'] == null ? null : pulumi.Output.create<String>(map['labPlanId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkProfile: map['networkProfile'] == null ? null : pulumi.Output.create<LabNetworkProfile>(LabNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rosterProfile: map['rosterProfile'] == null ? null : pulumi.Output.create<RosterProfile>(RosterProfile.fromMap((map['rosterProfile'] as Map).cast<String, dynamic>())),
      securityProfile: pulumi.Output.create<SecurityProfile>(SecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
      virtualMachineProfile: pulumi.Output.create<VirtualMachineProfile>(VirtualMachineProfile.fromMap((map['virtualMachineProfile'] as Map).cast<String, dynamic>())),
    );
  }
}

