// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_border_routers_filter.dart';
import 'get_virtual_border_routers_router.dart';

/// Result data returned by getVirtualBorderRouters.
class GetVirtualBorderRoutersResult {
  final List<GetVirtualBorderRoutersFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetVirtualBorderRoutersRouter> routers;
  final String? status;

  /// Creates a new [GetVirtualBorderRoutersResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [routers] Required.
  /// [status] Optional.
  GetVirtualBorderRoutersResult({
    this.filters,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.routers,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetVirtualBorderRoutersFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'routers': pulumi.Input.encodeList<GetVirtualBorderRoutersRouter, Map<String, dynamic>>(routers, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetVirtualBorderRoutersResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualBorderRoutersResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetVirtualBorderRoutersFilter>(map['filters'], (value) => GetVirtualBorderRoutersFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      routers: pulumi.Input.decodeList<GetVirtualBorderRoutersRouter>(map['routers'], (value) => GetVirtualBorderRoutersRouter.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

