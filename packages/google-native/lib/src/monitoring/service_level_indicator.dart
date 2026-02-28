// ignore_for_file: unused_element, unnecessary_cast

import 'basic_sli.dart';
import 'request_based_sli.dart';
import 'windows_based_sli.dart';

/// A Service-Level Indicator (SLI) describes the "performance" of a service. For some services, the SLI is well-defined. In such cases, the SLI can be described easily by referencing the well-known SLI and providing the needed parameters. Alternatively, a "custom" SLI can be defined with a query to the underlying metric store. An SLI is defined to be good_service / total_service over any queried time interval. The value of performance always falls into the range 0 <= performance <= 1. A custom SLI describes how to compute this ratio, whether this is by dividing values from a pair of time series, cutting a Distribution into good and bad counts, or counting time windows in which the service complies with a criterion. For separation of concerns, a single Service-Level Indicator measures performance for only one aspect of service quality, such as fraction of successful queries or fast-enough queries.
class ServiceLevelIndicator {
  /// Basic SLI on a well-known service type.
  final BasicSli? basicSli;

  /// Request-based SLIs
  final RequestBasedSli? requestBased;

  /// Windows-based SLIs
  final WindowsBasedSli? windowsBased;

  /// Creates a new [ServiceLevelIndicator].
  /// [basicSli] Basic SLI on a well-known service type.
  /// [requestBased] Request-based SLIs
  /// [windowsBased] Windows-based SLIs
  ServiceLevelIndicator({
    this.basicSli,
    this.requestBased,
    this.windowsBased,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicSliValue = basicSli;
    if (basicSliValue != null) {
      map['basicSli'] = basicSliValue.toMap();
    }
    final requestBasedValue = requestBased;
    if (requestBasedValue != null) {
      map['requestBased'] = requestBasedValue.toMap();
    }
    final windowsBasedValue = windowsBased;
    if (windowsBasedValue != null) {
      map['windowsBased'] = windowsBasedValue.toMap();
    }
    return map;
  }

  factory ServiceLevelIndicator.fromMap(Map<String, dynamic> map) {
    return ServiceLevelIndicator(
      basicSli: map['basicSli'] == null
          ? null
          : BasicSli.fromMap((map['basicSli'] as Map).cast<String, dynamic>()),
      requestBased: map['requestBased'] == null
          ? null
          : RequestBasedSli.fromMap(
              (map['requestBased'] as Map).cast<String, dynamic>()),
      windowsBased: map['windowsBased'] == null
          ? null
          : WindowsBasedSli.fromMap(
              (map['windowsBased'] as Map).cast<String, dynamic>()),
    );
  }
}
