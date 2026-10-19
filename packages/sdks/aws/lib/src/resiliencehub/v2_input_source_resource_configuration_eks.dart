// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_input_source_resource_configuration_eks_label_selector.dart';

class V2InputSourceResourceConfigurationEks {
  /// Cluster ARN.
  final pulumi.Input<String> clusterArn;
  /// Kubernetes label selector that narrows discovery to the objects whose labels match. When omitted, all supported objects in the selected namespaces are discovered. See `labelSelector` Block below.
  final pulumi.Input<V2InputSourceResourceConfigurationEksLabelSelector?>? labelSelector;
  /// List of Kubernetes namespaces within the EKS cluster.
  final pulumi.Input<List<String>> namespaces;

  /// Creates a new [V2InputSourceResourceConfigurationEks].
  /// [clusterArn] Cluster ARN.
  /// [labelSelector] Kubernetes label selector that narrows discovery to the objects whose labels match. When omitted, all supported objects in the selected namespaces are discovered. See `labelSelector` Block below.
  /// [namespaces] List of Kubernetes namespaces within the EKS cluster.
  const V2InputSourceResourceConfigurationEks({
    required this.clusterArn,
    this.labelSelector,
    required this.namespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'labelSelector': ?pulumi.Input.mapOptionalInputValue<V2InputSourceResourceConfigurationEksLabelSelector, Map<String, dynamic>>(labelSelector, (value) => value.toMap()),
      'namespaces': namespaces,
    };
  }

  factory V2InputSourceResourceConfigurationEks.fromMap(Map<String, dynamic> map) {
    return V2InputSourceResourceConfigurationEks(
      clusterArn: pulumi.Input.fromValue(map['clusterArn'] as String),
      labelSelector: (() { final guardedValue = map['labelSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2InputSourceResourceConfigurationEksLabelSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      namespaces: pulumi.Input.fromValue((map['namespaces'] as List).cast<String>()),
    );
  }
}
