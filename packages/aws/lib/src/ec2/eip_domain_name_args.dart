// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eip_domain_name_timeouts.dart';

/// {@template pulumi_ec2_eip_domain_name_eip_domain_name_args_doc}
/// The set of arguments for EipDomainName.
/// {@endtemplate}
/// {@macro pulumi_ec2_eip_domain_name_eip_domain_name_args_doc}
class EipDomainNameArgs {
  /// The allocation ID.
  final pulumi.Input<String> allocationId;
  /// The domain name to modify for the IP address.
  final pulumi.Input<String> domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<EipDomainNameTimeouts>? timeouts;

  /// Creates a new [EipDomainNameArgs].
  /// [allocationId] The allocation ID.
  /// [domainName] The domain name to modify for the IP address.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  EipDomainNameArgs({
    required String allocationId,
    required String domainName,
    String? region,
    EipDomainNameTimeouts? timeouts,
  }) :
      allocationId = pulumi.Input.asInput<String>(allocationId),
      domainName = pulumi.Input.asInput<String>(domainName),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<EipDomainNameTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': allocationId,
      'domainName': domainName,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<EipDomainNameTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory EipDomainNameArgs.fromMap(Map<String, dynamic> map) {
    return EipDomainNameArgs(
      allocationId: map['allocationId'] as String,
      domainName: map['domainName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      timeouts: map['timeouts'] == null ? null : EipDomainNameTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

