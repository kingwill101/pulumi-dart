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
    this.envType,
    this.instanceAliasRegex,
    this.instanceSource,
    this.instanceType,
    this.nameRegex,
    this.netType,
    this.outputFile,
    this.searchKey,
    this.status,
    this.tid,
  });

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
      envType: (() {
        final guardedValue = map['envType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceAliasRegex: (() {
        final guardedValue = map['instanceAliasRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceSource: (() {
        final guardedValue = map['instanceSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      netType: (() {
        final guardedValue = map['netType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      searchKey: (() {
        final guardedValue = map['searchKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tid: (() {
        final guardedValue = map['tid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
