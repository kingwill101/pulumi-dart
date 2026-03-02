// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The desired properties of the frontend instances of the Broker
class Frontend {
  /// The desired number of frontend instances (pods).
  final pulumi.Input<int> replicas;
  /// Number of logical frontend workers per instance (pod).
  final pulumi.Input<int>? workers;

  /// Creates a new [Frontend].
  /// [replicas] The desired number of frontend instances (pods).
  /// [workers] Number of logical frontend workers per instance (pod).
  Frontend({
    required this.replicas,
    this.workers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': replicas,
      'workers': ?workers,
    };
  }

  factory Frontend.fromMap(Map<String, dynamic> map) {
    return Frontend(
      replicas: (map['replicas'] as int).input(),
      workers: map['workers'] == null ? null : (map['workers']! as int).input(),
    );
  }
}

