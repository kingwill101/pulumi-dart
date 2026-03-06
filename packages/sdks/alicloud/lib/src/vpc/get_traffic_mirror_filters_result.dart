// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_traffic_mirror_filters_filter.dart';

/// Result data returned by getTrafficMirrorFilters.
class GetTrafficMirrorFiltersResult {
  /// A list of Vpc Traffic Mirror Filters. Each element contains the following attributes:
  final List<GetTrafficMirrorFiltersFilter> filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Traffic Mirror Filter names.
  final List<String> names;
  final String? outputFile;
  /// The state of the filter. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`. `Creating`: The filter is being created. `Created`: The filter is created. `Modifying`: The filter is being modified. `Deleting`: The filter is being deleted.
  final String? status;
  /// The name of the filter.
  final String? trafficMirrorFilterName;

  /// Creates a new [GetTrafficMirrorFiltersResult].
  /// [filters] A list of Vpc Traffic Mirror Filters. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Traffic Mirror Filter names.
  /// [outputFile] Optional.
  /// [status] The state of the filter. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`. `Creating`: The filter is being created. `Created`: The filter is created. `Modifying`: The filter is being modified. `Deleting`: The filter is being deleted.
  /// [trafficMirrorFilterName] The name of the filter.
  const GetTrafficMirrorFiltersResult({
    required this.filters,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.trafficMirrorFilterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': pulumi.Input.encodeList<GetTrafficMirrorFiltersFilter, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'trafficMirrorFilterName': ?trafficMirrorFilterName,
    };
  }

  factory GetTrafficMirrorFiltersResult.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorFiltersResult(
      filters: pulumi.Input.decodeList<GetTrafficMirrorFiltersFilter>(map['filters']!, (value) => GetTrafficMirrorFiltersFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trafficMirrorFilterName: (() { final guardedValue = map['trafficMirrorFilterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

