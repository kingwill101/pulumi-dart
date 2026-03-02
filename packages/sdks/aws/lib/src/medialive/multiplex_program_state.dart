// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multiplex_program_multiplex_program_settings.dart';
import 'multiplex_program_timeouts.dart';

/// Input properties used for looking up and filtering MultiplexProgram resources.
class MultiplexProgramState {
  /// Multiplex ID.
  final pulumi.Input<String>? multiplexId;
  /// MultiplexProgram settings. See Multiplex Program Settings for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<MultiplexProgramMultiplexProgramSettings>? multiplexProgramSettings;
  /// Unique program name.
  final pulumi.Input<String>? programName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<MultiplexProgramTimeouts>? timeouts;

  /// Creates a new [MultiplexProgramState].
  /// [multiplexId] Multiplex ID.
  /// [multiplexProgramSettings] MultiplexProgram settings. See Multiplex Program Settings for more details.
  /// [programName] Unique program name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  MultiplexProgramState({
    this.multiplexId,
    this.multiplexProgramSettings,
    this.programName,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multiplexId': ?multiplexId,
      'multiplexProgramSettings': ?pulumi.Input.mapOptionalInputValue<MultiplexProgramMultiplexProgramSettings, Map<String, dynamic>>(multiplexProgramSettings, (value) => value.toMap()),
      'programName': ?programName,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MultiplexProgramTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory MultiplexProgramState.fromMap(Map<String, dynamic> map) {
    return MultiplexProgramState(
      multiplexId: map['multiplexId'] == null ? null : ((map['multiplexId'] as String).input()).input(),
      multiplexProgramSettings: map['multiplexProgramSettings'] == null ? null : ((MultiplexProgramMultiplexProgramSettings.fromMap((map['multiplexProgramSettings']! as Map).cast<String, dynamic>())).input()).input(),
      programName: map['programName'] == null ? null : ((map['programName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((MultiplexProgramTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

