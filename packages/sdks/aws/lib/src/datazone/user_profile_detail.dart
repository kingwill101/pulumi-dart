// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_detail_iam.dart';
import 'user_profile_detail_sso.dart';

class UserProfileDetail {
  final pulumi.Input<List<UserProfileDetailIam>> iams;
  final pulumi.Input<List<UserProfileDetailSso>> ssos;

  /// Creates a new [UserProfileDetail].
  /// [iams] Required.
  /// [ssos] Required.
  UserProfileDetail({
    required this.iams,
    required this.ssos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iams': pulumi.Input.mapInputValue<List<UserProfileDetailIam>, List<Map<String, dynamic>>>(iams, (value) => pulumi.Input.encodeList<UserProfileDetailIam, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ssos': pulumi.Input.mapInputValue<List<UserProfileDetailSso>, List<Map<String, dynamic>>>(ssos, (value) => pulumi.Input.encodeList<UserProfileDetailSso, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserProfileDetail.fromMap(Map<String, dynamic> map) {
    return UserProfileDetail(
      iams: (pulumi.Input.decodeList<UserProfileDetailIam>(map['iams']!, (value) => UserProfileDetailIam.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ssos: (pulumi.Input.decodeList<UserProfileDetailSso>(map['ssos']!, (value) => UserProfileDetailSso.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

