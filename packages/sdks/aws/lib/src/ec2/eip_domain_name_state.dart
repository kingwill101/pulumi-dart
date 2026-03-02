// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eip_domain_name_timeouts.dart';

/// Input properties used for looking up and filtering EipDomainName resources.
class EipDomainNameState {
  /// The allocation ID.
  final pulumi.Input<String>? allocationId;
  /// The domain name to modify for the IP address.
  final pulumi.Input<String>? domainName;
  /// The DNS pointer (PTR) record for the IP address.
  final pulumi.Input<String>? ptrRecord;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<EipDomainNameTimeouts>? timeouts;

  /// Creates a new [EipDomainNameState].
  /// [allocationId] The allocation ID.
  /// [domainName] The domain name to modify for the IP address.
  /// [ptrRecord] The DNS pointer (PTR) record for the IP address.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  EipDomainNameState({
    this.allocationId,
    this.domainName,
    this.ptrRecord,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': ?allocationId,
      'domainName': ?domainName,
      'ptrRecord': ?ptrRecord,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<EipDomainNameTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory EipDomainNameState.fromMap(Map<String, dynamic> map) {
    return EipDomainNameState(
      allocationId: map['allocationId'] == null ? null : (map['allocationId'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      ptrRecord: map['ptrRecord'] == null ? null : (map['ptrRecord'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (EipDomainNameTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

