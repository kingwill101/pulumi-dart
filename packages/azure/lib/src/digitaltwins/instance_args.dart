// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_identity.dart';

/// {@template pulumi_digitaltwins_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_instance_instance_args_doc}
class InstanceArgs {
  /// An `identity` block as defined below.
  final pulumi.Input<InstanceIdentity>? identity;
  /// The Azure Region where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Digital Twins instance. Changing this forces a new Digital Twins instance to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Digital Twins instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceArgs].
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
  /// [name] The name which should be used for this Digital Twins instance. Changing this forces a new Digital Twins instance to be created.
  /// [resourceGroupName] The name of the Resource Group where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created.
  /// [tags] A mapping of tags which should be assigned to the Digital Twins instance.
  InstanceArgs({
    InstanceIdentity? identity,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<InstanceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<InstanceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      identity: map['identity'] == null ? null : InstanceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

