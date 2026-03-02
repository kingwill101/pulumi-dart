// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nest_service_instances_filter.dart';

/// {@template pulumi_compute_get_nest_service_instances_get_nest_service_instances_args_doc}
/// Arguments for getNestServiceInstances.
/// {@endtemplate}
/// {@macro pulumi_compute_get_nest_service_instances_get_nest_service_instances_args_doc}
class GetNestServiceInstancesArgs {
  /// The conditions that are used to filter. See the following `Block filter`.
  final pulumi.Input<List<GetNestServiceInstancesFilter>>? filters;
  /// A list of Service Instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Service Instance name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the Service Instance. Valid Values: `Created`, `Deploying`, `DeployedFailed`, `Deployed`, `Upgrading`, `Deleting`, `Deleted`, `DeletedFailed`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetNestServiceInstancesArgs].
  /// [filters] The conditions that are used to filter. See the following `Block filter`.
  /// [ids] A list of Service Instance IDs.
  /// [nameRegex] A regex string to filter results by Service Instance name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the Service Instance. Valid Values: `Created`, `Deploying`, `DeployedFailed`, `Deployed`, `Upgrading`, `Deleting`, `Deleted`, `DeletedFailed`.
  /// [tags] A mapping of tags to assign to the resource.
  GetNestServiceInstancesArgs({
    this.filters,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetNestServiceInstancesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetNestServiceInstancesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetNestServiceInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetNestServiceInstancesArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetNestServiceInstancesFilter>(map['filters']!, (value) => GetNestServiceInstancesFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

