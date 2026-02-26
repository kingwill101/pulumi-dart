// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../user_profile_detail_iam/user_profile_detail_iam.dart';
import '../user_profile_detail_sso/user_profile_detail_sso.dart';

class UserProfileDetail {
  final List<UserProfileDetailIam> iams;
  final List<UserProfileDetailSso> ssos;

  UserProfileDetail({
    required this.iams,
    required this.ssos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iams'] = Input.encodeList<UserProfileDetailIam, Map<String, dynamic>>(
        iams, (value) => value.toMap());
    map['ssos'] = Input.encodeList<UserProfileDetailSso, Map<String, dynamic>>(
        ssos, (value) => value.toMap());
    return map;
  }

  factory UserProfileDetail.fromMap(Map<String, dynamic> map) {
    return UserProfileDetail(
      iams: Input.decodeList<UserProfileDetailIam>(
          map['iams'],
          (value) => UserProfileDetailIam.fromMap(
              (value as Map).cast<String, dynamic>())),
      ssos: Input.decodeList<UserProfileDetailSso>(
          map['ssos'],
          (value) => UserProfileDetailSso.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
