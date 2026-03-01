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
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

