// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecWorkerTermination {
  /// The number of seconds to wait between sending a TERM signal to a container and issuing a KILL which causes immediate shutdown. Default: 120, Minimum 1, Maximum 600.
  final int? gracePeriodSeconds;

  /// Creates a new [GetAppSpecWorkerTermination].
  /// [gracePeriodSeconds] The number of seconds to wait between sending a TERM signal to a container and issuing a KILL which causes immediate shutdown. Default: 120, Minimum 1, Maximum 600.
  GetAppSpecWorkerTermination({
    this.gracePeriodSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gracePeriodSeconds': ?gracePeriodSeconds,
    };
  }

  factory GetAppSpecWorkerTermination.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerTermination(
      gracePeriodSeconds: map['gracePeriodSeconds'] == null ? null : map['gracePeriodSeconds'] as int,
    );
  }
}

