// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Contains read-only information about the Agent Pool.
class AgentPoolStatusResponse {
  /// The error detail information of the agent pool. Preserves the detailed info of failure. If there was no error, this field is omitted.
  final pulumi.Input<ErrorDetailResponse> provisioningError;

  /// Creates a new [AgentPoolStatusResponse].
  /// [provisioningError] The error detail information of the agent pool. Preserves the detailed info of failure. If there was no error, this field is omitted.
  AgentPoolStatusResponse({
    required this.provisioningError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningError': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(provisioningError, (value) => value.toMap()),
    };
  }

  factory AgentPoolStatusResponse.fromMap(Map<String, dynamic> map) {
    return AgentPoolStatusResponse(
      provisioningError: (ErrorDetailResponse.fromMap((map['provisioningError'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

