// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arczonalshift_autoshift_observer_notification_status_autoshift_observer_notification_status_args_doc}
/// The set of arguments for AutoshiftObserverNotificationStatus.
/// {@endtemplate}
/// {@macro pulumi_arczonalshift_autoshift_observer_notification_status_autoshift_observer_notification_status_args_doc}
class AutoshiftObserverNotificationStatusArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Autoshift observer notification status. Valid values are `ENABLED` or `DISABLED`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> status;

  /// Creates a new [AutoshiftObserverNotificationStatusArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Autoshift observer notification status. Valid values are `ENABLED` or `DISABLED`.
  const AutoshiftObserverNotificationStatusArgs({
    this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'status': status,
    };
  }

  factory AutoshiftObserverNotificationStatusArgs.fromMap(Map<String, dynamic> map) {
    return AutoshiftObserverNotificationStatusArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
