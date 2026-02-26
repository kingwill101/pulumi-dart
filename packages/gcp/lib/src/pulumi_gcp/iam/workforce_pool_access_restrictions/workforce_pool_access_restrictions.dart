// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workforce_pool_access_restrictions_allowed_service/workforce_pool_access_restrictions_allowed_service.dart';

class WorkforcePoolAccessRestrictions {
  /// Services allowed for web sign-in with the workforce pool.
  /// If not set by default there are no restrictions.
  /// Structure is documented below.
  final List<WorkforcePoolAccessRestrictionsAllowedService>? allowedServices;

  /// Disable programmatic sign-in by disabling token issue via the Security Token API endpoint.
  /// See [Security Token Service API](https://cloud.google.com/iam/docs/reference/sts/rest).
  final bool? disableProgrammaticSignin;

  WorkforcePoolAccessRestrictions({
    this.allowedServices,
    this.disableProgrammaticSignin,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedServicesValue = allowedServices;
    if (allowedServicesValue != null) {
      map['allowedServices'] = Input.encodeList<
          WorkforcePoolAccessRestrictionsAllowedService,
          Map<String, dynamic>>(allowedServicesValue, (value) => value.toMap());
    }
    final disableProgrammaticSigninValue = disableProgrammaticSignin;
    if (disableProgrammaticSigninValue != null) {
      map['disableProgrammaticSignin'] = disableProgrammaticSigninValue;
    }
    return map;
  }

  factory WorkforcePoolAccessRestrictions.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolAccessRestrictions(
      allowedServices: map['allowedServices'] == null
          ? null
          : Input.decodeList<WorkforcePoolAccessRestrictionsAllowedService>(
              map['allowedServices'],
              (value) => WorkforcePoolAccessRestrictionsAllowedService.fromMap(
                  (value as Map).cast<String, dynamic>())),
      disableProgrammaticSignin: map['disableProgrammaticSignin'] == null
          ? null
          : map['disableProgrammaticSignin'] as bool,
    );
  }
}
