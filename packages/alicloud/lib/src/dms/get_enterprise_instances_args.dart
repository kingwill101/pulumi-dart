// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_get_enterprise_instances_get_enterprise_instances_args_doc}
/// Arguments for getEnterpriseInstances.
/// {@endtemplate}
/// {@macro pulumi_dms_get_enterprise_instances_get_enterprise_instances_args_doc}
class GetEnterpriseInstancesArgs {
  /// The type of the environment to which the database instance belongs.
  final pulumi.Input<String>? envType;
  /// A regex string to filter the results by the DMS Enterprise Instance instance_alias.
  final pulumi.Input<String>? instanceAliasRegex;
  /// The source of the database instance.
  final pulumi.Input<String>? instanceSource;
  /// The ID of the database instance.
  final pulumi.Input<String>? instanceType;
  /// A regex string to filter the results by the DMS Enterprise Instance instance_alias.
  final pulumi.Input<String>? nameRegex;
  /// The network type of the database instance. Valid values: CLASSIC and VPC. For more information about the valid values, see the description of the RegisterInstance operation.
  final pulumi.Input<String>? netType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The keyword used to query database instances.
  final pulumi.Input<String>? searchKey;
  /// Filter the results by status of the DMS Enterprise Instances. Valid values: `NORMAL`, `UNAVAILABLE`, `UNKNOWN`, `DELETED`, `DISABLE`.
  final pulumi.Input<String>? status;
  /// The ID of the tenant in Data Management (DMS) Enterprise.
  final pulumi.Input<int>? tid;

  /// Creates a new [GetEnterpriseInstancesArgs].
  /// [envType] The type of the environment to which the database instance belongs.
  /// [instanceAliasRegex] A regex string to filter the results by the DMS Enterprise Instance instance_alias.
  /// [instanceSource] The source of the database instance.
  /// [instanceType] The ID of the database instance.
  /// [nameRegex] A regex string to filter the results by the DMS Enterprise Instance instance_alias.
  /// [netType] The network type of the database instance. Valid values: CLASSIC and VPC. For more information about the valid values, see the description of the RegisterInstance operation.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [searchKey] The keyword used to query database instances.
  /// [status] Filter the results by status of the DMS Enterprise Instances. Valid values: `NORMAL`, `UNAVAILABLE`, `UNKNOWN`, `DELETED`, `DISABLE`.
  /// [tid] The ID of the tenant in Data Management (DMS) Enterprise.
  GetEnterpriseInstancesArgs({
    String? envType,
    String? instanceAliasRegex,
    String? instanceSource,
    String? instanceType,
    String? nameRegex,
    String? netType,
    String? outputFile,
    String? searchKey,
    String? status,
    int? tid,
  }) :
      envType = pulumi.Input.asOptionalInput<String>(envType),
      instanceAliasRegex = pulumi.Input.asOptionalInput<String>(instanceAliasRegex),
      instanceSource = pulumi.Input.asOptionalInput<String>(instanceSource),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      netType = pulumi.Input.asOptionalInput<String>(netType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      searchKey = pulumi.Input.asOptionalInput<String>(searchKey),
      status = pulumi.Input.asOptionalInput<String>(status),
      tid = pulumi.Input.asOptionalInput<int>(tid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envType': ?envType,
      'instanceAliasRegex': ?instanceAliasRegex,
      'instanceSource': ?instanceSource,
      'instanceType': ?instanceType,
      'nameRegex': ?nameRegex,
      'netType': ?netType,
      'outputFile': ?outputFile,
      'searchKey': ?searchKey,
      'status': ?status,
      'tid': ?tid,
    };
  }

  factory GetEnterpriseInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseInstancesArgs(
      envType: map['envType'] == null ? null : map['envType'] as String,
      instanceAliasRegex: map['instanceAliasRegex'] == null ? null : map['instanceAliasRegex'] as String,
      instanceSource: map['instanceSource'] == null ? null : map['instanceSource'] as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      netType: map['netType'] == null ? null : map['netType'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      searchKey: map['searchKey'] == null ? null : map['searchKey'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tid: map['tid'] == null ? null : map['tid'] as int,
    );
  }
}

