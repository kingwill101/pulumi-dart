// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FargateProfileSelector {
  /// Key-value map of Kubernetes labels for selection.
  final pulumi.Input<Map<String, String>>? labels;
  /// Kubernetes namespace for selection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> namespace;

  /// Creates a new [FargateProfileSelector].
  /// [labels] Key-value map of Kubernetes labels for selection.
  /// [namespace] Kubernetes namespace for selection.
  FargateProfileSelector({
    this.labels,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'namespace': namespace,
    };
  }

  factory FargateProfileSelector.fromMap(Map<String, dynamic> map) {
    return FargateProfileSelector(
      labels: map['labels'] == null ? null : (((map['labels'] as Map).cast<String, String>()).input()).input(),
      namespace: (map['namespace'] as String).input(),
    );
  }
}

