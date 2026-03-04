// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_routers_transit_router.dart';

/// Result data returned by getTransitRouters.
class GetTransitRoutersResult {
  /// The ID of the CEN instance.
  final String cenId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String>? ids;
  final String? nameRegex;

  /// A list of  CEN Transit Routers names.
  final List<String> names;
  final String? outputFile;

  /// The status of the transit router attachment.
  final String? status;

  /// The ID of the transit router.
  final String? transitRouterId;
  final List<String>? transitRouterIds;

  /// A list of CEN Transit Routers. Each element contains the following attributes:
  final List<GetTransitRoutersTransitRouter> transitRouters;

  /// Creates a new [GetTransitRoutersResult].
  /// [cenId] The ID of the CEN instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of  CEN Transit Routers names.
  /// [outputFile] Optional.
  /// [status] The status of the transit router attachment.
  /// [transitRouterId] The ID of the transit router.
  /// [transitRouterIds] Optional.
  /// [transitRouters] A list of CEN Transit Routers. Each element contains the following attributes:
  GetTransitRoutersResult({
    required this.cenId,
    required this.id,
    this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.transitRouterId,
    this.transitRouterIds,
    required this.transitRouters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'id': id,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterId': ?transitRouterId,
      'transitRouterIds': ?transitRouterIds,
      'transitRouters':
          pulumi.Input.encodeList<
            GetTransitRoutersTransitRouter,
            Map<String, dynamic>
          >(transitRouters, (value) => value.toMap()),
    };
  }

  factory GetTransitRoutersResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRoutersResult(
      cenId: map['cenId'] as String,
      id: map['id'] as String,
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      transitRouterId: (() {
        final guardedValue = map['transitRouterId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      transitRouterIds: (() {
        final guardedValue = map['transitRouterIds'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      transitRouters: pulumi.Input.decodeList<GetTransitRoutersTransitRouter>(
        map['transitRouters']!,
        (value) => GetTransitRoutersTransitRouter.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
