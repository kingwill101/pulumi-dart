// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_range.dart';

/// The properties describe the recommended machine configuration for this Image Definition. These properties are updatable.
class RecommendedMachineConfiguration {
  /// Describes the resource range.
  final pulumi.Input<ResourceRange>? memory;

  /// Describes the resource range.
  final pulumi.Input<ResourceRange>? vCPUs;

  /// Creates a new [RecommendedMachineConfiguration].
  /// [memory] Describes the resource range.
  /// [vCPUs] Describes the resource range.
  RecommendedMachineConfiguration({this.memory, this.vCPUs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memory':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceRange,
            Map<String, dynamic>
          >(memory, (value) => value.toMap()),
      'vCPUs':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceRange,
            Map<String, dynamic>
          >(vCPUs, (value) => value.toMap()),
    };
  }

  factory RecommendedMachineConfiguration.fromMap(Map<String, dynamic> map) {
    return RecommendedMachineConfiguration(
      memory: (() {
        final guardedValue = map['memory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceRange.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      vCPUs: (() {
        final guardedValue = map['vCPUs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceRange.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
