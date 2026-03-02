// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_traffic_mirror_filters_get_traffic_mirror_filters_args_doc}
/// Arguments for getTrafficMirrorFilters.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_traffic_mirror_filters_get_traffic_mirror_filters_args_doc}
class GetTrafficMirrorFiltersArgs {
  /// A list of Traffic Mirror Filter IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Traffic Mirror Filter name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The state of the filter. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`. `Creating`: The filter is being created. `Created`: The filter is created. `Modifying`: The filter is being modified. `Deleting`: The filter is being deleted.
  final pulumi.Input<String>? status;
  /// The name of the filter. The name must be `2` to `128` characters in length, and can contain digits, periods (.), underscores (_), and hyphens (-). It must start with a letter and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? trafficMirrorFilterName;

  /// Creates a new [GetTrafficMirrorFiltersArgs].
  /// [ids] A list of Traffic Mirror Filter IDs.
  /// [nameRegex] A regex string to filter results by Traffic Mirror Filter name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The state of the filter. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`. `Creating`: The filter is being created. `Created`: The filter is created. `Modifying`: The filter is being modified. `Deleting`: The filter is being deleted.
  /// [trafficMirrorFilterName] The name of the filter. The name must be `2` to `128` characters in length, and can contain digits, periods (.), underscores (_), and hyphens (-). It must start with a letter and cannot start with `http://` or `https://`.
  GetTrafficMirrorFiltersArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.trafficMirrorFilterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'trafficMirrorFilterName': ?trafficMirrorFilterName,
    };
  }

  factory GetTrafficMirrorFiltersArgs.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorFiltersArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      trafficMirrorFilterName: map['trafficMirrorFilterName'] == null ? null : (map['trafficMirrorFilterName'] as String).input(),
    );
  }
}

