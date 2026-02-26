// ignore_for_file: unused_element, unnecessary_cast

import 'basic_sli_response.dart';
import 'request_based_sli_response.dart';
import 'windows_based_sli_response.dart';

/// A Service-Level Indicator (SLI) describes the "performance" of a service. For some services, the SLI is well-defined. In such cases, the SLI can be described easily by referencing the well-known SLI and providing the needed parameters. Alternatively, a "custom" SLI can be defined with a query to the underlying metric store. An SLI is defined to be good_service / total_service over any queried time interval. The value of performance always falls into the range 0 <= performance <= 1. A custom SLI describes how to compute this ratio, whether this is by dividing values from a pair of time series, cutting a Distribution into good and bad counts, or counting time windows in which the service complies with a criterion. For separation of concerns, a single Service-Level Indicator measures performance for only one aspect of service quality, such as fraction of successful queries or fast-enough queries.
class ServiceLevelIndicatorResponse {
  /// Basic SLI on a well-known service type.
  final BasicSliResponse basicSli;

  /// Request-based SLIs
  final RequestBasedSliResponse requestBased;

  /// Windows-based SLIs
  final WindowsBasedSliResponse windowsBased;

  ServiceLevelIndicatorResponse({
    required this.basicSli,
    required this.requestBased,
    required this.windowsBased,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['basicSli'] = basicSli.toMap();
    map['requestBased'] = requestBased.toMap();
    map['windowsBased'] = windowsBased.toMap();
    return map;
  }

  factory ServiceLevelIndicatorResponse.fromMap(Map<String, dynamic> map) {
    return ServiceLevelIndicatorResponse(
      basicSli: BasicSliResponse.fromMap(
          (map['basicSli'] as Map).cast<String, dynamic>()),
      requestBased: RequestBasedSliResponse.fromMap(
          (map['requestBased'] as Map).cast<String, dynamic>()),
      windowsBased: WindowsBasedSliResponse.fromMap(
          (map['windowsBased'] as Map).cast<String, dynamic>()),
    );
  }
}
