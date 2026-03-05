// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_available_resources_get_transit_router_available_resources_args_doc}
/// Arguments for getTransitRouterAvailableResources.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_available_resources_get_transit_router_available_resources_args_doc}
class GetTransitRouterAvailableResourcesArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Specifies whether to query only the zones in which the multicast feature is supported.
  final pulumi.Input<bool>? supportMulticast;

  /// Creates a new [GetTransitRouterAvailableResourcesArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [supportMulticast] Specifies whether to query only the zones in which the multicast feature is supported.
  GetTransitRouterAvailableResourcesArgs({
    this.outputFile,
    this.supportMulticast,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
      'supportMulticast': ?supportMulticast,
    };
  }

  factory GetTransitRouterAvailableResourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterAvailableResourcesArgs(
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportMulticast: (() { final guardedValue = map['supportMulticast']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

