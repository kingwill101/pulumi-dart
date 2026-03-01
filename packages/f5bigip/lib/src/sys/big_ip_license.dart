import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_ip_license_args.dart';

class BigIpLicense extends pulumi.CustomResource {
  /// Tmsh command to execute tmsh commands like install
  late final pulumi.Output<String> command;
  /// A unique Key F5 provides for Licensing BIG-IP
  late final pulumi.Output<String> registrationKey;

  /// Creates a new [BigIpLicense].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BigIpLicense]. {@macro pulumi_sys_big_ip_license_big_ip_license_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BigIpLicense(
    String name, {
    BigIpLicenseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/bigIpLicense:BigIpLicense',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.command = registerOutput<String>('command');
    this.registrationKey = registerOutput<String>('registrationKey');
  }
}
