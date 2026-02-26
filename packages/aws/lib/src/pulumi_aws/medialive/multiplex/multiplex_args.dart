// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multiplex_multiplex_settings/multiplex_multiplex_settings.dart';

/// The set of arguments for Multiplex.
class MultiplexArgs {
  /// A list of availability zones. You must specify exactly two.
  final Input<List<String>> availabilityZones;

  /// Multiplex settings. See Multiplex Settings for more details.
  final Input<MultiplexMultiplexSettings>? multiplexSettings;

  /// name of Multiplex.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether to start the Multiplex. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? startMultiplex;

  /// A map of tags to assign to the Multiplex. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  MultiplexArgs({
    required this.availabilityZones,
    this.multiplexSettings,
    this.name,
    this.region,
    this.startMultiplex,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZones'] = availabilityZones;
    final multiplexSettingsValue = multiplexSettings;
    if (multiplexSettingsValue != null) {
      map['multiplexSettings'] = Input.mapOptionalInputValue<
              MultiplexMultiplexSettings, Map<String, dynamic>>(
          multiplexSettingsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final startMultiplexValue = startMultiplex;
    if (startMultiplexValue != null) {
      map['startMultiplex'] = startMultiplexValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory MultiplexArgs.fromMap(Map<String, dynamic> map) {
    return MultiplexArgs(
      availabilityZones: Input.asInput<List<String>>(map['availabilityZones']),
      multiplexSettings: Input.asOptionalInput<MultiplexMultiplexSettings>(
          map['multiplexSettings']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      startMultiplex: Input.asOptionalInput<bool>(map['startMultiplex']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
