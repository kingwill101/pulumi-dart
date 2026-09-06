// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource request payload of Build Resource.
class BuildResourceRequestsResponse {
  /// Optional Cpu allocated to the build resource. 1 core can be represented by 1 or 1000m.
  /// The default value is 1, this should not exceed build service agent pool cpu size.
  final pulumi.Input<String?>? cpu;
  /// Optional Memory allocated to the build resource. 1 GB can be represented by 1Gi or 1024Mi.
  /// The default value is 2Gi, this should not exceed build service agent pool memory size.
  final pulumi.Input<String?>? memory;

  /// Creates a new [BuildResourceRequestsResponse].
  /// [cpu] Optional Cpu allocated to the build resource. 1 core can be represented by 1 or 1000m.
  /// [memory] Optional Memory allocated to the build resource. 1 GB can be represented by 1Gi or 1024Mi.
  BuildResourceRequestsResponse({
    pulumi.Input<String?>? cpu,
    pulumi.Input<String?>? memory,
  }) : cpu = cpu ?? pulumi.Input.fromValue('1'), memory = memory ?? pulumi.Input.fromValue('2Gi');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory BuildResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return BuildResourceRequestsResponse(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
