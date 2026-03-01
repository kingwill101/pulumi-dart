// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prometheis_promethei.dart';

/// Result data returned by getPrometheis.
class GetPrometheisResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Prometheus names.
  final List<String> names;
  final String? outputFile;
  /// A list of Prometheus. Each element contains the following attributes:
  final List<GetPrometheisPromethei> prometheis;
  /// The ID of the resource group.
  final String? resourceGroupId;
  /// The tag of the Prometheus.
  final Map<String, String>? tags;

  /// Creates a new [GetPrometheisResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Prometheus names.
  /// [outputFile] Optional.
  /// [prometheis] A list of Prometheus. Each element contains the following attributes:
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the Prometheus.
  GetPrometheisResult({
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
      'prometheis': pulumi.Input.encodeList<GetPrometheisPromethei, Map<String, dynamic>>(prometheis, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetPrometheisResult.fromMap(Map<String, dynamic> map) {
    return GetPrometheisResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      prometheis: pulumi.Input.decodeList<GetPrometheisPromethei>(map['prometheis'], (value) => GetPrometheisPromethei.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

