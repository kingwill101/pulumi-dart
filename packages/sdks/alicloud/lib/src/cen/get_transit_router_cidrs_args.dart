// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_cidrs_get_transit_router_cidrs_args_doc}
/// Arguments for getTransitRouterCidrs.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_cidrs_get_transit_router_cidrs_args_doc}
class GetTransitRouterCidrsArgs {
  /// A list of Cen Transit Router Cidr IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Transit Router Cidr name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the transit router cidr.
  final pulumi.Input<String>? transitRouterCidrId;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;

  /// Creates a new [GetTransitRouterCidrsArgs].
  /// [ids] A list of Cen Transit Router Cidr IDs.
  /// [nameRegex] A regex string to filter results by Transit Router Cidr name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [transitRouterCidrId] The ID of the transit router cidr.
  /// [transitRouterId] The ID of the transit router.
  GetTransitRouterCidrsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.transitRouterCidrId,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'transitRouterCidrId': ?transitRouterCidrId,
      'transitRouterId': transitRouterId,
    };
  }

  factory GetTransitRouterCidrsArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterCidrsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      transitRouterCidrId: map['transitRouterCidrId'] == null ? null : (map['transitRouterCidrId']! as String).input(),
      transitRouterId: (map['transitRouterId'] as String).input(),
    );
  }
}

