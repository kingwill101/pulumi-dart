// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualHost resources.
class VirtualHostState {
  /// InstanceId.
  final pulumi.Input<String>? instanceId;
  /// VirtualHostName.
  final pulumi.Input<String>? virtualHostName;

  /// Creates a new [VirtualHostState].
  /// [instanceId] InstanceId.
  /// [virtualHostName] VirtualHostName.
  VirtualHostState({
    this.instanceId,
    this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'virtualHostName': ?virtualHostName,
    };
  }

  factory VirtualHostState.fromMap(Map<String, dynamic> map) {
    return VirtualHostState(
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      virtualHostName: map['virtualHostName'] == null ? null : (map['virtualHostName']! as String).input(),
    );
  }
}

