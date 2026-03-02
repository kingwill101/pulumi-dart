// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ElasticGpuAssociation
class ElasticGpuAssociation {
  /// <p>The ID of the association.</p>
  final pulumi.Input<String>? elasticGpuAssociationId;
  /// <p>The state of the association between the instance and the Elastic Graphics accelerator.</p>
  final pulumi.Input<String>? elasticGpuAssociationState;
  /// <p>The time the Elastic Graphics accelerator was associated with the instance.</p>
  final pulumi.Input<String>? elasticGpuAssociationTime;
  /// <p>The ID of the Elastic Graphics accelerator.</p>
  final pulumi.Input<String>? elasticGpuId;

  /// Creates a new [ElasticGpuAssociation].
  /// [elasticGpuAssociationId] <p>The ID of the association.</p>
  /// [elasticGpuAssociationState] <p>The state of the association between the instance and the Elastic Graphics accelerator.</p>
  /// [elasticGpuAssociationTime] <p>The time the Elastic Graphics accelerator was associated with the instance.</p>
  /// [elasticGpuId] <p>The ID of the Elastic Graphics accelerator.</p>
  ElasticGpuAssociation({
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

  factory ElasticGpuAssociation.fromMap(Map<String, dynamic> map) {
    return ElasticGpuAssociation(
      elasticGpuAssociationId: map['elasticGpuAssociationId'] == null ? null : (map['elasticGpuAssociationId']! as String).input(),
      elasticGpuAssociationState: map['elasticGpuAssociationState'] == null ? null : (map['elasticGpuAssociationState']! as String).input(),
      elasticGpuAssociationTime: map['elasticGpuAssociationTime'] == null ? null : (map['elasticGpuAssociationTime']! as String).input(),
      elasticGpuId: map['elasticGpuId'] == null ? null : (map['elasticGpuId']! as String).input(),
    );
  }
}

