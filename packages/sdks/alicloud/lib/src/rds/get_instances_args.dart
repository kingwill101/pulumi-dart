// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_rds_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// `Standard` for standard access mode and `Safe` for high security access mode.
  final pulumi.Input<String>? connectionMode;
  /// `Primary` for primary instance, `Readonly` for read-only instance, `Guard` for disaster recovery instance, and `Temp` for temporary instance.
  final pulumi.Input<String>? dbType;
  /// Default to `false`. Set it to `true` can output parameter template about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// Database type. Options are `MySQL`, `SQLServer`, `PostgreSQL`, `MariaDB`. If no value is specified, all types are returned.
  final pulumi.Input<String>? engine;
  /// A list of RDS instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by instance name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// Status of the instance.
  final pulumi.Input<String>? status;
  /// A map of tags assigned to the DB instances.
  /// Note: Before 1.60.0, the value's format is a `json` string which including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `"{\"key1\":\"value1\"}"`
  final pulumi.Input<Map<String, String>>? tags;
  /// Used to retrieve instances belong to specified VPC.
  final pulumi.Input<String>? vpcId;
  /// Used to retrieve instances belong to specified `vswitch` resources.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GetInstancesArgs].
  /// [connectionMode] `Standard` for standard access mode and `Safe` for high security access mode.
  /// [dbType] `Primary` for primary instance, `Readonly` for read-only instance, `Guard` for disaster recovery instance, and `Temp` for temporary instance.
  /// [enableDetails] Default to `false`. Set it to `true` can output parameter template about resource attributes.
  /// [engine] Database type. Options are `MySQL`, `SQLServer`, `PostgreSQL`, `MariaDB`. If no value is specified, all types are returned.
  /// [ids] A list of RDS instance IDs.
  /// [nameRegex] A regex string to filter results by instance name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] Status of the instance.
  /// [tags] A map of tags assigned to the DB instances.
  /// [vpcId] Used to retrieve instances belong to specified VPC.
  /// [vswitchId] Used to retrieve instances belong to specified `vswitch` resources.
  GetInstancesArgs({
    pulumi.Output<String>? connectionMode,
    pulumi.Output<String>? dbType,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<String>? engine,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      connectionMode = pulumi.Input.asOptionalInput<String>(connectionMode),
      dbType = pulumi.Input.asOptionalInput<String>(dbType),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionMode': ?connectionMode,
      'dbType': ?dbType,
      'enableDetails': ?enableDetails,
      'engine': ?engine,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      connectionMode: map['connectionMode'] == null ? null : pulumi.Output.create<String>(map['connectionMode'] as String),
      dbType: map['dbType'] == null ? null : pulumi.Output.create<String>(map['dbType'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

