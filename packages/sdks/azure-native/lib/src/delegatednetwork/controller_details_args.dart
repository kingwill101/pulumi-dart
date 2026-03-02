// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_delegatednetwork_controller_details_args_doc}
/// The set of arguments for ControllerDetails.
/// {@endtemplate}
/// {@macro pulumi_delegatednetwork_controller_details_args_doc}
class ControllerDetailsArgs {
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// The purpose of the dnc controller resource.
  final pulumi.Input<String>? purpose;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String>? resourceName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ControllerDetailsArgs].
  /// [location] Location of the resource.
  /// [purpose] The purpose of the dnc controller resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource. It must be a minimum of 3 characters, and a maximum of 63.
  /// [tags] The resource tags.
  ControllerDetailsArgs({
    this.location,
    this.purpose,
    required this.resourceGroupName,
    this.resourceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'purpose': ?purpose,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory ControllerDetailsArgs.fromMap(Map<String, dynamic> map) {
    return ControllerDetailsArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      purpose: map['purpose'] == null ? null : (map['purpose'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

