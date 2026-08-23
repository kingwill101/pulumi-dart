// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxClusterTickerplantLogConfiguration {
  /// Names of the volumes for tickerplant logs.
  final pulumi.Input<List<String>> tickerplantLogVolumes;

  /// Creates a new [KxClusterTickerplantLogConfiguration].
  /// [tickerplantLogVolumes] Names of the volumes for tickerplant logs.
  const KxClusterTickerplantLogConfiguration({
    required this.tickerplantLogVolumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tickerplantLogVolumes': tickerplantLogVolumes,
    };
  }

  factory KxClusterTickerplantLogConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterTickerplantLogConfiguration(
      tickerplantLogVolumes: pulumi.Input.fromValue((map['tickerplantLogVolumes'] as List).cast<String>()),
    );
  }
}
