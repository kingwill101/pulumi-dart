import 'package:pulumi/pulumi.dart';
import 'conditional_forwarder_args.dart';

/// Provides a conditional forwarder for managed Microsoft AD in AWS Directory Service.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import conditional forwarders using the directory id and remote_domain_name. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/conditionalForwarder:ConditionalForwarder example d-1234567890:example.com
/// ```
class ConditionalForwarder extends CustomResource {
  /// ID of directory.
  late final Output<String> directoryId;

  /// A list of forwarder IP addresses.
  late final Output<List<String>> dnsIps;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The fully qualified domain name of the remote domain for which forwarders will be used.
  late final Output<String> remoteDomainName;

  ConditionalForwarder(
    String name, {
    ConditionalForwarderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/conditionalForwarder:ConditionalForwarder',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.directoryId = registerOutput<String>('directoryId');
    this.dnsIps = registerOutput<List<String>>('dnsIps');
    this.region = registerOutput<String>('region');
    this.remoteDomainName = registerOutput<String>('remoteDomainName');
  }
}
