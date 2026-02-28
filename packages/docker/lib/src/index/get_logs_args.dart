// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_logs_get_logs_args_doc}
/// Arguments for getLogs.
/// {@endtemplate}
/// {@macro pulumi_index_get_logs_get_logs_args_doc}
class GetLogsArgs {
  final pulumi.Input<bool>? details;
  /// Discard headers that docker appends to each log entry
  final pulumi.Input<bool>? discardHeaders;
  final pulumi.Input<bool>? follow;
  /// If true populate computed value `logs_list_string`
  final pulumi.Input<bool>? logsListStringEnabled;
  /// The name of the Docker Container
  final pulumi.Input<String> name;
  final pulumi.Input<bool>? showStderr;
  final pulumi.Input<bool>? showStdout;
  final pulumi.Input<String>? since;
  final pulumi.Input<String>? tail;
  final pulumi.Input<bool>? timestamps;
  final pulumi.Input<String>? until;

  /// Creates a new [GetLogsArgs].
  /// [details] Optional.
  /// [discardHeaders] Discard headers that docker appends to each log entry
  /// [follow] Optional.
  /// [logsListStringEnabled] If true populate computed value `logs_list_string`
  /// [name] The name of the Docker Container
  /// [showStderr] Optional.
  /// [showStdout] Optional.
  /// [since] Optional.
  /// [tail] Optional.
  /// [timestamps] Optional.
  /// [until] Optional.
  GetLogsArgs({
    bool? details,
    bool? discardHeaders,
    bool? follow,
    bool? logsListStringEnabled,
    required String name,
    bool? showStderr,
    bool? showStdout,
    String? since,
    String? tail,
    bool? timestamps,
    String? until,
  }) :
      details = pulumi.Input.asOptionalInput<bool>(details),
      discardHeaders = pulumi.Input.asOptionalInput<bool>(discardHeaders),
      follow = pulumi.Input.asOptionalInput<bool>(follow),
      logsListStringEnabled = pulumi.Input.asOptionalInput<bool>(logsListStringEnabled),
      name = pulumi.Input.asInput<String>(name),
      showStderr = pulumi.Input.asOptionalInput<bool>(showStderr),
      showStdout = pulumi.Input.asOptionalInput<bool>(showStdout),
      since = pulumi.Input.asOptionalInput<String>(since),
      tail = pulumi.Input.asOptionalInput<String>(tail),
      timestamps = pulumi.Input.asOptionalInput<bool>(timestamps),
      until = pulumi.Input.asOptionalInput<String>(until);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'discardHeaders': ?discardHeaders,
      'follow': ?follow,
      'logsListStringEnabled': ?logsListStringEnabled,
      'name': name,
      'showStderr': ?showStderr,
      'showStdout': ?showStdout,
      'since': ?since,
      'tail': ?tail,
      'timestamps': ?timestamps,
      'until': ?until,
    };
  }

  factory GetLogsArgs.fromMap(Map<String, dynamic> map) {
    return GetLogsArgs(
      details: map['details'] == null ? null : map['details'] as bool,
      discardHeaders: map['discardHeaders'] == null ? null : map['discardHeaders'] as bool,
      follow: map['follow'] == null ? null : map['follow'] as bool,
      logsListStringEnabled: map['logsListStringEnabled'] == null ? null : map['logsListStringEnabled'] as bool,
      name: map['name'] as String,
      showStderr: map['showStderr'] == null ? null : map['showStderr'] as bool,
      showStdout: map['showStdout'] == null ? null : map['showStdout'] as bool,
      since: map['since'] == null ? null : map['since'] as String,
      tail: map['tail'] == null ? null : map['tail'] as String,
      timestamps: map['timestamps'] == null ? null : map['timestamps'] as bool,
      until: map['until'] == null ? null : map['until'] as String,
    );
  }
}

