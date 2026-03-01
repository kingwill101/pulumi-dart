// ignore_for_file: unused_element, unnecessary_cast

import 'status_codes_response.dart';

/// Definition of OriginGroupFailoverCriteria
class OriginGroupFailoverCriteriaResponse {
  /// The status codes that, when returned from the primary origin, will trigger CloudFront to failover to the second origin. A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.
  final StatusCodesResponse? statusCodes;

  /// Creates a new [OriginGroupFailoverCriteriaResponse].
  /// [statusCodes] The status codes that, when returned from the primary origin, will trigger CloudFront to failover to the second origin. A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.
  OriginGroupFailoverCriteriaResponse({
    this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCodes': ?statusCodes == null ? null : statusCodes!.toMap(),
    };
  }

  factory OriginGroupFailoverCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return OriginGroupFailoverCriteriaResponse(
      statusCodes: map['statusCodes'] == null ? null : StatusCodesResponse.fromMap((map['statusCodes'] as Map).cast<String, dynamic>()),
    );
  }
}

