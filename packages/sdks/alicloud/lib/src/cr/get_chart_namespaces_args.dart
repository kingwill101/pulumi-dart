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

  factory GetChartNamespacesArgs.fromMap(Map<String, dynamic> map) {
    return GetChartNamespacesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

