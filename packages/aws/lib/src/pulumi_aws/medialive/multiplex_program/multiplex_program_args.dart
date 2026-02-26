// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multiplex_program_multiplex_program_settings/multiplex_program_multiplex_program_settings.dart';
import '../multiplex_program_timeouts/multiplex_program_timeouts.dart';

/// The set of arguments for MultiplexProgram.
class MultiplexProgramArgs {
  /// Multiplex ID.
  final Input<String> multiplexId;

  /// MultiplexProgram settings. See Multiplex Program Settings for more details.
  ///
  /// The following arguments are optional:
  final Input<MultiplexProgramMultiplexProgramSettings>?
      multiplexProgramSettings;

  /// Unique program name.
  final Input<String> programName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<MultiplexProgramTimeouts>? timeouts;

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
      map['multiplexProgramSettings'] = Input.mapOptionalInputValue<
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
      map['timeouts'] = Input.mapOptionalInputValue<MultiplexProgramTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory MultiplexProgramArgs.fromMap(Map<String, dynamic> map) {
    return MultiplexProgramArgs(
      multiplexId: Input.asInput<String>(map['multiplexId']),
      multiplexProgramSettings:
          Input.asOptionalInput<MultiplexProgramMultiplexProgramSettings>(
              map['multiplexProgramSettings']),
      programName: Input.asInput<String>(map['programName']),
      region: Input.asOptionalInput<String>(map['region']),
      timeouts:
          Input.asOptionalInput<MultiplexProgramTimeouts>(map['timeouts']),
    );
  }
}
