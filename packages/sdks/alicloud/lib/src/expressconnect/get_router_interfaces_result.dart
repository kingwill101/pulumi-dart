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
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouterInterfacesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
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
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouterInterfacesFilter>(guardedValue, (value) => GetRouterInterfacesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeReservationData: (() { final guardedValue = map['includeReservationData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interfaces: pulumi.Input.decodeList<GetRouterInterfacesInterface>(map['interfaces']!, (value) => GetRouterInterfacesInterface.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

