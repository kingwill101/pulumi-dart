// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_perimeter_status_ingress_policy_ingress_from_source/service_perimeter_status_ingress_policy_ingress_from_source.dart';

class ServicePerimeterStatusIngressPolicyIngressFrom {
  /// A list of identities that are allowed access through this ingress policy.
  /// Should be in the format of email address. The email address should represent
  /// individual user or service account only.
  final List<String>? identities;

  /// Specifies the type of identities that are allowed access from outside the
  /// perimeter. If left unspecified, then members of `identities` field will be
  /// allowed access.
  /// Possible values are: `IDENTITY_TYPE_UNSPECIFIED`, `ANY_IDENTITY`, `ANY_USER_ACCOUNT`, `ANY_SERVICE_ACCOUNT`.
  final String? identityType;

  /// Sources that this `IngressPolicy` authorizes access from.
  /// Structure is documented below.
  final List<ServicePerimeterStatusIngressPolicyIngressFromSource>? sources;

  ServicePerimeterStatusIngressPolicyIngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final identitiesValue = identities;
    if (identitiesValue != null) {
      map['identities'] = identitiesValue;
    }
    final identityTypeValue = identityType;
    if (identityTypeValue != null) {
      map['identityType'] = identityTypeValue;
    }
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] = Input.encodeList<
          ServicePerimeterStatusIngressPolicyIngressFromSource,
          Map<String, dynamic>>(sourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServicePerimeterStatusIngressPolicyIngressFrom.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimeterStatusIngressPolicyIngressFrom(
      identities: map['identities'] == null
          ? null
          : (map['identities'] as List).cast<String>(),
      identityType:
          map['identityType'] == null ? null : map['identityType'] as String,
      sources: map['sources'] == null
          ? null
          : Input.decodeList<
                  ServicePerimeterStatusIngressPolicyIngressFromSource>(
              map['sources'],
              (value) =>
                  ServicePerimeterStatusIngressPolicyIngressFromSource.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
