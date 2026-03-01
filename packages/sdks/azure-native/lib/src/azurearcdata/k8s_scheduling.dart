// ignore_for_file: unused_element, unnecessary_cast

import 'k8s_scheduling_options.dart';

/// The kubernetes scheduling information.
class K8sScheduling {
  /// The kubernetes scheduling options. It describes restrictions used to help Kubernetes select appropriate nodes to host the database service
  final K8sSchedulingOptions? default_;

  /// Creates a new [K8sScheduling].
  /// [default_] The kubernetes scheduling options. It describes restrictions used to help Kubernetes select appropriate nodes to host the database service
  K8sScheduling({
    this.default_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_ == null ? null : default_!.toMap(),
    };
  }

  factory K8sScheduling.fromMap(Map<String, dynamic> map) {
    return K8sScheduling(
      default_: map['default'] == null ? null : K8sSchedulingOptions.fromMap((map['default'] as Map).cast<String, dynamic>()),
    );
  }
}

