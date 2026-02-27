// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_config_response_iam_v1.dart';

/// Access related restrictions on the workforce pool.
class AccessRestrictionsResponse {
  /// Optional. Immutable. Services allowed for web sign-in with the workforce pool. If not set by default there are no restrictions.
  final List<ServiceConfigResponseIamV1> allowedServices;

  /// Optional. Disable programmatic sign-in by disabling token issue via the Security Token API endpoint. See [Security Token Service API] (https://cloud.google.com/iam/docs/reference/sts/rest).
  final bool disableProgrammaticSignin;

  AccessRestrictionsResponse({
    required this.allowedServices,
    required this.disableProgrammaticSignin,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedServices'] = pulumi.Input.encodeList<ServiceConfigResponseIamV1,
        Map<String, dynamic>>(allowedServices, (value) => value.toMap());
    map['disableProgrammaticSignin'] = disableProgrammaticSignin;
    return map;
  }

  factory AccessRestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return AccessRestrictionsResponse(
      allowedServices: pulumi.Input.decodeList<ServiceConfigResponseIamV1>(
          map['allowedServices'],
          (value) => ServiceConfigResponseIamV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      disableProgrammaticSignin: map['disableProgrammaticSignin'] as bool,
    );
  }
}
