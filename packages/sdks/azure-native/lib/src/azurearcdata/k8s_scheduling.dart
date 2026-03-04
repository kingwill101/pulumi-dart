// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_scheduling_options.dart';

/// The kubernetes scheduling information.
class K8sScheduling {
  /// The kubernetes scheduling options. It describes restrictions used to help Kubernetes select appropriate nodes to host the database service
  final pulumi.Input<K8sSchedulingOptions>? default_;

  /// Creates a new [K8sScheduling].
  /// [default_] The kubernetes scheduling options. It describes restrictions used to help Kubernetes select appropriate nodes to host the database service
  K8sScheduling({this.default_});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default':
          ?pulumi.Input.mapOptionalInputValue<
            K8sSchedulingOptions,
            Map<String, dynamic>
          >(default_, (value) => value.toMap()),
    };
  }

  factory K8sScheduling.fromMap(Map<String, dynamic> map) {
    return K8sScheduling(
      default_: (() {
        final guardedValue = map['default'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          K8sSchedulingOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
