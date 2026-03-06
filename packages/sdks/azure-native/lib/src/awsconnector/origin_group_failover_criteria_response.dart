// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_codes_response.dart';

/// Definition of OriginGroupFailoverCriteria
class OriginGroupFailoverCriteriaResponse {
  /// The status codes that, when returned from the primary origin, will trigger CloudFront to failover to the second origin. A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.
  final pulumi.Input<StatusCodesResponse>? statusCodes;

  /// Creates a new [OriginGroupFailoverCriteriaResponse].
  /// [statusCodes] The status codes that, when returned from the primary origin, will trigger CloudFront to failover to the second origin. A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.
  const OriginGroupFailoverCriteriaResponse({
    this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCodes': ?pulumi.Input.mapOptionalInputValue<StatusCodesResponse, Map<String, dynamic>>(statusCodes, (value) => value.toMap()),
    };
  }

  factory OriginGroupFailoverCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return OriginGroupFailoverCriteriaResponse(
      statusCodes: (() { final guardedValue = map['statusCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatusCodesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

