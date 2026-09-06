// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource quantity for required CPU and Memory of Application Live View component
class ApplicationLiveViewResourceRequestsResponse {
  /// Cpu quantity allocated to each Application Live View component instance. 1 core can be represented by 1 or 1000m.
  final pulumi.Input<String> cpu;
  /// Desired instance count of Application Live View component instance.
  final pulumi.Input<int> instanceCount;
  /// Memory quantity allocated to each Application Live View component instance. 1 GB can be represented by 1Gi or 1024Mi.
  final pulumi.Input<String> memory;

  /// Creates a new [ApplicationLiveViewResourceRequestsResponse].
  /// [cpu] Cpu quantity allocated to each Application Live View component instance. 1 core can be represented by 1 or 1000m.
  /// [instanceCount] Desired instance count of Application Live View component instance.
  /// [memory] Memory quantity allocated to each Application Live View component instance. 1 GB can be represented by 1Gi or 1024Mi.
  const ApplicationLiveViewResourceRequestsResponse({
    required this.cpu,
    required this.instanceCount,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'instanceCount': instanceCount,
      'memory': memory,
    };
  }

  factory ApplicationLiveViewResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationLiveViewResourceRequestsResponse(
      cpu: pulumi.Input.fromValue(map['cpu'] as String),
      instanceCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['instanceCount'])),
      memory: pulumi.Input.fromValue(map['memory'] as String),
    );
  }
}
