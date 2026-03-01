// ignore_for_file: unused_element, unnecessary_cast


class AppSpecServiceTermination {
  /// The number of seconds to wait between selecting a container instance for termination and issuing the TERM signal. Selecting a container instance for termination begins an asynchronous drain of new requests on upstream load-balancers. Default: 15 seconds, Minimum 1, Maximum 110.
  ///
  /// A `static_site` can contain:
  final int? drainSeconds;
  /// The number of seconds to wait between sending a TERM signal to a container and issuing a KILL which causes immediate shutdown. Default: 120, Minimum 1, Maximum 600.
  ///
  /// A `function` component can contain:
  final int? gracePeriodSeconds;

  /// Creates a new [AppSpecServiceTermination].
  /// [drainSeconds] The number of seconds to wait between selecting a container instance for termination and issuing the TERM signal. Selecting a container instance for termination begins an asynchronous drain of new requests on upstream load-balancers. Default: 15 seconds, Minimum 1, Maximum 110.
  /// [gracePeriodSeconds] The number of seconds to wait between sending a TERM signal to a container and issuing a KILL which causes immediate shutdown. Default: 120, Minimum 1, Maximum 600.
  AppSpecServiceTermination({
    this.drainSeconds,
    this.gracePeriodSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainSeconds': ?drainSeconds,
      'gracePeriodSeconds': ?gracePeriodSeconds,
    };
  }

  factory AppSpecServiceTermination.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceTermination(
      drainSeconds: map['drainSeconds'] == null ? null : map['drainSeconds'] as int,
      gracePeriodSeconds: map['gracePeriodSeconds'] == null ? null : map['gracePeriodSeconds'] as int,
    );
  }
}

