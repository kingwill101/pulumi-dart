// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_settings_response.dart';

class CassandraViewGetPropertiesResponseOptions {
  /// Specifies the Autoscale settings.
  final pulumi.Input<AutoscaleSettingsResponse?>? autoscaleSettings;
  /// Value of the Cosmos DB resource throughput or autoscaleSettings. Use the ThroughputSetting resource when retrieving offer details.
  final pulumi.Input<int?>? throughput;

  /// Creates a new [CassandraViewGetPropertiesResponseOptions].
  /// [autoscaleSettings] Specifies the Autoscale settings.
  /// [throughput] Value of the Cosmos DB resource throughput or autoscaleSettings. Use the ThroughputSetting resource when retrieving offer details.
  const CassandraViewGetPropertiesResponseOptions({
    this.autoscaleSettings,
    this.throughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<AutoscaleSettingsResponse, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'throughput': ?throughput,
    };
  }

  factory CassandraViewGetPropertiesResponseOptions.fromMap(Map<String, dynamic> map) {
    return CassandraViewGetPropertiesResponseOptions(
      autoscaleSettings: (() { final guardedValue = map['autoscaleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscaleSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
