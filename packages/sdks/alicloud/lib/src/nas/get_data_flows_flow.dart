// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataFlowsFlow {
  /// The time when Fileset was created. Executing the ISO8601 standard means that the return format is: 'yyyy-MM-ddTHH:mm:ssZ'.
  final pulumi.Input<String> createTime;

  /// The ID of the Data Flow.
  final pulumi.Input<String> dataFlowId;

  /// The Description of data flow.
  final pulumi.Input<String> description;

  /// Error message.
  final pulumi.Input<String> errorMessage;

  /// The ID of the file system.
  final pulumi.Input<String> fileSystemId;

  /// The path of Fileset in the CPFS file system.
  final pulumi.Input<String> fileSystemPath;

  /// Description of automatic update.
  final pulumi.Input<String> fsetDescription;

  /// The ID of the Fileset.
  final pulumi.Input<String> fsetId;

  /// The resource ID of the data flow. The value formats as `&lt;file_system_id&gt;:&lt;data_flow_id&gt;`.
  final pulumi.Input<String> id;

  /// The security protection type of the source storage.
  final pulumi.Input<String> sourceSecurityType;

  /// The access path of the source store. Format: `&lt;storage type&gt;://&lt;path&gt;`.
  final pulumi.Input<String> sourceStorage;

  /// The status of the Data flow.
  final pulumi.Input<String> status;

  /// The maximum transmission bandwidth of data flow, unit: `MB/s`.
  final pulumi.Input<int> throughput;

  /// Creates a new [GetDataFlowsFlow].
  /// [createTime] The time when Fileset was created. Executing the ISO8601 standard means that the return format is: 'yyyy-MM-ddTHH:mm:ssZ'.
  /// [dataFlowId] The ID of the Data Flow.
  /// [description] The Description of data flow.
  /// [errorMessage] Error message.
  /// [fileSystemId] The ID of the file system.
  /// [fileSystemPath] The path of Fileset in the CPFS file system.
  /// [fsetDescription] Description of automatic update.
  /// [fsetId] The ID of the Fileset.
  /// [id] The resource ID of the data flow. The value formats as `&lt;file_system_id&gt;:&lt;data_flow_id&gt;`.
  /// [sourceSecurityType] The security protection type of the source storage.
  /// [sourceStorage] The access path of the source store. Format: `&lt;storage type&gt;://&lt;path&gt;`.
  /// [status] The status of the Data flow.
  /// [throughput] The maximum transmission bandwidth of data flow, unit: `MB/s`.
  GetDataFlowsFlow({
    required this.createTime,
    required this.dataFlowId,
    required this.description,
    required this.errorMessage,
    required this.fileSystemId,
    required this.fileSystemPath,
    required this.fsetDescription,
    required this.fsetId,
    required this.id,
    required this.sourceSecurityType,
    required this.sourceStorage,
    required this.status,
    required this.throughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dataFlowId': dataFlowId,
      'description': description,
      'errorMessage': errorMessage,
      'fileSystemId': fileSystemId,
      'fileSystemPath': fileSystemPath,
      'fsetDescription': fsetDescription,
      'fsetId': fsetId,
      'id': id,
      'sourceSecurityType': sourceSecurityType,
      'sourceStorage': sourceStorage,
      'status': status,
      'throughput': throughput,
    };
  }

  factory GetDataFlowsFlow.fromMap(Map<String, dynamic> map) {
    return GetDataFlowsFlow(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataFlowId: pulumi.Input.fromValue(map['dataFlowId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      fileSystemPath: pulumi.Input.fromValue(map['fileSystemPath'] as String),
      fsetDescription: pulumi.Input.fromValue(map['fsetDescription'] as String),
      fsetId: pulumi.Input.fromValue(map['fsetId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      sourceSecurityType: pulumi.Input.fromValue(
        map['sourceSecurityType'] as String,
      ),
      sourceStorage: pulumi.Input.fromValue(map['sourceStorage'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      throughput: pulumi.Input.fromValue(map['throughput'] as int),
    );
  }
}
