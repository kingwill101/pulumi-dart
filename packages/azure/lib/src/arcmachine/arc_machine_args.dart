// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_machine_identity.dart';

/// {@template pulumi_arcmachine_arc_machine_arc_machine_args_doc}
/// The set of arguments for ArcMachine.
/// {@endtemplate}
/// {@macro pulumi_arcmachine_arc_machine_arc_machine_args_doc}
class ArcMachineArgs {
  /// An `identity` block as defined below.
  final pulumi.Input<ArcMachineIdentity>? identity;
  /// The kind of the Arc Machine. Possible values are `AVS`, `AWS`, `EPS`, `GCP`, `HCI`, `SCVMM` and `VMware`. Changing this forces a new resource to be created.
  final pulumi.Input<String> kind;
  /// The Azure Region where the Arc Machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Arc machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Arc Machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the Arc Machine.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ArcMachineArgs].
  /// [identity] An `identity` block as defined below.
  /// [kind] The kind of the Arc Machine. Possible values are `AVS`, `AWS`, `EPS`, `GCP`, `HCI`, `SCVMM` and `VMware`. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Arc Machine should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Arc machine. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Arc Machine should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Arc Machine.
  ArcMachineArgs({
    ArcMachineIdentity? identity,
    required String kind,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<ArcMachineIdentity>(identity),
      kind = pulumi.Input.asInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ArcMachineIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ArcMachineArgs.fromMap(Map<String, dynamic> map) {
    return ArcMachineArgs(
      identity: map['identity'] == null ? null : ArcMachineIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

