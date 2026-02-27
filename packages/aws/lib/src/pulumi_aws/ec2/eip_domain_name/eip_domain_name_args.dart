// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../eip_domain_name_timeouts/eip_domain_name_timeouts.dart';

/// The set of arguments for EipDomainName.
class EipDomainNameArgs {
  /// The allocation ID.
  final pulumi.Input<String> allocationId;

  /// The domain name to modify for the IP address.
  final pulumi.Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<EipDomainNameTimeouts>? timeouts;

  EipDomainNameArgs({
    required this.allocationId,
    required this.domainName,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocationId'] = allocationId;
    map['domainName'] = domainName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          EipDomainNameTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EipDomainNameArgs.fromMap(Map<String, dynamic> map) {
    return EipDomainNameArgs(
      allocationId: pulumi.Input.asInput<String>(map['allocationId']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts:
          pulumi.Input.asOptionalInput<EipDomainNameTimeouts>(map['timeouts']),
    );
  }
}
