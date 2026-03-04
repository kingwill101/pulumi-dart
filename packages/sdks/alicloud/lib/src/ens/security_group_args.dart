// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ens_security_group_security_group_args_doc}
/// The set of arguments for SecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_ens_security_group_security_group_args_doc}
class SecurityGroupArgs {
  /// Security group description informationIt must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;

  /// Security group nameThe security group name. The length is 2~128 English or Chinese characters. It must start with an uppercase or lowcase letter or a Chinese character and cannot start with `http://` or `https`. Can contain digits, colons (:), underscores (_), or hyphens (-).
  final pulumi.Input<String>? securityGroupName;

  /// Creates a new [SecurityGroupArgs].
  /// [description] Security group description informationIt must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`.
  /// [securityGroupName] Security group nameThe security group name. The length is 2~128 English or Chinese characters. It must start with an uppercase or lowcase letter or a Chinese character and cannot start with `http://` or `https`. Can contain digits, colons (:), underscores (_), or hyphens (-).
  SecurityGroupArgs({this.description, this.securityGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'securityGroupName': ?securityGroupName,
    };
  }

  factory SecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGroupArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupName: (() {
        final guardedValue = map['securityGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
