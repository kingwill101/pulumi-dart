// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_input_source_resource_configuration.dart';

/// Input properties used for looking up and filtering V2InputSource resources.
class V2InputSourceState {
  /// Unique identifier of the input source.
  final pulumi.Input<String>? inputSourceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource configuration for an input source. See `resourceConfiguration` Block below.
  final pulumi.Input<V2InputSourceResourceConfiguration>? resourceConfiguration;
  /// ARN of the service this input source belongs to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? serviceArn;

  /// Creates a new [V2InputSourceState].
  /// [inputSourceId] Unique identifier of the input source.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceConfiguration] Resource configuration for an input source. See `resourceConfiguration` Block below.
  /// [serviceArn] ARN of the service this input source belongs to.
  const V2InputSourceState({
    this.inputSourceId,
    this.region,
    this.resourceConfiguration,
    this.serviceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputSourceId': ?inputSourceId,
      'region': ?region,
      'resourceConfiguration': ?pulumi.Input.mapOptionalInputValue<V2InputSourceResourceConfiguration, Map<String, dynamic>>(resourceConfiguration, (value) => value.toMap()),
      'serviceArn': ?serviceArn,
    };
  }

  factory V2InputSourceState.fromMap(Map<String, dynamic> map) {
    return V2InputSourceState(
      inputSourceId: (() { final guardedValue = map['inputSourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceConfiguration: (() { final guardedValue = map['resourceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2InputSourceResourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceArn: (() { final guardedValue = map['serviceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
