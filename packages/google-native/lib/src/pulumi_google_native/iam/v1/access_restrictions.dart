// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'service_config4.dart';

/// Access related restrictions on the workforce pool.
class AccessRestrictions {
  /// Optional. Immutable. Services allowed for web sign-in with the workforce pool. If not set by default there are no restrictions.
  final List<ServiceConfig4>? allowedServices;

  /// Optional. Disable programmatic sign-in by disabling token issue via the Security Token API endpoint. See [Security Token Service API] (https://cloud.google.com/iam/docs/reference/sts/rest).
  final bool? disableProgrammaticSignin;

  AccessRestrictions({
    this.allowedServices,
    this.disableProgrammaticSignin,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedServicesValue = allowedServices;
    if (allowedServicesValue != null) {
      map['allowedServices'] =
          Input.encodeList<ServiceConfig4, Map<String, dynamic>>(
              allowedServicesValue, (value) => value.toMap());
    }
    final disableProgrammaticSigninValue = disableProgrammaticSignin;
    if (disableProgrammaticSigninValue != null) {
      map['disableProgrammaticSignin'] = disableProgrammaticSigninValue;
    }
    return map;
  }

  factory AccessRestrictions.fromMap(Map<String, dynamic> map) {
    return AccessRestrictions(
      allowedServices: map['allowedServices'] == null
          ? null
          : Input.decodeList<ServiceConfig4>(
              map['allowedServices'],
              (value) => ServiceConfig4.fromMap(
                  (value as Map).cast<String, dynamic>())),
      disableProgrammaticSignin: map['disableProgrammaticSignin'] == null
          ? null
          : map['disableProgrammaticSignin'] as bool,
    );
  }
}
