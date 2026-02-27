import 'package:pulumi/pulumi.dart' as pulumi;
import 'serial_console_access_args.dart';

/// Provides a resource to manage whether serial console access is enabled for your AWS account in the current AWS region.
///
/// > **NOTE:** Removing this resource disables serial console access.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import serial console access state. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/serialConsoleAccess:SerialConsoleAccess example default
/// ```
class SerialConsoleAccess extends pulumi.CustomResource {
  /// Whether or not serial console access is enabled. Valid values are `true` or `false`. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  SerialConsoleAccess(
    String name, {
    SerialConsoleAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/serialConsoleAccess:SerialConsoleAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool?>('enabled');
    this.region = registerOutput<String>('region');
  }
}
