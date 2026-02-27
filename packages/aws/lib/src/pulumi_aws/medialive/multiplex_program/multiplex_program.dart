import 'package:pulumi/pulumi.dart' as pulumi;
import '../multiplex_program_multiplex_program_settings/multiplex_program_multiplex_program_settings.dart';
import '../multiplex_program_timeouts/multiplex_program_timeouts.dart';
import 'multiplex_program_args.dart';

/// Resource for managing an AWS MediaLive MultiplexProgram.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MediaLive MultiplexProgram using the `id`, or a combination of "`program_name`/`multiplex_id`". For example:
///
/// ```sh
/// $ pulumi import aws:medialive/multiplexProgram:MultiplexProgram example example_program/1234567
/// ```
class MultiplexProgram extends pulumi.CustomResource {
  /// Multiplex ID.
  late final pulumi.Output<String> multiplexId;

  /// MultiplexProgram settings. See Multiplex Program Settings for more details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<MultiplexProgramMultiplexProgramSettings?>
      multiplexProgramSettings;

  /// Unique program name.
  late final pulumi.Output<String> programName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<MultiplexProgramTimeouts?> timeouts;

  MultiplexProgram(
    String name, {
    MultiplexProgramArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:medialive/multiplexProgram:MultiplexProgram',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.multiplexId = registerOutput<String>('multiplexId');
    this.multiplexProgramSettings =
        registerOutput<MultiplexProgramMultiplexProgramSettings?>(
            'multiplexProgramSettings');
    this.programName = registerOutput<String>('programName');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<MultiplexProgramTimeouts?>('timeouts');
  }
}
