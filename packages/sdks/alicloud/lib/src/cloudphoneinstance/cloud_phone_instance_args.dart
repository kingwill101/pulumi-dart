// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudphoneinstance_cloud_phone_instance_cloud_phone_instance_args_doc}
/// The set of arguments for CloudPhoneInstance.
/// {@endtemplate}
/// {@macro pulumi_cloudphoneinstance_cloud_phone_instance_cloud_phone_instance_args_doc}
class CloudPhoneInstanceArgs {
  /// The ID of the instance group to which the instance belongs
  final pulumi.Input<String>? androidInstanceGroupId;
  /// The instance name
  final pulumi.Input<String>? androidInstanceName;

  /// Creates a new [CloudPhoneInstanceArgs].
  /// [androidInstanceGroupId] The ID of the instance group to which the instance belongs
  /// [androidInstanceName] The instance name
  CloudPhoneInstanceArgs({
    this.androidInstanceGroupId,
    this.androidInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidInstanceGroupId': ?androidInstanceGroupId,
      'androidInstanceName': ?androidInstanceName,
    };
  }

  factory CloudPhoneInstanceArgs.fromMap(Map<String, dynamic> map) {
    return CloudPhoneInstanceArgs(
      androidInstanceGroupId: (() { final guardedValue = map['androidInstanceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      androidInstanceName: (() { final guardedValue = map['androidInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

