// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_settings.dart';

/// CreateUpdateOptions are a list of key-value pairs that describe the resource. Supported keys are "If-Match", "If-None-Match", "Session-Token" and "Throughput"
class CreateUpdateOptions {
  /// Specifies the Autoscale settings. Note: Either throughput or autoscaleSettings is required, but not both.
  final pulumi.Input<AutoscaleSettings>? autoscaleSettings;
  /// Request Units per second. For example, "throughput": 10000.
  final pulumi.Input<int>? throughput;

  /// Creates a new [CreateUpdateOptions].
  /// [autoscaleSettings] Specifies the Autoscale settings. Note: Either throughput or autoscaleSettings is required, but not both.
  /// [throughput] Request Units per second. For example, "throughput": 10000.
  CreateUpdateOptions({
    this.autoscaleSettings,
    this.throughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<AutoscaleSettings, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'throughput': ?throughput,
    };
  }

  factory CreateUpdateOptions.fromMap(Map<String, dynamic> map) {
    return CreateUpdateOptions(
      autoscaleSettings: map['autoscaleSettings'] == null ? null : (AutoscaleSettings.fromMap((map['autoscaleSettings'] as Map).cast<String, dynamic>())).input(),
      throughput: map['throughput'] == null ? null : (map['throughput'] as int).input(),
    );
  }
}

