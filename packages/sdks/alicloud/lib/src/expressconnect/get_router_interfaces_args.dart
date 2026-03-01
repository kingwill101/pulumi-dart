// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_interfaces_filter.dart';

/// {@template pulumi_expressconnect_get_router_interfaces_get_router_interfaces_args_doc}
/// Arguments for getRouterInterfaces.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_get_router_interfaces_get_router_interfaces_args_doc}
class GetRouterInterfacesArgs {
  final pulumi.Input<List<GetRouterInterfacesFilter>>? filters;
  /// A list of Router Interface IDs.
  final pulumi.Input<List<String>>? ids;
  /// Does it contain renewal data. Valid values: `true`, `false`.
  final pulumi.Input<String>? includeReservationData;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetRouterInterfacesArgs].
  /// [filters] Optional.
  /// [ids] A list of Router Interface IDs.
  /// [includeReservationData] Does it contain renewal data. Valid values: `true`, `false`.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetRouterInterfacesArgs({
    pulumi.Output<List<GetRouterInterfacesFilter>>? filters,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? includeReservationData,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetRouterInterfacesFilter>>(filters),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      includeReservationData = pulumi.Input.asOptionalInput<String>(includeReservationData),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetRouterInterfacesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetRouterInterfacesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ids': ?ids,
      'includeReservationData': ?includeReservationData,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetRouterInterfacesArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterInterfacesArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetRouterInterfacesFilter>>(pulumi.Input.decodeList<GetRouterInterfacesFilter>(map['filters'], (value) => GetRouterInterfacesFilter.fromMap((value as Map).cast<String, dynamic>()))),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      includeReservationData: map['includeReservationData'] == null ? null : pulumi.Output.create<String>(map['includeReservationData'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
    );
  }
}

