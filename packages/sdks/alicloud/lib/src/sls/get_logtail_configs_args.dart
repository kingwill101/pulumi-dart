// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sls_get_logtail_configs_get_logtail_configs_args_doc}
/// Arguments for getLogtailConfigs.
/// {@endtemplate}
/// {@macro pulumi_sls_get_logtail_configs_get_logtail_configs_args_doc}
class GetLogtailConfigsArgs {
  /// A list of Logtail Config IDs. The value is formulated as `&lt;project_name&gt;:&lt;logtail_config_name&gt;`.
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
  /// [ids] A list of Logtail Config IDs. The value is formulated as `&lt;project_name&gt;:&lt;logtail_config_name&gt;`.
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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      logstoreName: pulumi.Input.fromValue(map['logstoreName'] as String),
      logtailConfigName: (() {
        final guardedValue = map['logtailConfigName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      offset: pulumi.Input.fromValue(map['offset'] as int),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
    );
  }
}
