// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_border_routers_filter.dart';

/// {@template pulumi_expressconnect_get_virtual_border_routers_get_virtual_border_routers_args_doc}
/// Arguments for getVirtualBorderRouters.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_get_virtual_border_routers_get_virtual_border_routers_args_doc}
class GetVirtualBorderRoutersArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetVirtualBorderRoutersFilter>>? filters;
  /// A list of Virtual Border Router IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Virtual Border Router name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The instance state with. Valid values: `active`, `deleting`, `recovering`, `terminated`, `terminating`, `unconfirmed`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetVirtualBorderRoutersArgs].
  /// [filters] Custom filter block as described below.
  /// [ids] A list of Virtual Border Router IDs.
  /// [nameRegex] A regex string to filter results by Virtual Border Router name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The instance state with. Valid values: `active`, `deleting`, `recovering`, `terminated`, `terminating`, `unconfirmed`.
  GetVirtualBorderRoutersArgs({
    this.filters,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVirtualBorderRoutersFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVirtualBorderRoutersFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetVirtualBorderRoutersArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualBorderRoutersArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetVirtualBorderRoutersFilter>(map['filters'], (value) => GetVirtualBorderRoutersFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

