// ignore_for_file: unused_element, unnecessary_cast


class DataCollectionRuleDataSourcesExtension {
  /// A JSON String which specifies the extension setting.
  final String? extensionJson;
  /// The name of the VM extension.
  final String extensionName;
  /// Specifies a list of data sources this extension needs data from. An item should be a name of a supported data source which produces only one stream. Supported data sources type: `performance_counter`, `windows_event_log`,and `syslog`.
  final List<String>? inputDataSources;
  /// The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  final String name;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to `Microsoft-Event`, `Microsoft-InsightsMetrics`, `Microsoft-Perf`, `Microsoft-Syslog`, `Microsoft-WindowsEvent`.
  final List<String> streams;

  /// Creates a new [DataCollectionRuleDataSourcesExtension].
  /// [extensionJson] A JSON String which specifies the extension setting.
  /// [extensionName] The name of the VM extension.
  /// [inputDataSources] Specifies a list of data sources this extension needs data from. An item should be a name of a supported data source which produces only one stream. Supported data sources type: `performance_counter`, `windows_event_log`,and `syslog`.
  /// [name] The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to `Microsoft-Event`, `Microsoft-InsightsMetrics`, `Microsoft-Perf`, `Microsoft-Syslog`, `Microsoft-WindowsEvent`.
  DataCollectionRuleDataSourcesExtension({
    this.extensionJson,
    required this.extensionName,
    this.inputDataSources,
    required this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionJson': ?extensionJson,
      'extensionName': extensionName,
      'inputDataSources': ?inputDataSources,
      'name': name,
      'streams': streams,
    };
  }

  factory DataCollectionRuleDataSourcesExtension.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSourcesExtension(
      extensionJson: map['extensionJson'] == null ? null : map['extensionJson'] as String,
      extensionName: map['extensionName'] as String,
      inputDataSources: map['inputDataSources'] == null ? null : (map['inputDataSources'] as List).cast<String>(),
      name: map['name'] as String,
      streams: (map['streams'] as List).cast<String>(),
    );
  }
}

