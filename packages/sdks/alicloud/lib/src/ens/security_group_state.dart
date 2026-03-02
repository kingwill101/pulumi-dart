// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityGroup resources.
class SecurityGroupState {
  /// Security group description informationIt must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// Security group nameThe security group name. The length is 2~128 English or Chinese characters. It must start with an uppercase or lowcase letter or a Chinese character and cannot start with `http://` or `https`. Can contain digits, colons (:), underscores (_), or hyphens (-).
  final pulumi.Input<String>? securityGroupName;

  /// Creates a new [SecurityGroupState].
  /// [description] Security group description informationIt must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`.
  /// [securityGroupName] Security group nameThe security group name. The length is 2~128 English or Chinese characters. It must start with an uppercase or lowcase letter or a Chinese character and cannot start with `http://` or `https`. Can contain digits, colons (:), underscores (_), or hyphens (-).
  SecurityGroupState({
    this.description,
    this.securityGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'securityGroupName': ?securityGroupName,
    };
  }

  factory SecurityGroupState.fromMap(Map<String, dynamic> map) {
    return SecurityGroupState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      securityGroupName: map['securityGroupName'] == null ? null : (map['securityGroupName']! as String).input(),
    );
  }
}

