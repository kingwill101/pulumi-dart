import 'package:pulumi/pulumi.dart';
import 'recorder_status_args.dart';

/// Manages status (recording / stopped) of an AWS Config Configuration Recorder.
///
/// > **Note:** Starting Configuration Recorder requires a Delivery Channel to be present. Use of `depends_on` (as shown below) is recommended to avoid race conditions.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Configuration Recorder Status using the name of the Configuration Recorder. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/recorderStatus:RecorderStatus foo example
/// ```
class RecorderStatus extends CustomResource {
  /// Whether the configuration recorder should be enabled or disabled.
  late final Output<bool> isEnabled;

  /// The name of the recorder
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  RecorderStatus(
    String name, {
    RecorderStatusArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cfg/recorderStatus:RecorderStatus',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.isEnabled = registerOutput<bool>('isEnabled');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
