// ignore_for_file: unused_element, unnecessary_cast


class KxClusterTickerplantLogConfiguration {
  final List<String> tickerplantLogVolumes;

  /// Creates a new [KxClusterTickerplantLogConfiguration].
  /// [tickerplantLogVolumes] Required.
  KxClusterTickerplantLogConfiguration({
    required this.tickerplantLogVolumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tickerplantLogVolumes': tickerplantLogVolumes,
    };
  }

  factory KxClusterTickerplantLogConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterTickerplantLogConfiguration(
      tickerplantLogVolumes: (map['tickerplantLogVolumes'] as List).cast<String>(),
    );
  }
}

