// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_input_source_resource_configuration.dart';

/// {@template pulumi_resiliencehub_v2_input_source_v2_input_source_args_doc}
/// The set of arguments for V2InputSource.
/// {@endtemplate}
/// {@macro pulumi_resiliencehub_v2_input_source_v2_input_source_args_doc}
class V2InputSourceArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource configuration for an input source. See `resourceConfiguration` Block below.
  final pulumi.Input<V2InputSourceResourceConfiguration> resourceConfiguration;
  /// ARN of the service this input source belongs to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> serviceArn;

  /// Creates a new [V2InputSourceArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceConfiguration] Resource configuration for an input source. See `resourceConfiguration` Block below.
  /// [serviceArn] ARN of the service this input source belongs to.
  const V2InputSourceArgs({
    this.region,
    required this.resourceConfiguration,
    required this.serviceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceConfiguration': pulumi.Input.mapInputValue<V2InputSourceResourceConfiguration, Map<String, dynamic>>(resourceConfiguration, (value) => value.toMap()),
      'serviceArn': serviceArn,
    };
  }

  factory V2InputSourceArgs.fromMap(Map<String, dynamic> map) {
    return V2InputSourceArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceConfiguration: pulumi.Input.fromValue(V2InputSourceResourceConfiguration.fromMap((map['resourceConfiguration']! as Map).cast<String, dynamic>())),
      serviceArn: pulumi.Input.fromValue(map['serviceArn'] as String),
    );
  }
}
