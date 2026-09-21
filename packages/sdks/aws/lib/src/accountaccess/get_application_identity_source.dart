// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_identity_source_identity_center.dart';

class GetApplicationIdentitySource {
  /// IAM Identity Center instance used as the identity source. See `identityCenter` Block below.
  final pulumi.Input<List<GetApplicationIdentitySourceIdentityCenter>> identityCenters;

  /// Creates a new [GetApplicationIdentitySource].
  /// [identityCenters] IAM Identity Center instance used as the identity source. See `identityCenter` Block below.
  const GetApplicationIdentitySource({
    required this.identityCenters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityCenters': pulumi.Input.mapInputValue<List<GetApplicationIdentitySourceIdentityCenter>, List<Map<String, dynamic>>>(identityCenters, (value) => pulumi.Input.encodeList<GetApplicationIdentitySourceIdentityCenter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetApplicationIdentitySource.fromMap(Map<String, dynamic> map) {
    return GetApplicationIdentitySource(
      identityCenters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationIdentitySourceIdentityCenter>(map['identityCenters']!, (value) => GetApplicationIdentitySourceIdentityCenter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
