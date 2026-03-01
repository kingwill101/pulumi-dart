// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ElasticGpuAssociation
class ElasticGpuAssociationResponse {
  /// <p>The ID of the association.</p>
  final String? elasticGpuAssociationId;
  /// <p>The state of the association between the instance and the Elastic Graphics accelerator.</p>
  final String? elasticGpuAssociationState;
  /// <p>The time the Elastic Graphics accelerator was associated with the instance.</p>
  final String? elasticGpuAssociationTime;
  /// <p>The ID of the Elastic Graphics accelerator.</p>
  final String? elasticGpuId;

  /// Creates a new [ElasticGpuAssociationResponse].
  /// [elasticGpuAssociationId] <p>The ID of the association.</p>
  /// [elasticGpuAssociationState] <p>The state of the association between the instance and the Elastic Graphics accelerator.</p>
  /// [elasticGpuAssociationTime] <p>The time the Elastic Graphics accelerator was associated with the instance.</p>
  /// [elasticGpuId] <p>The ID of the Elastic Graphics accelerator.</p>
  ElasticGpuAssociationResponse({
    this.elasticGpuAssociationId,
    this.elasticGpuAssociationState,
    this.elasticGpuAssociationTime,
    this.elasticGpuId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticGpuAssociationId': ?elasticGpuAssociationId,
      'elasticGpuAssociationState': ?elasticGpuAssociationState,
      'elasticGpuAssociationTime': ?elasticGpuAssociationTime,
      'elasticGpuId': ?elasticGpuId,
    };
  }

  factory ElasticGpuAssociationResponse.fromMap(Map<String, dynamic> map) {
    return ElasticGpuAssociationResponse(
      elasticGpuAssociationId: map['elasticGpuAssociationId'] == null ? null : map['elasticGpuAssociationId'] as String,
      elasticGpuAssociationState: map['elasticGpuAssociationState'] == null ? null : map['elasticGpuAssociationState'] as String,
      elasticGpuAssociationTime: map['elasticGpuAssociationTime'] == null ? null : map['elasticGpuAssociationTime'] as String,
      elasticGpuId: map['elasticGpuId'] == null ? null : map['elasticGpuId'] as String,
    );
  }
}

