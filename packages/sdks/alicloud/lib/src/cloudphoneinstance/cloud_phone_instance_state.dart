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
  CloudPhoneInstanceState({
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
      androidInstanceGroupId: map['androidInstanceGroupId'] == null ? null : (map['androidInstanceGroupId'] as String).input(),
      androidInstanceName: map['androidInstanceName'] == null ? null : (map['androidInstanceName'] as String).input(),
    );
  }
}

