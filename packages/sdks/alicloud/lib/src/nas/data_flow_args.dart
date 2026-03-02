// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_data_flow_data_flow_args_doc}
/// The set of arguments for DataFlow.
/// {@endtemplate}
/// {@macro pulumi_nas_data_flow_data_flow_args_doc}
class DataFlowArgs {
  /// The Description of the data flow. Restrictions:
  final pulumi.Input<String>? description;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the file system.
  final pulumi.Input<String> fileSystemId;
  /// The ID of the Fileset.
  final pulumi.Input<String> fsetId;
  /// The security protection type of the source storage. If the source storage must be accessed through security protection, specify the security protection type of the source storage. Value:
  /// - `NONE` (default): Indicates that the source storage does not need to be accessed through security protection.
  /// - `SSL`: Protects access through SSL certificates.
  final pulumi.Input<String>? sourceSecurityType;
  /// The access path of the source store. Format: `<storage type>://<path>`. Among them:
  /// - storage type: currently only OSS is supported.
  /// - path: the bucket name of OSS.
  /// - Only lowercase letters, numbers, and dashes (-) are supported and must start and end with lowercase letters or numbers.
  final pulumi.Input<String> sourceStorage;
  /// The status of the Data flow. Valid values: `Running`, `Stopped`.
  final pulumi.Input<String>? status;
  /// The maximum transmission bandwidth of data flow, unit: `MB/s`. Valid values: `1200`, `1500`, `600`. **NOTE:** The transmission bandwidth of data flow must be less than the IO bandwidth of the file system.
  final pulumi.Input<int> throughput;

  /// Creates a new [DataFlowArgs].
  /// [description] The Description of the data flow. Restrictions:
  /// [dryRun] The dry run.
  /// [fileSystemId] The ID of the file system.
  /// [fsetId] The ID of the Fileset.
  /// [sourceSecurityType] The security protection type of the source storage. If the source storage must be accessed through security protection, specify the security protection type of the source storage. Value:
  /// [sourceStorage] The access path of the source store. Format: `<storage type>://<path>`. Among them:
  /// [status] The status of the Data flow. Valid values: `Running`, `Stopped`.
  /// [throughput] The maximum transmission bandwidth of data flow, unit: `MB/s`. Valid values: `1200`, `1500`, `600`. **NOTE:** The transmission bandwidth of data flow must be less than the IO bandwidth of the file system.
  DataFlowArgs({
    this.description,
    this.dryRun,
    required this.fileSystemId,
    required this.fsetId,
    this.sourceSecurityType,
    required this.sourceStorage,
    this.status,
    required this.throughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dryRun': ?dryRun,
      'fileSystemId': fileSystemId,
      'fsetId': fsetId,
      'sourceSecurityType': ?sourceSecurityType,
      'sourceStorage': sourceStorage,
      'status': ?status,
      'throughput': throughput,
    };
  }

  factory DataFlowArgs.fromMap(Map<String, dynamic> map) {
    return DataFlowArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      fileSystemId: (map['fileSystemId'] as String).input(),
      fsetId: (map['fsetId'] as String).input(),
      sourceSecurityType: map['sourceSecurityType'] == null ? null : (map['sourceSecurityType']! as String).input(),
      sourceStorage: (map['sourceStorage'] as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      throughput: (map['throughput'] as int).input(),
    );
  }
}

