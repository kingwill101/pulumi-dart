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
  const GetInferenceGroupDeltaModelsStatusAsyncResult({
    this.actualInstanceCount,
    this.deltaModels,
    this.expectedInstanceCount,
    this.revisionId,
    this.targetBaseModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualInstanceCount': ?actualInstanceCount,
      'deltaModels': ?(() { final guardedValue = deltaModels; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<List<DeltaModelCurrentStateResponse>, List<Map<String, dynamic>>>(guardedValue, (value) => pulumi.Input.encodeList<DeltaModelCurrentStateResponse, Map<String, dynamic>>(value, (value) => value.toMap())); })(),
      'expectedInstanceCount': ?expectedInstanceCount,
      'revisionId': ?revisionId,
      'targetBaseModel': ?targetBaseModel,
    };
  }

  factory GetInferenceGroupDeltaModelsStatusAsyncResult.fromMap(Map<String, dynamic> map) {
    return GetInferenceGroupDeltaModelsStatusAsyncResult(
      actualInstanceCount: (() { final guardedValue = map['actualInstanceCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      deltaModels: (() { final guardedValue = map['deltaModels']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<DeltaModelCurrentStateResponse>>(guardedValue, (value) => pulumi.Input.decodeList<DeltaModelCurrentStateResponse>(value, (value) => DeltaModelCurrentStateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      expectedInstanceCount: (() { final guardedValue = map['expectedInstanceCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetBaseModel: (() { final guardedValue = map['targetBaseModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

