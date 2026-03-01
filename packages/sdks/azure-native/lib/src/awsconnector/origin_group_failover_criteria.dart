// ignore_for_file: unused_element, unnecessary_cast

import 'status_codes.dart';

/// Definition of OriginGroupFailoverCriteria
class OriginGroupFailoverCriteria {
  /// The status codes that, when returned from the primary origin, will trigger CloudFront to failover to the second origin. A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.
  final StatusCodes? statusCodes;

  /// Creates a new [OriginGroupFailoverCriteria].
  /// [statusCodes] The status codes that, when returned from the primary origin, will trigger CloudFront to failover to the second origin. A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.
  OriginGroupFailoverCriteria({
    this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCodes': ?statusCodes == null ? null : statusCodes!.toMap(),
    };
  }

  factory OriginGroupFailoverCriteria.fromMap(Map<String, dynamic> map) {
    return OriginGroupFailoverCriteria(
      statusCodes: map['statusCodes'] == null ? null : StatusCodes.fromMap((map['statusCodes'] as Map).cast<String, dynamic>()),
    );
  }
}

