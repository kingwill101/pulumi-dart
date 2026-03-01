// ignore_for_file: unused_element, unnecessary_cast


class GetDataCollectionRuleDataSourceSyslog {
  /// Specifies a list of facility names. Use a wildcard `*` to collect logs for all facility names. Possible values are `auth`, `authpriv`, `cron`, `daemon`, `kern`, `lpr`, `mail`, `mark`, `news`, `syslog`, `user`, `uucp`, `local0`, `local1`, `local2`, `local3`, `local4`, `local5`, `local6`, `local7`,and `*`.
  final List<String> facilityNames;
  /// Specifies a list of log levels. Use a wildcard `*` to collect logs for all log levels. Possible values are `Debug`,  `Info`, `Notice`, `Warning`, `Error`, `Critical`, `Alert`, `Emergency`,and `*`.
  final List<String> logLevels;
  /// Specifies the name of the Data Collection Rule.
  final String name;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final List<String> streams;

  /// Creates a new [GetDataCollectionRuleDataSourceSyslog].
  /// [facilityNames] Specifies a list of facility names. Use a wildcard `*` to collect logs for all facility names. Possible values are `auth`, `authpriv`, `cron`, `daemon`, `kern`, `lpr`, `mail`, `mark`, `news`, `syslog`, `user`, `uucp`, `local0`, `local1`, `local2`, `local3`, `local4`, `local5`, `local6`, `local7`,and `*`.
  /// [logLevels] Specifies a list of log levels. Use a wildcard `*` to collect logs for all log levels. Possible values are `Debug`,  `Info`, `Notice`, `Warning`, `Error`, `Critical`, `Alert`, `Emergency`,and `*`.
  /// [name] Specifies the name of the Data Collection Rule.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  GetDataCollectionRuleDataSourceSyslog({
    required this.facilityNames,
    required this.logLevels,
    required this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'facilityNames': facilityNames,
      'logLevels': logLevels,
      'name': name,
      'streams': streams,
    };
  }

  factory GetDataCollectionRuleDataSourceSyslog.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDataSourceSyslog(
      facilityNames: (map['facilityNames'] as List).cast<String>(),
      logLevels: (map['logLevels'] as List).cast<String>(),
      name: map['name'] as String,
      streams: (map['streams'] as List).cast<String>(),
    );
  }
}

