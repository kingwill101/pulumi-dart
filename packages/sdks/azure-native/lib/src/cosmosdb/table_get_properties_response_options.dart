// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_settings_response.dart';

class TableGetPropertiesResponseOptions {
  /// Specifies the Autoscale settings.
  final pulumi.Input<AutoscaleSettingsResponse>? autoscaleSettings;
  /// Value of the Cosmos DB resource throughput or autoscaleSettings. Use the ThroughputSetting resource when retrieving offer details.
  final pulumi.Input<int>? throughput;

  /// Creates a new [TableGetPropertiesResponseOptions].
  /// [autoscaleSettings] Specifies the Autoscale settings.
  /// [throughput] Value of the Cosmos DB resource throughput or autoscaleSettings. Use the ThroughputSetting resource when retrieving offer details.
  TableGetPropertiesResponseOptions({
    this.autoscaleSettings,
    this.throughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<AutoscaleSettingsResponse, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'throughput': ?throughput,
    };
  }

  factory TableGetPropertiesResponseOptions.fromMap(Map<String, dynamic> map) {
    return TableGetPropertiesResponseOptions(
      autoscaleSettings: map['autoscaleSettings'] == null ? null : (AutoscaleSettingsResponse.fromMap((map['autoscaleSettings']! as Map).cast<String, dynamic>())).input(),
      throughput: map['throughput'] == null ? null : (map['throughput']! as int).input(),
    );
  }
}

