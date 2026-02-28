// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_config.dart';

/// Access related restrictions on the workforce pool.
class AccessRestrictions {
  /// Optional. Immutable. Services allowed for web sign-in with the workforce pool. If not set by default there are no restrictions.
  final List<ServiceConfig>? allowedServices;
  /// Optional. Disable programmatic sign-in by disabling token issue via the Security Token API endpoint. See [Security Token Service API] (https://cloud.google.com/iam/docs/reference/sts/rest).
  final bool? disableProgrammaticSignin;

  /// Creates a new [AccessRestrictions].
  /// [allowedServices] Optional. Immutable. Services allowed for web sign-in with the workforce pool. If not set by default there are no restrictions.
  /// [disableProgrammaticSignin] Optional. Disable programmatic sign-in by disabling token issue via the Security Token API endpoint. See [Security Token Service API] (https://cloud.google.com/iam/docs/reference/sts/rest).
  AccessRestrictions({
    this.allowedServices,
    this.disableProgrammaticSignin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedServices': ?allowedServices == null ? null : pulumi.Input.encodeList<ServiceConfig, Map<String, dynamic>>(allowedServices!, (value) => value.toMap()),
      'disableProgrammaticSignin': ?disableProgrammaticSignin,
    };
  }

  factory AccessRestrictions.fromMap(Map<String, dynamic> map) {
    return AccessRestrictions(
      allowedServices: map['allowedServices'] == null ? null : pulumi.Input.decodeList<ServiceConfig>(map['allowedServices'], (value) => ServiceConfig.fromMap((value as Map).cast<String, dynamic>())),
      disableProgrammaticSignin: map['disableProgrammaticSignin'] == null ? null : map['disableProgrammaticSignin'] as bool,
    );
  }
}

