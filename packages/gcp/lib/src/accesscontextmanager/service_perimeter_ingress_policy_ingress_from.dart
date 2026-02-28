// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_ingress_policy_ingress_from_source.dart';

class ServicePerimeterIngressPolicyIngressFrom {
  /// Identities can be an individual user, service account, Google group,
  /// or third-party identity. For third-party identity, only single identities
  /// are supported and other identity types are not supported.The v1 identities
  /// that have the prefix user, group and serviceAccount in
  /// https://cloud.google.com/iam/docs/principal-identifiers#v1 are supported.
  final List<String>? identities;
  /// Specifies the type of identities that are allowed access from outside the
  /// perimeter. If left unspecified, then members of `identities` field will be
  /// allowed access.
  /// Possible values are: `ANY_IDENTITY`, `ANY_USER_ACCOUNT`, `ANY_SERVICE_ACCOUNT`.
  final String? identityType;
  /// Sources that this `IngressPolicy` authorizes access from.
  /// Structure is documented below.
  final List<ServicePerimeterIngressPolicyIngressFromSource>? sources;

  /// Creates a new [ServicePerimeterIngressPolicyIngressFrom].
  /// [identities] Identities can be an individual user, service account, Google group,
  /// [identityType] Specifies the type of identities that are allowed access from outside the
  /// [sources] Sources that this `IngressPolicy` authorizes access from.
  ServicePerimeterIngressPolicyIngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': ?identities,
      'identityType': ?identityType,
      'sources': ?sources == null ? null : pulumi.Input.encodeList<ServicePerimeterIngressPolicyIngressFromSource, Map<String, dynamic>>(sources!, (value) => value.toMap()),
    };
  }

  factory ServicePerimeterIngressPolicyIngressFrom.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterIngressPolicyIngressFrom(
      identities: map['identities'] == null ? null : (map['identities'] as List).cast<String>(),
      identityType: map['identityType'] == null ? null : map['identityType'] as String,
      sources: map['sources'] == null ? null : pulumi.Input.decodeList<ServicePerimeterIngressPolicyIngressFromSource>(map['sources'], (value) => ServicePerimeterIngressPolicyIngressFromSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

