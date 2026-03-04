// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_reference_definition_response.dart';

/// Properties for HelmRelease objects
class HelmReleasePropertiesDefinitionResponse {
  /// Total number of times that the HelmRelease failed to install or upgrade
  final pulumi.Input<double>? failureCount;

  /// The reference to the HelmChart object used as the source to this HelmRelease
  final pulumi.Input<ObjectReferenceDefinitionResponse>? helmChartRef;

  /// Number of times that the HelmRelease failed to install
  final pulumi.Input<double>? installFailureCount;

  /// The revision number of the last released object change
  final pulumi.Input<double>? lastRevisionApplied;

  /// Number of times that the HelmRelease failed to upgrade
  final pulumi.Input<double>? upgradeFailureCount;

  /// Creates a new [HelmReleasePropertiesDefinitionResponse].
  /// [failureCount] Total number of times that the HelmRelease failed to install or upgrade
  /// [helmChartRef] The reference to the HelmChart object used as the source to this HelmRelease
  /// [installFailureCount] Number of times that the HelmRelease failed to install
  /// [lastRevisionApplied] The revision number of the last released object change
  /// [upgradeFailureCount] Number of times that the HelmRelease failed to upgrade
  HelmReleasePropertiesDefinitionResponse({
    this.failureCount,
    this.helmChartRef,
    this.installFailureCount,
    this.lastRevisionApplied,
    this.upgradeFailureCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureCount': ?failureCount,
      'helmChartRef':
          ?pulumi.Input.mapOptionalInputValue<
            ObjectReferenceDefinitionResponse,
            Map<String, dynamic>
          >(helmChartRef, (value) => value.toMap()),
      'installFailureCount': ?installFailureCount,
      'lastRevisionApplied': ?lastRevisionApplied,
      'upgradeFailureCount': ?upgradeFailureCount,
    };
  }

  factory HelmReleasePropertiesDefinitionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return HelmReleasePropertiesDefinitionResponse(
      failureCount: (() {
        final guardedValue = map['failureCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      helmChartRef: (() {
        final guardedValue = map['helmChartRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectReferenceDefinitionResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      installFailureCount: (() {
        final guardedValue = map['installFailureCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      lastRevisionApplied: (() {
        final guardedValue = map['lastRevisionApplied'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      upgradeFailureCount: (() {
        final guardedValue = map['upgradeFailureCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
