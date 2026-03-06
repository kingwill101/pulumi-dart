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
  const EipDomainNameState({
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
      allocationId: (() { final guardedValue = map['allocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ptrRecord: (() { final guardedValue = map['ptrRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EipDomainNameTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

