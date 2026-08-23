// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Job resource request payload
class JobResourceRequestsResponse {
  /// CPU allocated to each job execution instance.
  final pulumi.Input<String>? cpu;
  /// Memory allocated to each job execution instance.
  final pulumi.Input<String>? memory;

  /// Creates a new [JobResourceRequestsResponse].
  /// [cpu] CPU allocated to each job execution instance.
  /// [memory] Memory allocated to each job execution instance.
  const JobResourceRequestsResponse({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory JobResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return JobResourceRequestsResponse(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
