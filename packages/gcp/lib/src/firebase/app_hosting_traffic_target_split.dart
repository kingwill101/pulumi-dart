// ignore_for_file: unused_element, unnecessary_cast

class AppHostingTrafficTargetSplit {
  /// The build that traffic is being routed to.
  final String build;

  /// The percentage of traffic to send to the build. Currently must be 100 or 0.
  final int percent;

  /// Creates a new [AppHostingTrafficTargetSplit].
  /// [build] The build that traffic is being routed to.
  /// [percent] The percentage of traffic to send to the build. Currently must be 100 or 0.
  AppHostingTrafficTargetSplit({
    required this.build,
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['build'] = build;
    map['percent'] = percent;
    return map;
  }

  factory AppHostingTrafficTargetSplit.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficTargetSplit(
      build: map['build'] as String,
      percent: map['percent'] as int,
    );
  }
}
