// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_chart_namespaces_namespace.dart';

/// Result data returned by getChartNamespaces.
class GetChartNamespacesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? nameRegex;
  final List<String> names;
  final List<GetChartNamespacesNamespace> namespaces;
  final String? outputFile;

  /// Creates a new [GetChartNamespacesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [namespaces] Required.
  /// [outputFile] Optional.
  GetChartNamespacesResult({
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    required this.namespaces,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'namespaces':
          pulumi.Input.encodeList<
            GetChartNamespacesNamespace,
            Map<String, dynamic>
          >(namespaces, (value) => value.toMap()),
      'outputFile': ?outputFile,
    };
  }

  factory GetChartNamespacesResult.fromMap(Map<String, dynamic> map) {
    return GetChartNamespacesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      namespaces: pulumi.Input.decodeList<GetChartNamespacesNamespace>(
        map['namespaces']!,
        (value) => GetChartNamespacesNamespace.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
