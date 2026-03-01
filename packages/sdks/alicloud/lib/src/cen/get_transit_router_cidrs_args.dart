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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? transitRouterCidrId,
    required pulumi.Output<String> transitRouterId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      transitRouterCidrId = pulumi.Input.asOptionalInput<String>(transitRouterCidrId),
      transitRouterId = pulumi.Input.asInput<String>(transitRouterId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      transitRouterCidrId: map['transitRouterCidrId'] == null ? null : pulumi.Output.create<String>(map['transitRouterCidrId'] as String),
      transitRouterId: pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

