// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delta_model_current_state_response.dart';

/// Result data returned by getInferenceGroupDeltaModelsStatusAsync.
class GetInferenceGroupDeltaModelsStatusAsyncResult {
  /// Gets or sets actual instance count.
  final int? actualInstanceCount;
  /// Gets or sets dictionary representing modelID and its current state.
  final Map<String, List<DeltaModelCurrentStateResponse>>? deltaModels;
  /// Gets or sets expected instance count.
  final int? expectedInstanceCount;
  /// Gets or sets revision ID.
  final String? revisionId;
  /// Gets or sets target base model.
  final String? targetBaseModel;

  /// Creates a new [GetInferenceGroupDeltaModelsStatusAsyncResult].
  /// [actualInstanceCount] Gets or sets actual instance count.
  /// [deltaModels] Gets or sets dictionary representing modelID and its current state.
  /// [expectedInstanceCount] Gets or sets expected instance count.
  /// [revisionId] Gets or sets revision ID.
  /// [targetBaseModel] Gets or sets target base model.
  GetInferenceGroupDeltaModelsStatusAsyncResult({
    this.actualInstanceCount,
    this.deltaModels,
    this.expectedInstanceCount,
    this.revisionId,
    this.targetBaseModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualInstanceCount': ?actualInstanceCount,
      'deltaModels': ?deltaModels == null ? null : pulumi.Input.encodeMapValues<List<DeltaModelCurrentStateResponse>, List<Map<String, dynamic>>>(deltaModels!, (value) => pulumi.Input.encodeList<DeltaModelCurrentStateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expectedInstanceCount': ?expectedInstanceCount,
      'revisionId': ?revisionId,
      'targetBaseModel': ?targetBaseModel,
    };
  }

  factory GetInferenceGroupDeltaModelsStatusAsyncResult.fromMap(Map<String, dynamic> map) {
    return GetInferenceGroupDeltaModelsStatusAsyncResult(
      actualInstanceCount: map['actualInstanceCount'] == null ? null : map['actualInstanceCount']! as int,
      deltaModels: map['deltaModels'] == null ? null : pulumi.Input.decodeMapValues<List<DeltaModelCurrentStateResponse>>(map['deltaModels']!, (value) => pulumi.Input.decodeList<DeltaModelCurrentStateResponse>(value, (value) => DeltaModelCurrentStateResponse.fromMap((value as Map).cast<String, dynamic>()))),
      expectedInstanceCount: map['expectedInstanceCount'] == null ? null : map['expectedInstanceCount']! as int,
      revisionId: map['revisionId'] == null ? null : map['revisionId']! as String,
      targetBaseModel: map['targetBaseModel'] == null ? null : map['targetBaseModel']! as String,
    );
  }
}

