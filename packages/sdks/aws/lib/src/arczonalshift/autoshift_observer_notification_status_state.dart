// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutoshiftObserverNotificationStatus resources.
class AutoshiftObserverNotificationStatusState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Autoshift observer notification status. Valid values are `ENABLED` or `DISABLED`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? status;

  /// Creates a new [AutoshiftObserverNotificationStatusState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Autoshift observer notification status. Valid values are `ENABLED` or `DISABLED`.
  const AutoshiftObserverNotificationStatusState({
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'status': ?status,
    };
  }

  factory AutoshiftObserverNotificationStatusState.fromMap(Map<String, dynamic> map) {
    return AutoshiftObserverNotificationStatusState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
