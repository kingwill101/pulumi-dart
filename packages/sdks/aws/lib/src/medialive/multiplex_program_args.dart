// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multiplex_program_multiplex_program_settings.dart';
import 'multiplex_program_timeouts.dart';

/// {@template pulumi_medialive_multiplex_program_multiplex_program_args_doc}
/// The set of arguments for MultiplexProgram.
/// {@endtemplate}
/// {@macro pulumi_medialive_multiplex_program_multiplex_program_args_doc}
class MultiplexProgramArgs {
  /// Multiplex ID.
  final pulumi.Input<String> multiplexId;
  /// MultiplexProgram settings. See Multiplex Program Settings for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<MultiplexProgramMultiplexProgramSettings>? multiplexProgramSettings;
  /// Unique program name.
  final pulumi.Input<String> programName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<MultiplexProgramTimeouts>? timeouts;

  /// Creates a new [MultiplexProgramArgs].
  /// [multiplexId] Multiplex ID.
  /// [multiplexProgramSettings] MultiplexProgram settings. See Multiplex Program Settings for more details.
  /// [programName] Unique program name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  MultiplexProgramArgs({
    required pulumi.Output<String> multiplexId,
    pulumi.Output<MultiplexProgramMultiplexProgramSettings>? multiplexProgramSettings,
    required pulumi.Output<String> programName,
    pulumi.Output<String>? region,
    pulumi.Output<MultiplexProgramTimeouts>? timeouts,
  }) :
      multiplexId = pulumi.Input.asInput<String>(multiplexId),
      multiplexProgramSettings = pulumi.Input.asOptionalInput<MultiplexProgramMultiplexProgramSettings>(multiplexProgramSettings),
      programName = pulumi.Input.asInput<String>(programName),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<MultiplexProgramTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multiplexId': multiplexId,
      'multiplexProgramSettings': ?pulumi.Input.mapOptionalInputValue<MultiplexProgramMultiplexProgramSettings, Map<String, dynamic>>(multiplexProgramSettings, (value) => value.toMap()),
      'programName': programName,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MultiplexProgramTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory MultiplexProgramArgs.fromMap(Map<String, dynamic> map) {
    return MultiplexProgramArgs(
      multiplexId: pulumi.Output.create<String>(map['multiplexId'] as String),
      multiplexProgramSettings: map['multiplexProgramSettings'] == null ? null : pulumi.Output.create<MultiplexProgramMultiplexProgramSettings>(MultiplexProgramMultiplexProgramSettings.fromMap((map['multiplexProgramSettings'] as Map).cast<String, dynamic>())),
      programName: pulumi.Output.create<String>(map['programName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<MultiplexProgramTimeouts>(MultiplexProgramTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

