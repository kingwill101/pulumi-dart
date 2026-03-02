// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sls_get_logtail_configs_get_logtail_configs_args_doc}
/// Arguments for getLogtailConfigs.
/// {@endtemplate}
/// {@macro pulumi_sls_get_logtail_configs_get_logtail_configs_args_doc}
class GetLogtailConfigsArgs {
  /// A list of Logtail Config IDs. The value is formulated as `<project_name>:<logtail_config_name>`.
  final pulumi.Input<List<String>>? ids;
  /// Logstore name.
  final pulumi.Input<String> logstoreName;
  /// The name of the resource
  final pulumi.Input<String>? logtailConfigName;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// Query start row. The default value is 0.
  final pulumi.Input<int> offset;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Project name
  final pulumi.Input<String> projectName;
  /// The number of rows per page set for a pagination query. The maximum value is 500.
  final pulumi.Input<int> size;

  /// Creates a new [GetLogtailConfigsArgs].
  /// [ids] A list of Logtail Config IDs. The value is formulated as `<project_name>:<logtail_config_name>`.
  /// [logstoreName] Logstore name.
  /// [logtailConfigName] The name of the resource
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [offset] Query start row. The default value is 0.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [projectName] Project name
  /// [size] The number of rows per page set for a pagination query. The maximum value is 500.
  GetLogtailConfigsArgs({
    this.ids,
    required this.logstoreName,
    this.logtailConfigName,
    this.nameRegex,
    required this.offset,
    this.outputFile,
    required this.projectName,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'logstoreName': logstoreName,
      'logtailConfigName': ?logtailConfigName,
      'nameRegex': ?nameRegex,
      'offset': offset,
      'outputFile': ?outputFile,
      'projectName': projectName,
      'size': size,
    };
  }

  factory GetLogtailConfigsArgs.fromMap(Map<String, dynamic> map) {
    return GetLogtailConfigsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      logstoreName: (map['logstoreName'] as String).input(),
      logtailConfigName: map['logtailConfigName'] == null ? null : (map['logtailConfigName'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      offset: (map['offset'] as int).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      size: (map['size'] as int).input(),
    );
  }
}

