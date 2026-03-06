// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CloudPhoneInstance resources.
class CloudPhoneInstanceState {
  /// The ID of the instance group to which the instance belongs
  final pulumi.Input<String>? androidInstanceGroupId;
  /// The instance name
  final pulumi.Input<String>? androidInstanceName;

  /// Creates a new [CloudPhoneInstanceState].
  /// [androidInstanceGroupId] The ID of the instance group to which the instance belongs
  /// [androidInstanceName] The instance name
  const CloudPhoneInstanceState({
    this.androidInstanceGroupId,
    this.androidInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidInstanceGroupId': ?androidInstanceGroupId,
      'androidInstanceName': ?androidInstanceName,
    };
  }

  factory CloudPhoneInstanceState.fromMap(Map<String, dynamic> map) {
    return CloudPhoneInstanceState(
      androidInstanceGroupId: (() { final guardedValue = map['androidInstanceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      androidInstanceName: (() { final guardedValue = map['androidInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

