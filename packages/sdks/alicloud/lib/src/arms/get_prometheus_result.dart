// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prometheus_promethei.dart';

/// Result data returned by getPrometheus.
class GetPrometheusResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Prometheus names.
  final List<String> names;
  final String? outputFile;
  /// A list of Prometheus. Each element contains the following attributes:
  final List<GetPrometheusPromethei> prometheis;
  /// The ID of the resource group.
  final String? resourceGroupId;
  /// The tag of the Prometheus.
  final Map<String, String>? tags;

  /// Creates a new [GetPrometheusResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Prometheus names.
  /// [outputFile] Optional.
  /// [prometheis] A list of Prometheus. Each element contains the following attributes:
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the Prometheus.
  const GetPrometheusResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.prometheis,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'prometheis': pulumi.Input.encodeList<GetPrometheusPromethei, Map<String, dynamic>>(prometheis, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetPrometheusResult.fromMap(Map<String, dynamic> map) {
    return GetPrometheusResult(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prometheis: pulumi.Input.decodeList<GetPrometheusPromethei>(map['prometheis']!, (value) => GetPrometheusPromethei.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

