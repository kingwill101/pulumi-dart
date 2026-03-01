// ignore_for_file: unused_element, unnecessary_cast


class GetDataFlowsFlow {
  /// The time when Fileset was created. Executing the ISO8601 standard means that the return format is: 'yyyy-MM-ddTHH:mm:ssZ'.
  final String createTime;
  /// The ID of the Data Flow.
  final String dataFlowId;
  /// The Description of data flow.
  final String description;
  /// Error message.
  final String errorMessage;
  /// The ID of the file system.
  final String fileSystemId;
  /// The path of Fileset in the CPFS file system.
  final String fileSystemPath;
  /// Description of automatic update.
  final String fsetDescription;
  /// The ID of the Fileset.
  final String fsetId;
  /// The resource ID of the data flow. The value formats as `<file_system_id>:<data_flow_id>`.
  final String id;
  /// The security protection type of the source storage.
  final String sourceSecurityType;
  /// The access path of the source store. Format: `<storage type>://<path>`.
  final String sourceStorage;
  /// The status of the Data flow.
  final String status;
  /// The maximum transmission bandwidth of data flow, unit: `MB/s`.
  final int throughput;

  /// Creates a new [GetDataFlowsFlow].
  /// [createTime] The time when Fileset was created. Executing the ISO8601 standard means that the return format is: 'yyyy-MM-ddTHH:mm:ssZ'.
  /// [dataFlowId] The ID of the Data Flow.
  /// [description] The Description of data flow.
  /// [errorMessage] Error message.
  /// [fileSystemId] The ID of the file system.
  /// [fileSystemPath] The path of Fileset in the CPFS file system.
  /// [fsetDescription] Description of automatic update.
  /// [fsetId] The ID of the Fileset.
  /// [id] The resource ID of the data flow. The value formats as `<file_system_id>:<data_flow_id>`.
  /// [sourceSecurityType] The security protection type of the source storage.
  /// [sourceStorage] The access path of the source store. Format: `<storage type>://<path>`.
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
      createTime: map['createTime'] as String,
      dataFlowId: map['dataFlowId'] as String,
      description: map['description'] as String,
      errorMessage: map['errorMessage'] as String,
      fileSystemId: map['fileSystemId'] as String,
      fileSystemPath: map['fileSystemPath'] as String,
      fsetDescription: map['fsetDescription'] as String,
      fsetId: map['fsetId'] as String,
      id: map['id'] as String,
      sourceSecurityType: map['sourceSecurityType'] as String,
      sourceStorage: map['sourceStorage'] as String,
      status: map['status'] as String,
      throughput: map['throughput'] as int,
    );
  }
}

