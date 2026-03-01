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
    pulumi.Output<List<GetNestServiceInstancesFilter>>? filters,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetNestServiceInstancesFilter>>(filters),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetNestServiceInstancesFilter>>(pulumi.Input.decodeList<GetNestServiceInstancesFilter>(map['filters'], (value) => GetNestServiceInstancesFilter.fromMap((value as Map).cast<String, dynamic>()))),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

