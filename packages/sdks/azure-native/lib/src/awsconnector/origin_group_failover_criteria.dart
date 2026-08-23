// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_codes.dart';

/// Definition of OriginGroupFailoverCriteria
class OriginGroupFailoverCriteria {
  /// The status codes that, when returned from the primary origin, will trigger CloudFront to failover to the second origin. A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.
  final pulumi.Input<StatusCodes>? statusCodes;

  /// Creates a new [OriginGroupFailoverCriteria].
  /// [statusCodes] The status codes that, when returned from the primary origin, will trigger CloudFront to failover to the second origin. A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.
  const OriginGroupFailoverCriteria({
    this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCodes': ?pulumi.Input.mapOptionalInputValue<StatusCodes, Map<String, dynamic>>(statusCodes, (value) => value.toMap()),
    };
  }

  factory OriginGroupFailoverCriteria.fromMap(Map<String, dynamic> map) {
    return OriginGroupFailoverCriteria(
      statusCodes: (() { final guardedValue = map['statusCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatusCodes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
