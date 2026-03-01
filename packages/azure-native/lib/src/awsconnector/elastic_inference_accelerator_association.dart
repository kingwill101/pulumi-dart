// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ElasticInferenceAcceleratorAssociation
class ElasticInferenceAcceleratorAssociation {
  /// <p> The Amazon Resource Name (ARN) of the elastic inference accelerator. </p>
  final String? elasticInferenceAcceleratorArn;
  /// <p> The ID of the association. </p>
  final String? elasticInferenceAcceleratorAssociationId;
  /// <p> The state of the elastic inference accelerator. </p>
  final String? elasticInferenceAcceleratorAssociationState;
  /// <p> The time at which the elastic inference accelerator is associated with an instance. </p>
  final String? elasticInferenceAcceleratorAssociationTime;

  /// Creates a new [ElasticInferenceAcceleratorAssociation].
  /// [elasticInferenceAcceleratorArn] <p> The Amazon Resource Name (ARN) of the elastic inference accelerator. </p>
  /// [elasticInferenceAcceleratorAssociationId] <p> The ID of the association. </p>
  /// [elasticInferenceAcceleratorAssociationState] <p> The state of the elastic inference accelerator. </p>
  /// [elasticInferenceAcceleratorAssociationTime] <p> The time at which the elastic inference accelerator is associated with an instance. </p>
  ElasticInferenceAcceleratorAssociation({
    this.elasticInferenceAcceleratorArn,
    this.elasticInferenceAcceleratorAssociationId,
    this.elasticInferenceAcceleratorAssociationState,
    this.elasticInferenceAcceleratorAssociationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticInferenceAcceleratorArn': ?elasticInferenceAcceleratorArn,
      'elasticInferenceAcceleratorAssociationId': ?elasticInferenceAcceleratorAssociationId,
      'elasticInferenceAcceleratorAssociationState': ?elasticInferenceAcceleratorAssociationState,
      'elasticInferenceAcceleratorAssociationTime': ?elasticInferenceAcceleratorAssociationTime,
    };
  }

  factory ElasticInferenceAcceleratorAssociation.fromMap(Map<String, dynamic> map) {
    return ElasticInferenceAcceleratorAssociation(
      elasticInferenceAcceleratorArn: map['elasticInferenceAcceleratorArn'] == null ? null : map['elasticInferenceAcceleratorArn'] as String,
      elasticInferenceAcceleratorAssociationId: map['elasticInferenceAcceleratorAssociationId'] == null ? null : map['elasticInferenceAcceleratorAssociationId'] as String,
      elasticInferenceAcceleratorAssociationState: map['elasticInferenceAcceleratorAssociationState'] == null ? null : map['elasticInferenceAcceleratorAssociationState'] as String,
      elasticInferenceAcceleratorAssociationTime: map['elasticInferenceAcceleratorAssociationTime'] == null ? null : map['elasticInferenceAcceleratorAssociationTime'] as String,
    );
  }
}

