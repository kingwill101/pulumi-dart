import 'package:pulumi/pulumi.dart';
import '../eip_domain_name_timeouts/eip_domain_name_timeouts.dart';
import 'eip_domain_name_args.dart';

/// Assigns a static reverse DNS record to an Elastic IP addresses. See [Using reverse DNS for email applications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).
class EipDomainName extends CustomResource {
  /// The allocation ID.
  late final Output<String> allocationId;

  /// The domain name to modify for the IP address.
  late final Output<String> domainName;

  /// The DNS pointer (PTR) record for the IP address.
  late final Output<String> ptrRecord;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<EipDomainNameTimeouts?> timeouts;

  EipDomainName(
    String name, {
    EipDomainNameArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/eipDomainName:EipDomainName',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocationId = registerOutput<String>('allocationId');
    this.domainName = registerOutput<String>('domainName');
    this.ptrRecord = registerOutput<String>('ptrRecord');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<EipDomainNameTimeouts?>('timeouts');
  }
}
