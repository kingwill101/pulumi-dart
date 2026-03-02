// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_scheduling_options_response.dart';

/// The kubernetes scheduling information.
class K8sSchedulingResponse {
  /// The kubernetes scheduling options. It describes restrictions used to help Kubernetes select appropriate nodes to host the database service
  final pulumi.Input<K8sSchedulingOptionsResponse>? default_;

  /// Creates a new [K8sSchedulingResponse].
  /// [default_] The kubernetes scheduling options. It describes restrictions used to help Kubernetes select appropriate nodes to host the database service
  K8sSchedulingResponse({
    this.default_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?pulumi.Input.mapOptionalInputValue<K8sSchedulingOptionsResponse, Map<String, dynamic>>(default_, (value) => value.toMap()),
    };
  }

  factory K8sSchedulingResponse.fromMap(Map<String, dynamic> map) {
    return K8sSchedulingResponse(
      default_: map['default'] == null ? null : (K8sSchedulingOptionsResponse.fromMap((map['default'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

