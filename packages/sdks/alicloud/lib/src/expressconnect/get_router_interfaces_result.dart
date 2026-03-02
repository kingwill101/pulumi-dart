// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_interfaces_filter.dart';
import 'get_router_interfaces_interface.dart';

/// Result data returned by getRouterInterfaces.
class GetRouterInterfacesResult {
  final List<GetRouterInterfacesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Router Interface IDs.
  final List<String> ids;
  final String? includeReservationData;
  /// A list of Router Interface Entries. Each element contains the following attributes:
  final List<GetRouterInterfacesInterface> interfaces;
  final String? nameRegex;
  /// A list of name of Router Interfaces.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetRouterInterfacesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Router Interface IDs.
  /// [includeReservationData] Optional.
  /// [interfaces] A list of Router Interface Entries. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of name of Router Interfaces.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetRouterInterfacesResult({
    this.filters,
    required this.id,
    required this.ids,
    this.includeReservationData,
    required this.interfaces,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetRouterInterfacesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'includeReservationData': ?includeReservationData,
      'interfaces': pulumi.Input.encodeList<GetRouterInterfacesInterface, Map<String, dynamic>>(interfaces, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetRouterInterfacesResult.fromMap(Map<String, dynamic> map) {
    return GetRouterInterfacesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetRouterInterfacesFilter>(map['filters']!, (value) => GetRouterInterfacesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeReservationData: map['includeReservationData'] == null ? null : map['includeReservationData']! as String,
      interfaces: pulumi.Input.decodeList<GetRouterInterfacesInterface>(map['interfaces'], (value) => GetRouterInterfacesInterface.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
    );
  }
}

