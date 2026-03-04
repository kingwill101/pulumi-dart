// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceCpuOptions {
  /// The maximum number of partitions in the storage set.
  final pulumi.Input<int>? coreCount;

  /// The number of threads per CPU core.
  final pulumi.Input<int>? threadsPerCore;

  /// The CPU topology type of the instance. Valid values: `ContinuousCoreToHTMapping`, `DiscreteCoreToHTMapping`.
  final pulumi.Input<String>? topologyType;

  /// Creates a new [InstanceCpuOptions].
  /// [coreCount] The maximum number of partitions in the storage set.
  /// [threadsPerCore] The number of threads per CPU core.
  /// [topologyType] The CPU topology type of the instance. Valid values: `ContinuousCoreToHTMapping`, `DiscreteCoreToHTMapping`.
  InstanceCpuOptions({this.coreCount, this.threadsPerCore, this.topologyType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': ?coreCount,
      'threadsPerCore': ?threadsPerCore,
      'topologyType': ?topologyType,
    };
  }

  factory InstanceCpuOptions.fromMap(Map<String, dynamic> map) {
    return InstanceCpuOptions(
      coreCount: (() {
        final guardedValue = map['coreCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      threadsPerCore: (() {
        final guardedValue = map['threadsPerCore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      topologyType: (() {
        final guardedValue = map['topologyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
