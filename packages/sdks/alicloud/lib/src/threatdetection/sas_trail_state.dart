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
  SasTrailState({this.createTime, this.serviceTrail});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'serviceTrail':
          ?pulumi.Input.mapOptionalInputValue<
            SasTrailServiceTrail,
            Map<String, dynamic>
          >(serviceTrail, (value) => value.toMap()),
    };
  }

  factory SasTrailState.fromMap(Map<String, dynamic> map) {
    return SasTrailState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      serviceTrail: (() {
        final guardedValue = map['serviceTrail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SasTrailServiceTrail.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
