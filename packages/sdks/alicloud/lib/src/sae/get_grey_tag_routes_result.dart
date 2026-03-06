// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_grey_tag_routes_route.dart';

/// Result data returned by getGreyTagRoutes.
class GetGreyTagRoutesResult {
  final String appId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetGreyTagRoutesRoute> routes;

  /// Creates a new [GetGreyTagRoutesResult].
  /// [appId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [routes] Required.
  const GetGreyTagRoutesResult({
    required this.appId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'routes': pulumi.Input.encodeList<GetGreyTagRoutesRoute, Map<String, dynamic>>(routes, (value) => value.toMap()),
    };
  }

  factory GetGreyTagRoutesResult.fromMap(Map<String, dynamic> map) {
    return GetGreyTagRoutesResult(
      appId: map['appId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routes: pulumi.Input.decodeList<GetGreyTagRoutesRoute>(map['routes']!, (value) => GetGreyTagRoutesRoute.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

