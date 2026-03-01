// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_transit_router_args_doc}
/// The set of arguments for TransitRouter.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_transit_router_args_doc}
class TransitRouterArgs {
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final pulumi.Input<String> cenId;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// Specifies whether to enable the multicast feature for the Enterprise Edition transit router. Valid values:
  final pulumi.Input<bool>? supportMulticast;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The description of the Enterprise Edition transit router instance.
  /// The description must be 1 to 256 characters in length, and cannot start with http:// or https://. You can also leave this parameter empty.
  final pulumi.Input<String>? transitRouterDescription;
  /// The name of the Enterprise Edition transit router.
  /// The name must be 1 to 128 characters in length, and cannot start with http:// or https://. You can also leave this parameter empty.
  final pulumi.Input<String>? transitRouterName;

  /// Creates a new [TransitRouterArgs].
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [dryRun] The dry run.
  /// [supportMulticast] Specifies whether to enable the multicast feature for the Enterprise Edition transit router. Valid values:
  /// [tags] The tag of the resource
  /// [transitRouterDescription] The description of the Enterprise Edition transit router instance.
  /// [transitRouterName] The name of the Enterprise Edition transit router.
  TransitRouterArgs({
    required pulumi.Output<String> cenId,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? supportMulticast,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitRouterDescription,
    pulumi.Output<String>? transitRouterName,
  }) :
      cenId = pulumi.Input.asInput<String>(cenId),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      supportMulticast = pulumi.Input.asOptionalInput<bool>(supportMulticast),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterDescription = pulumi.Input.asOptionalInput<String>(transitRouterDescription),
      transitRouterName = pulumi.Input.asOptionalInput<String>(transitRouterName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'dryRun': ?dryRun,
      'supportMulticast': ?supportMulticast,
      'tags': ?tags,
      'transitRouterDescription': ?transitRouterDescription,
      'transitRouterName': ?transitRouterName,
    };
  }

  factory TransitRouterArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterArgs(
      cenId: pulumi.Output.create<String>(map['cenId'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      supportMulticast: map['supportMulticast'] == null ? null : pulumi.Output.create<bool>(map['supportMulticast'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitRouterDescription: map['transitRouterDescription'] == null ? null : pulumi.Output.create<String>(map['transitRouterDescription'] as String),
      transitRouterName: map['transitRouterName'] == null ? null : pulumi.Output.create<String>(map['transitRouterName'] as String),
    );
  }
}

