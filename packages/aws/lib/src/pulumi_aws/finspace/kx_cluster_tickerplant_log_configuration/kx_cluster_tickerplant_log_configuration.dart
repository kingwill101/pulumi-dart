// ignore_for_file: unused_element, unnecessary_cast

class KxClusterTickerplantLogConfiguration {
  final List<String> tickerplantLogVolumes;

  KxClusterTickerplantLogConfiguration({
    required this.tickerplantLogVolumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tickerplantLogVolumes'] = tickerplantLogVolumes;
    return map;
  }

  factory KxClusterTickerplantLogConfiguration.fromMap(
      Map<String, dynamic> map) {
    return KxClusterTickerplantLogConfiguration(
      tickerplantLogVolumes:
          (map['tickerplantLogVolumes'] as List).cast<String>(),
    );
  }
}
