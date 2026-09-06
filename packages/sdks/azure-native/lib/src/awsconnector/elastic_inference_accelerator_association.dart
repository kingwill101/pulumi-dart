// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ElasticInferenceAcceleratorAssociation
class ElasticInferenceAcceleratorAssociation {
  /// &lt;p&gt; The Amazon Resource Name (ARN) of the elastic inference accelerator. &lt;/p&gt;
  final pulumi.Input<String?>? elasticInferenceAcceleratorArn;
  /// &lt;p&gt; The ID of the association. &lt;/p&gt;
  final pulumi.Input<String?>? elasticInferenceAcceleratorAssociationId;
  /// &lt;p&gt; The state of the elastic inference accelerator. &lt;/p&gt;
  final pulumi.Input<String?>? elasticInferenceAcceleratorAssociationState;
  /// &lt;p&gt; The time at which the elastic inference accelerator is associated with an instance. &lt;/p&gt;
  final pulumi.Input<String?>? elasticInferenceAcceleratorAssociationTime;

  /// Creates a new [ElasticInferenceAcceleratorAssociation].
  /// [elasticInferenceAcceleratorArn] &lt;p&gt; The Amazon Resource Name (ARN) of the elastic inference accelerator. &lt;/p&gt;
  /// [elasticInferenceAcceleratorAssociationId] &lt;p&gt; The ID of the association. &lt;/p&gt;
  /// [elasticInferenceAcceleratorAssociationState] &lt;p&gt; The state of the elastic inference accelerator. &lt;/p&gt;
  /// [elasticInferenceAcceleratorAssociationTime] &lt;p&gt; The time at which the elastic inference accelerator is associated with an instance. &lt;/p&gt;
  const ElasticInferenceAcceleratorAssociation({
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
      elasticInferenceAcceleratorArn: (() { final guardedValue = map['elasticInferenceAcceleratorArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticInferenceAcceleratorAssociationId: (() { final guardedValue = map['elasticInferenceAcceleratorAssociationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticInferenceAcceleratorAssociationState: (() { final guardedValue = map['elasticInferenceAcceleratorAssociationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticInferenceAcceleratorAssociationTime: (() { final guardedValue = map['elasticInferenceAcceleratorAssociationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
