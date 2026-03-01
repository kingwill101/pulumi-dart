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
    pulumi.Output<String>? location,
    pulumi.Output<String>? purpose,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      purpose = pulumi.Input.asOptionalInput<String>(purpose),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      purpose: map['purpose'] == null ? null : pulumi.Output.create<String>(map['purpose'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

