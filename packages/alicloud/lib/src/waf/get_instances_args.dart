// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_waf_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_waf_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// A list of WAF instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// The source of the WAF instance.
  final pulumi.Input<String>? instanceSource;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of resource group to which WAF instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of WAF instance to filter results. Optional value: `0`: The instance has expired, `1` : The instance has not expired and is working properly.
  final pulumi.Input<int>? status;

  /// Creates a new [GetInstancesArgs].
  /// [ids] A list of WAF instance IDs.
  /// [instanceSource] The source of the WAF instance.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of resource group to which WAF instance belongs.
  /// [status] The status of WAF instance to filter results. Optional value: `0`: The instance has expired, `1` : The instance has not expired and is working properly.
  GetInstancesArgs({
    List<String>? ids,
    String? instanceSource,
    String? outputFile,
    String? resourceGroupId,
    int? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceSource = pulumi.Input.asOptionalInput<String>(instanceSource),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<int>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceSource': ?instanceSource,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceSource: map['instanceSource'] == null ? null : map['instanceSource'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as int,
    );
  }
}

