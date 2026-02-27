// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'display_data_response.dart';

/// Description of the type, names/ids, and input/outputs for a transform.
class TransformSummaryResponse {
  /// Transform-specific display data.
  final List<DisplayDataResponse> displayData;

  /// User names for all collection inputs to this transform.
  final List<String> inputCollectionName;

  /// Type of transform.
  final String kind;

  /// User provided name for this transform instance.
  final String name;

  /// User names for all collection outputs to this transform.
  final List<String> outputCollectionName;

  TransformSummaryResponse({
    required this.displayData,
    required this.inputCollectionName,
    required this.kind,
    required this.name,
    required this.outputCollectionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayData'] =
        pulumi.Input.encodeList<DisplayDataResponse, Map<String, dynamic>>(
            displayData, (value) => value.toMap());
    map['inputCollectionName'] = inputCollectionName;
    map['kind'] = kind;
    map['name'] = name;
    map['outputCollectionName'] = outputCollectionName;
    return map;
  }

  factory TransformSummaryResponse.fromMap(Map<String, dynamic> map) {
    return TransformSummaryResponse(
      displayData: pulumi.Input.decodeList<DisplayDataResponse>(
          map['displayData'],
          (value) => DisplayDataResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      inputCollectionName: (map['inputCollectionName'] as List).cast<String>(),
      kind: map['kind'] as String,
      name: map['name'] as String,
      outputCollectionName:
          (map['outputCollectionName'] as List).cast<String>(),
    );
  }
}
