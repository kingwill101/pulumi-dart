// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ElasticInferenceAcceleratorAssociation
class ElasticInferenceAcceleratorAssociationResponse {
  /// <p> The Amazon Resource Name (ARN) of the elastic inference accelerator. </p>
  final pulumi.Input<String>? elasticInferenceAcceleratorArn;
  /// <p> The ID of the association. </p>
  final pulumi.Input<String>? elasticInferenceAcceleratorAssociationId;
  /// <p> The state of the elastic inference accelerator. </p>
  final pulumi.Input<String>? elasticInferenceAcceleratorAssociationState;
  /// <p> The time at which the elastic inference accelerator is associated with an instance. </p>
  final pulumi.Input<String>? elasticInferenceAcceleratorAssociationTime;

  /// Creates a new [ElasticInferenceAcceleratorAssociationResponse].
  /// [elasticInferenceAcceleratorArn] <p> The Amazon Resource Name (ARN) of the elastic inference accelerator. </p>
  /// [elasticInferenceAcceleratorAssociationId] <p> The ID of the association. </p>
  /// [elasticInferenceAcceleratorAssociationState] <p> The state of the elastic inference accelerator. </p>
  /// [elasticInferenceAcceleratorAssociationTime] <p> The time at which the elastic inference accelerator is associated with an instance. </p>
  ElasticInferenceAcceleratorAssociationResponse({
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

  factory ElasticInferenceAcceleratorAssociationResponse.fromMap(Map<String, dynamic> map) {
    return ElasticInferenceAcceleratorAssociationResponse(
      elasticInferenceAcceleratorArn: map['elasticInferenceAcceleratorArn'] == null ? null : (map['elasticInferenceAcceleratorArn'] as String).input(),
      elasticInferenceAcceleratorAssociationId: map['elasticInferenceAcceleratorAssociationId'] == null ? null : (map['elasticInferenceAcceleratorAssociationId'] as String).input(),
      elasticInferenceAcceleratorAssociationState: map['elasticInferenceAcceleratorAssociationState'] == null ? null : (map['elasticInferenceAcceleratorAssociationState'] as String).input(),
      elasticInferenceAcceleratorAssociationTime: map['elasticInferenceAcceleratorAssociationTime'] == null ? null : (map['elasticInferenceAcceleratorAssociationTime'] as String).input(),
    );
  }
}

