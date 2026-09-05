// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamWarmThroughput {
  /// Current warm throughput value on the stream.
  final pulumi.Input<int> currentMibPs;
  /// Target warm throughput value on the stream.
  final pulumi.Input<int> targetMibPs;

  /// Creates a new [GetStreamWarmThroughput].
  /// [currentMibPs] Current warm throughput value on the stream.
  /// [targetMibPs] Target warm throughput value on the stream.
  const GetStreamWarmThroughput({
    required this.currentMibPs,
    required this.targetMibPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentMibPs': currentMibPs,
      'targetMibPs': targetMibPs,
    };
  }

  factory GetStreamWarmThroughput.fromMap(Map<String, dynamic> map) {
    return GetStreamWarmThroughput(
      currentMibPs: pulumi.Input.fromValue((map['currentMibPs'] as num).toInt()),
      targetMibPs: pulumi.Input.fromValue((map['targetMibPs'] as num).toInt()),
    );
  }
}
