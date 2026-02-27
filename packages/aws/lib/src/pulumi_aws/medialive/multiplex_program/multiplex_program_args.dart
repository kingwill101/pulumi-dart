// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../multiplex_program_multiplex_program_settings/multiplex_program_multiplex_program_settings.dart';
import '../multiplex_program_timeouts/multiplex_program_timeouts.dart';

/// The set of arguments for MultiplexProgram.
class MultiplexProgramArgs {
  /// Multiplex ID.
  final pulumi.Input<String> multiplexId;

  /// MultiplexProgram settings. See Multiplex Program Settings for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<MultiplexProgramMultiplexProgramSettings>?
      multiplexProgramSettings;

  /// Unique program name.
  final pulumi.Input<String> programName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<MultiplexProgramTimeouts>? timeouts;

  MultiplexProgramArgs({
    required this.multiplexId,
    this.multiplexProgramSettings,
    required this.programName,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['multiplexId'] = multiplexId;
    final multiplexProgramSettingsValue = multiplexProgramSettings;
    if (multiplexProgramSettingsValue != null) {
      map['multiplexProgramSettings'] = pulumi.Input.mapOptionalInputValue<
              MultiplexProgramMultiplexProgramSettings, Map<String, dynamic>>(
          multiplexProgramSettingsValue, (value) => value.toMap());
    }
    map['programName'] = programName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          MultiplexProgramTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory MultiplexProgramArgs.fromMap(Map<String, dynamic> map) {
    return MultiplexProgramArgs(
      multiplexId: pulumi.Input.asInput<String>(map['multiplexId']),
      multiplexProgramSettings: pulumi.Input.asOptionalInput<
              MultiplexProgramMultiplexProgramSettings>(
          map['multiplexProgramSettings']),
      programName: pulumi.Input.asInput<String>(map['programName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts: pulumi.Input.asOptionalInput<MultiplexProgramTimeouts>(
          map['timeouts']),
    );
  }
}
