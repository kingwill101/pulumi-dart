// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_get_chart_namespaces_get_chart_namespaces_args_doc}
/// Arguments for getChartNamespaces.
/// {@endtemplate}
/// {@macro pulumi_cr_get_chart_namespaces_get_chart_namespaces_args_doc}
class GetChartNamespacesArgs {
  /// A list of matched Container Registry Enterprise Edition namespaces.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the Container Registry instance.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by name space name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetChartNamespacesArgs].
  /// [ids] A list of matched Container Registry Enterprise Edition namespaces.
  /// [instanceId] The ID of the Container Registry instance.
  /// [nameRegex] A regex string to filter results by name space name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetChartNamespacesArgs({
    List<String>? ids,
    required String instanceId,
    String? nameRegex,
    String? outputFile,
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

  factory GetChartNamespacesArgs.fromMap(Map<String, dynamic> map) {
    return GetChartNamespacesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

