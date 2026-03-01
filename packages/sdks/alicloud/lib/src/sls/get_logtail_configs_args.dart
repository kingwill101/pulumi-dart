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
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> logstoreName,
    pulumi.Output<String>? logtailConfigName,
    pulumi.Output<String>? nameRegex,
    required pulumi.Output<int> offset,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> projectName,
    required pulumi.Output<int> size,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      logstoreName = pulumi.Input.asInput<String>(logstoreName),
      logtailConfigName = pulumi.Input.asOptionalInput<String>(logtailConfigName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      offset = pulumi.Input.asInput<int>(offset),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      projectName = pulumi.Input.asInput<String>(projectName),
      size = pulumi.Input.asInput<int>(size);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      logstoreName: pulumi.Output.create<String>(map['logstoreName'] as String),
      logtailConfigName: map['logtailConfigName'] == null ? null : pulumi.Output.create<String>(map['logtailConfigName'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      offset: pulumi.Output.create<int>(map['offset'] as int),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      size: pulumi.Output.create<int>(map['size'] as int),
    );
  }
}

