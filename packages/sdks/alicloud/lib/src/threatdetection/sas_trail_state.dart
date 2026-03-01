// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sas_trail_service_trail.dart';

/// Input properties used for looking up and filtering SasTrail resources.
class SasTrailState {
  /// The service trace creation timestamp, in milliseconds.
  final pulumi.Input<int>? createTime;
  /// Service trace configuration information.
  final pulumi.Input<SasTrailServiceTrail>? serviceTrail;

  /// Creates a new [SasTrailState].
  /// [createTime] The service trace creation timestamp, in milliseconds.
  /// [serviceTrail] Service trace configuration information.
  SasTrailState({
    pulumi.Output<int>? createTime,
    pulumi.Output<SasTrailServiceTrail>? serviceTrail,
  }) :
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      serviceTrail = pulumi.Input.asOptionalInput<SasTrailServiceTrail>(serviceTrail);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'serviceTrail': ?pulumi.Input.mapOptionalInputValue<SasTrailServiceTrail, Map<String, dynamic>>(serviceTrail, (value) => value.toMap()),
    };
  }

  factory SasTrailState.fromMap(Map<String, dynamic> map) {
    return SasTrailState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      serviceTrail: map['serviceTrail'] == null ? null : pulumi.Output.create<SasTrailServiceTrail>(SasTrailServiceTrail.fromMap((map['serviceTrail'] as Map).cast<String, dynamic>())),
    );
  }
}

