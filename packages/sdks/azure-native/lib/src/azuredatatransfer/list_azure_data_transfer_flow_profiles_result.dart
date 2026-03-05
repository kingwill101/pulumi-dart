// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_profile_metadata_response.dart';

/// Result data returned by listAzureDataTransferFlowProfiles.
class ListAzureDataTransferFlowProfilesResult {
  /// FlowProfileMetadata array.
  final List<FlowProfileMetadataResponse>? value;

  /// Creates a new [ListAzureDataTransferFlowProfilesResult].
  /// [value] FlowProfileMetadata array.
  ListAzureDataTransferFlowProfilesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<FlowProfileMetadataResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListAzureDataTransferFlowProfilesResult.fromMap(Map<String, dynamic> map) {
    return ListAzureDataTransferFlowProfilesResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowProfileMetadataResponse>(guardedValue, (value) => FlowProfileMetadataResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

