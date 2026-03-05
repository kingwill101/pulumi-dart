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
    required this.cenId,
    this.dryRun,
    this.supportMulticast,
    this.tags,
    this.transitRouterDescription,
    this.transitRouterName,
  });

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
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      supportMulticast: (() { final guardedValue = map['supportMulticast']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitRouterDescription: (() { final guardedValue = map['transitRouterDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterName: (() { final guardedValue = map['transitRouterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

