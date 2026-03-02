// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_analytics.dart';

/// Container group diagnostic information.
class ContainerGroupDiagnostics {
  /// Container group log analytics information.
  final pulumi.Input<LogAnalytics>? logAnalytics;

  /// Creates a new [ContainerGroupDiagnostics].
  /// [logAnalytics] Container group log analytics information.
  ContainerGroupDiagnostics({
    this.logAnalytics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalytics': ?pulumi.Input.mapOptionalInputValue<LogAnalytics, Map<String, dynamic>>(logAnalytics, (value) => value.toMap()),
    };
  }

  factory ContainerGroupDiagnostics.fromMap(Map<String, dynamic> map) {
    return ContainerGroupDiagnostics(
      logAnalytics: map['logAnalytics'] == null ? null : (LogAnalytics.fromMap((map['logAnalytics']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

