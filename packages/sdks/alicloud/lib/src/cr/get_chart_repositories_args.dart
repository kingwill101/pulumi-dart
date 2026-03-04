// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_get_chart_repositories_get_chart_repositories_args_doc}
/// Arguments for getChartRepositories.
/// {@endtemplate}
/// {@macro pulumi_cr_get_chart_repositories_get_chart_repositories_args_doc}
class GetChartRepositoriesArgs {
  /// A list of matched Container Registry Enterprise Edition repositories.
  final pulumi.Input<List<String>>? ids;

  /// InstanceId.
  final pulumi.Input<String> instanceId;

  /// A regex string to filter results by repository name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetChartRepositoriesArgs].
  /// [ids] A list of matched Container Registry Enterprise Edition repositories.
  /// [instanceId] InstanceId.
  /// [nameRegex] A regex string to filter results by repository name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetChartRepositoriesArgs({
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetChartRepositoriesArgs.fromMap(Map<String, dynamic> map) {
    return GetChartRepositoriesArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
