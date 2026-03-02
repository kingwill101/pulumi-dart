// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dfpinstance_administrators.dart';

/// {@template pulumi_dynamics365fraudprotection_instance_details_args_doc}
/// The set of arguments for InstanceDetails.
/// {@endtemplate}
/// {@macro pulumi_dynamics365fraudprotection_instance_details_args_doc}
class InstanceDetailsArgs {
  /// A collection of DFP instance administrators
  final pulumi.Input<DFPInstanceAdministrators>? administration;
  /// The name of the DFP instances. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String>? instanceName;
  /// Location of the DFP resource.
  final pulumi.Input<String>? location;
  /// The name of the Azure Resource group of which a given DFP instance is part. This name must be at least 1 character in length, and no more than 90.
  final pulumi.Input<String> resourceGroupName;
  /// Key-value pairs of additional resource provisioning properties.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceDetailsArgs].
  /// [administration] A collection of DFP instance administrators
  /// [instanceName] The name of the DFP instances. It must be a minimum of 3 characters, and a maximum of 63.
  /// [location] Location of the DFP resource.
  /// [resourceGroupName] The name of the Azure Resource group of which a given DFP instance is part. This name must be at least 1 character in length, and no more than 90.
  /// [tags] Key-value pairs of additional resource provisioning properties.
  InstanceDetailsArgs({
    this.administration,
    this.instanceName,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administration': ?pulumi.Input.mapOptionalInputValue<DFPInstanceAdministrators, Map<String, dynamic>>(administration, (value) => value.toMap()),
      'instanceName': ?instanceName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory InstanceDetailsArgs.fromMap(Map<String, dynamic> map) {
    return InstanceDetailsArgs(
      administration: map['administration'] == null ? null : (DFPInstanceAdministrators.fromMap((map['administration']! as Map).cast<String, dynamic>())).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

