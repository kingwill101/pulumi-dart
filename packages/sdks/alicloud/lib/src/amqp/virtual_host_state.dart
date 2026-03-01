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
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? virtualHostName,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      virtualHostName = pulumi.Input.asOptionalInput<String>(virtualHostName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'virtualHostName': ?virtualHostName,
    };
  }

  factory VirtualHostState.fromMap(Map<String, dynamic> map) {
    return VirtualHostState(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      virtualHostName: map['virtualHostName'] == null ? null : pulumi.Output.create<String>(map['virtualHostName'] as String),
    );
  }
}

