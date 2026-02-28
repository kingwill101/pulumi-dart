// ignore_for_file: unused_element, unnecessary_cast

class AppHostingTrafficCurrentSplit {
  /// The build that traffic is being routed to.
  final String? build;

  /// The percentage of traffic to send to the build. Currently must be 100 or 0.
  final int? percent;

  /// Creates a new [AppHostingTrafficCurrentSplit].
  /// [build] The build that traffic is being routed to.
  /// [percent] The percentage of traffic to send to the build. Currently must be 100 or 0.
  AppHostingTrafficCurrentSplit({
    this.build,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buildValue = build;
    if (buildValue != null) {
      map['build'] = buildValue;
    }
    final percentValue = percent;
    if (percentValue != null) {
      map['percent'] = percentValue;
    }
    return map;
  }

  factory AppHostingTrafficCurrentSplit.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficCurrentSplit(
      build: map['build'] == null ? null : map['build'] as String,
      percent: map['percent'] == null ? null : map['percent'] as int,
    );
  }
}
