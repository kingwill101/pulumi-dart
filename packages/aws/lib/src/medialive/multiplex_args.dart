// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multiplex_multiplex_settings.dart';

/// {@template pulumi_medialive_multiplex_multiplex_args_doc}
/// The set of arguments for Multiplex.
/// {@endtemplate}
/// {@macro pulumi_medialive_multiplex_multiplex_args_doc}
class MultiplexArgs {
  /// A list of availability zones. You must specify exactly two.
  final pulumi.Input<List<String>> availabilityZones;

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

  /// Creates a new [MultiplexArgs].
  /// [availabilityZones] A list of availability zones. You must specify exactly two.
  /// [multiplexSettings] Multiplex settings. See Multiplex Settings for more details.
  /// [name] name of Multiplex.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [startMultiplex] Whether to start the Multiplex. Defaults to `false`.
  /// [tags] A map of tags to assign to the Multiplex. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  MultiplexArgs({
    required List<String> availabilityZones,
    MultiplexMultiplexSettings? multiplexSettings,
    String? name,
    String? region,
    bool? startMultiplex,
    Map<String, String>? tags,
  }) : availabilityZones = pulumi.Input.asInput<List<String>>(
         availabilityZones,
       ),
       multiplexSettings =
           pulumi.Input.asOptionalInput<MultiplexMultiplexSettings>(
             multiplexSettings,
           ),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       startMultiplex = pulumi.Input.asOptionalInput<bool>(startMultiplex),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': availabilityZones,
      'multiplexSettings':
          ?pulumi.Input.mapOptionalInputValue<
            MultiplexMultiplexSettings,
            Map<String, dynamic>
          >(multiplexSettings, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'startMultiplex': ?startMultiplex,
      'tags': ?tags,
    };
  }

  factory MultiplexArgs.fromMap(Map<String, dynamic> map) {
    return MultiplexArgs(
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      multiplexSettings: map['multiplexSettings'] == null
          ? null
          : MultiplexMultiplexSettings.fromMap(
              (map['multiplexSettings'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      startMultiplex: map['startMultiplex'] == null
          ? null
          : map['startMultiplex'] as bool,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
