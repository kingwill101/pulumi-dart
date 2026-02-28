// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_domain_custom_domain_status_issue.dart';
import 'app_hosting_domain_custom_domain_status_required_dns_update.dart';

class AppHostingDomainCustomDomainStatus {
  /// (Output)
  /// Possible values:
  /// CERT_PREPARING
  /// CERT_VALIDATING
  /// CERT_PROPAGATING
  /// CERT_ACTIVE
  /// CERT_EXPIRING_SOON
  /// CERT_EXPIRED
  final String? certState;
  /// (Output)
  /// Possible values:
  /// HOST_UNHOSTED
  /// HOST_UNREACHABLE
  /// HOST_NON_FAH
  /// HOST_CONFLICT
  /// HOST_WRONG_SHARD
  /// HOST_ACTIVE
  final String? hostState;
  /// (Output)
  /// A list of issues with domain configuration. Allows users to self-correct
  /// problems with DNS records.
  /// Structure is documented below.
  final List<AppHostingDomainCustomDomainStatusIssue>? issues;
  /// (Output)
  /// Possible values:
  /// OWNERSHIP_MISSING
  /// OWNERSHIP_UNREACHABLE
  /// OWNERSHIP_MISMATCH
  /// OWNERSHIP_CONFLICT
  /// OWNERSHIP_PENDING
  /// OWNERSHIP_ACTIVE
  final String? ownershipState;
  /// (Output)
  /// Lists the records that must added or removed to a custom domain's DNS
  /// in order to finish setup and start serving content.
  /// Field is present during onboarding. Also present after onboarding if one
  /// or more of the above states is not *_ACTIVE, indicating the domain's DNS
  /// records are in a bad state.
  /// Structure is documented below.
  final List<AppHostingDomainCustomDomainStatusRequiredDnsUpdate>? requiredDnsUpdates;

  /// Creates a new [AppHostingDomainCustomDomainStatus].
  /// [certState] (Output)
  /// [hostState] (Output)
  /// [issues] (Output)
  /// [ownershipState] (Output)
  /// [requiredDnsUpdates] (Output)
  AppHostingDomainCustomDomainStatus({
    this.certState,
    this.hostState,
    this.issues,
    this.ownershipState,
    this.requiredDnsUpdates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certState': ?certState,
      'hostState': ?hostState,
      'issues': ?issues == null ? null : pulumi.Input.encodeList<AppHostingDomainCustomDomainStatusIssue, Map<String, dynamic>>(issues!, (value) => value.toMap()),
      'ownershipState': ?ownershipState,
      'requiredDnsUpdates': ?requiredDnsUpdates == null ? null : pulumi.Input.encodeList<AppHostingDomainCustomDomainStatusRequiredDnsUpdate, Map<String, dynamic>>(requiredDnsUpdates!, (value) => value.toMap()),
    };
  }

  factory AppHostingDomainCustomDomainStatus.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainCustomDomainStatus(
      certState: map['certState'] == null ? null : map['certState'] as String,
      hostState: map['hostState'] == null ? null : map['hostState'] as String,
      issues: map['issues'] == null ? null : pulumi.Input.decodeList<AppHostingDomainCustomDomainStatusIssue>(map['issues'], (value) => AppHostingDomainCustomDomainStatusIssue.fromMap((value as Map).cast<String, dynamic>())),
      ownershipState: map['ownershipState'] == null ? null : map['ownershipState'] as String,
      requiredDnsUpdates: map['requiredDnsUpdates'] == null ? null : pulumi.Input.decodeList<AppHostingDomainCustomDomainStatusRequiredDnsUpdate>(map['requiredDnsUpdates'], (value) => AppHostingDomainCustomDomainStatusRequiredDnsUpdate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

