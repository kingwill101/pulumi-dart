// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multiplex_multiplex_settings.dart';

/// Input properties used for looking up and filtering Multiplex resources.
class MultiplexState {
  /// ARN of the Multiplex.
  final pulumi.Input<String>? arn;
  /// A list of availability zones. You must specify exactly two.
  final pulumi.Input<List<String>>? availabilityZones;
  /// Multiplex settings. See Multiplex Settings for more details.
  final pulumi.Input<MultiplexMultiplexSettings>? multiplexSettings;
  /// name of Multiplex.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether to start the Multiplex. Defaults to `false`.
  final pulumi.Input<bool>? startMultiplex;
  /// A map of tags to assign to the Multiplex. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [MultiplexState].
  /// [arn] ARN of the Multiplex.
  /// [availabilityZones] A list of availability zones. You must specify exactly two.
  /// [multiplexSettings] Multiplex settings. See Multiplex Settings for more details.
  /// [name] name of Multiplex.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [startMultiplex] Whether to start the Multiplex. Defaults to `false`.
  /// [tags] A map of tags to assign to the Multiplex. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  const MultiplexState({
    this.arn,
    this.availabilityZones,
    this.multiplexSettings,
    this.name,
    this.region,
    this.startMultiplex,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZones': ?availabilityZones,
      'multiplexSettings': ?pulumi.Input.mapOptionalInputValue<MultiplexMultiplexSettings, Map<String, dynamic>>(multiplexSettings, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'startMultiplex': ?startMultiplex,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory MultiplexState.fromMap(Map<String, dynamic> map) {
    return MultiplexState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      multiplexSettings: (() { final guardedValue = map['multiplexSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiplexMultiplexSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startMultiplex: (() { final guardedValue = map['startMultiplex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

