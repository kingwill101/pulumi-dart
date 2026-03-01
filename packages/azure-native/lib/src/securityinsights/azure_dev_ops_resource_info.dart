// ignore_for_file: unused_element, unnecessary_cast


/// Resources created in Azure DevOps repository.
class AzureDevOpsResourceInfo {
  /// Id of the pipeline created for the source-control.
  final String? pipelineId;
  /// Id of the service-connection created for the source-control.
  final String? serviceConnectionId;

  /// Creates a new [AzureDevOpsResourceInfo].
  /// [pipelineId] Id of the pipeline created for the source-control.
  /// [serviceConnectionId] Id of the service-connection created for the source-control.
  AzureDevOpsResourceInfo({
    this.pipelineId,
    this.serviceConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineId': ?pipelineId,
      'serviceConnectionId': ?serviceConnectionId,
    };
  }

  factory AzureDevOpsResourceInfo.fromMap(Map<String, dynamic> map) {
    return AzureDevOpsResourceInfo(
      pipelineId: map['pipelineId'] == null ? null : map['pipelineId'] as String,
      serviceConnectionId: map['serviceConnectionId'] == null ? null : map['serviceConnectionId'] as String,
    );
  }
}

