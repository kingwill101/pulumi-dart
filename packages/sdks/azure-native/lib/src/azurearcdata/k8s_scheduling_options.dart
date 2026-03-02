// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_resource_requirements.dart';

/// The kubernetes scheduling options. It describes restrictions used to help Kubernetes select appropriate nodes to host the database service
class K8sSchedulingOptions {
  /// The kubernetes resource limits and requests used to restrict or reserve resource usage.
  final pulumi.Input<K8sResourceRequirements>? resources;

  /// Creates a new [K8sSchedulingOptions].
  /// [resources] The kubernetes resource limits and requests used to restrict or reserve resource usage.
  K8sSchedulingOptions({
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resources': ?pulumi.Input.mapOptionalInputValue<K8sResourceRequirements, Map<String, dynamic>>(resources, (value) => value.toMap()),
    };
  }

  factory K8sSchedulingOptions.fromMap(Map<String, dynamic> map) {
    return K8sSchedulingOptions(
      resources: map['resources'] == null ? null : (K8sResourceRequirements.fromMap((map['resources']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

