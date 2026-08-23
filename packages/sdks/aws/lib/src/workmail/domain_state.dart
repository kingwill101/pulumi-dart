// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_record.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// DKIM verification status. Values: `PENDING`, `VERIFIED`, `FAILED`.
  final pulumi.Input<String>? dkimVerificationStatus;
  /// Mail domain name to register. Changing this forces a new resource.
  final pulumi.Input<String>? domainName;
  /// Whether this domain is the default mail domain for the organization.
  final pulumi.Input<bool>? isDefault;
  /// Whether this is the auto-provisioned test domain.
  final pulumi.Input<bool>? isTestDomain;
  /// Identifier of the WorkMail organization. Changing this forces a new resource.
  final pulumi.Input<String>? organizationId;
  /// Domain ownership verification status. Values: `PENDING`, `VERIFIED`, `FAILED`.
  final pulumi.Input<String>? ownershipVerificationStatus;
  /// List of DNS records required for domain verification. See `records` Block below.
  final pulumi.Input<List<DomainRecord>>? records;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DomainState].
  /// [dkimVerificationStatus] DKIM verification status. Values: `PENDING`, `VERIFIED`, `FAILED`.
  /// [domainName] Mail domain name to register. Changing this forces a new resource.
  /// [isDefault] Whether this domain is the default mail domain for the organization.
  /// [isTestDomain] Whether this is the auto-provisioned test domain.
  /// [organizationId] Identifier of the WorkMail organization. Changing this forces a new resource.
  /// [ownershipVerificationStatus] Domain ownership verification status. Values: `PENDING`, `VERIFIED`, `FAILED`.
  /// [records] List of DNS records required for domain verification. See `records` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DomainState({
    this.dkimVerificationStatus,
    this.domainName,
    this.isDefault,
    this.isTestDomain,
    this.organizationId,
    this.ownershipVerificationStatus,
    this.records,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dkimVerificationStatus': ?dkimVerificationStatus,
      'domainName': ?domainName,
      'isDefault': ?isDefault,
      'isTestDomain': ?isTestDomain,
      'organizationId': ?organizationId,
      'ownershipVerificationStatus': ?ownershipVerificationStatus,
      'records': ?pulumi.Input.mapOptionalInputValue<List<DomainRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<DomainRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      dkimVerificationStatus: (() { final guardedValue = map['dkimVerificationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isTestDomain: (() { final guardedValue = map['isTestDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownershipVerificationStatus: (() { final guardedValue = map['ownershipVerificationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      records: (() { final guardedValue = map['records']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainRecord>(guardedValue, (value) => DomainRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
