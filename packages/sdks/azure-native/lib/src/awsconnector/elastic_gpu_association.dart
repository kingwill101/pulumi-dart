// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ElasticGpuAssociation
class ElasticGpuAssociation {
  /// &lt;p&gt;The ID of the association.&lt;/p&gt;
  final pulumi.Input<String>? elasticGpuAssociationId;
  /// &lt;p&gt;The state of the association between the instance and the Elastic Graphics accelerator.&lt;/p&gt;
  final pulumi.Input<String>? elasticGpuAssociationState;
  /// &lt;p&gt;The time the Elastic Graphics accelerator was associated with the instance.&lt;/p&gt;
  final pulumi.Input<String>? elasticGpuAssociationTime;
  /// &lt;p&gt;The ID of the Elastic Graphics accelerator.&lt;/p&gt;
  final pulumi.Input<String>? elasticGpuId;

  /// Creates a new [ElasticGpuAssociation].
  /// [elasticGpuAssociationId] &lt;p&gt;The ID of the association.&lt;/p&gt;
  /// [elasticGpuAssociationState] &lt;p&gt;The state of the association between the instance and the Elastic Graphics accelerator.&lt;/p&gt;
  /// [elasticGpuAssociationTime] &lt;p&gt;The time the Elastic Graphics accelerator was associated with the instance.&lt;/p&gt;
  /// [elasticGpuId] &lt;p&gt;The ID of the Elastic Graphics accelerator.&lt;/p&gt;
  const ElasticGpuAssociation({
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
      elasticGpuAssociationId: (() { final guardedValue = map['elasticGpuAssociationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticGpuAssociationState: (() { final guardedValue = map['elasticGpuAssociationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticGpuAssociationTime: (() { final guardedValue = map['elasticGpuAssociationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticGpuId: (() { final guardedValue = map['elasticGpuId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

