// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_dry_run_egress_policy_egress_from_source.dart';

class ServicePerimeterDryRunEgressPolicyEgressFrom {
  /// Identities can be an individual user, service account, Google group,
  /// or third-party identity. For third-party identity, only single identities
  /// are supported and other identity types are not supported.The v1 identities
  /// that have the prefix user, group and serviceAccount in
  /// https://cloud.google.com/iam/docs/principal-identifiers#v1 are supported.
  final List<String>? identities;
  /// Specifies the type of identities that are allowed access to outside the
  /// perimeter. If left unspecified, then members of `identities` field will
  /// be allowed access.
  /// Possible values are: `ANY_IDENTITY`, `ANY_USER_ACCOUNT`, `ANY_SERVICE_ACCOUNT`.
  final String? identityType;
  /// Whether to enforce traffic restrictions based on `sources` field. If the `sources` field is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  /// Possible values are: `SOURCE_RESTRICTION_ENABLED`, `SOURCE_RESTRICTION_DISABLED`.
  final String? sourceRestriction;
  /// Sources that this EgressPolicy authorizes access from.
  /// Structure is documented below.
  final List<ServicePerimeterDryRunEgressPolicyEgressFromSource>? sources;

  /// Creates a new [ServicePerimeterDryRunEgressPolicyEgressFrom].
  /// [identities] Identities can be an individual user, service account, Google group,
  /// [identityType] Specifies the type of identities that are allowed access to outside the
  /// [sourceRestriction] Whether to enforce traffic restrictions based on `sources` field. If the `sources` field is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  /// [sources] Sources that this EgressPolicy authorizes access from.
  ServicePerimeterDryRunEgressPolicyEgressFrom({
    this.identities,
    this.identityType,
    this.sourceRestriction,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': ?identities,
      'identityType': ?identityType,
      'sourceRestriction': ?sourceRestriction,
      'sources': ?sources == null ? null : pulumi.Input.encodeList<ServicePerimeterDryRunEgressPolicyEgressFromSource, Map<String, dynamic>>(sources!, (value) => value.toMap()),
    };
  }

  factory ServicePerimeterDryRunEgressPolicyEgressFrom.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterDryRunEgressPolicyEgressFrom(
      identities: map['identities'] == null ? null : (map['identities'] as List).cast<String>(),
      identityType: map['identityType'] == null ? null : map['identityType'] as String,
      sourceRestriction: map['sourceRestriction'] == null ? null : map['sourceRestriction'] as String,
      sources: map['sources'] == null ? null : pulumi.Input.decodeList<ServicePerimeterDryRunEgressPolicyEgressFromSource>(map['sources'], (value) => ServicePerimeterDryRunEgressPolicyEgressFromSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

