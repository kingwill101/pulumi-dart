// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_baselines_baseline.dart';

/// Result data returned by getBaselines.
class GetBaselinesResult {
  /// A list of Baseline Entries. Each element contains the following attributes:
  final List<GetBaselinesBaseline> baselines;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Baseline IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Baselines.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetBaselinesResult].
  /// [baselines] A list of Baseline Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Baseline IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Baselines.
  /// [outputFile] Optional.
  GetBaselinesResult({
    required this.baselines,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselines': pulumi.Input.encodeList<GetBaselinesBaseline, Map<String, dynamic>>(baselines, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetBaselinesResult.fromMap(Map<String, dynamic> map) {
    return GetBaselinesResult(
      baselines: pulumi.Input.decodeList<GetBaselinesBaseline>(map['baselines'], (value) => GetBaselinesBaseline.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

