// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIndexUserGroupResolutionConfiguration {
  /// The identity store provider (mode) you want to use to fetch access levels of groups and users. AWS Single Sign-On is currently the only available mode. Your users and groups must exist in an AWS SSO identity source in order to use this mode. Valid Values are `AWS_SSO` or `NONE`.
  final pulumi.Input<String> userGroupResolutionMode;

  /// Creates a new [GetIndexUserGroupResolutionConfiguration].
  /// [userGroupResolutionMode] The identity store provider (mode) you want to use to fetch access levels of groups and users. AWS Single Sign-On is currently the only available mode. Your users and groups must exist in an AWS SSO identity source in order to use this mode. Valid Values are `AWS_SSO` or `NONE`.
  GetIndexUserGroupResolutionConfiguration({
    required this.userGroupResolutionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userGroupResolutionMode': userGroupResolutionMode,
    };
  }

  factory GetIndexUserGroupResolutionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetIndexUserGroupResolutionConfiguration(
      userGroupResolutionMode: pulumi.Input.fromValue(
        map['userGroupResolutionMode'] as String,
      ),
    );
  }
}
