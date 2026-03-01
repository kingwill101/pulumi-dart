// ignore_for_file: unused_element, unnecessary_cast


class AutoscaleSettings {
  /// Represents maximum throughput, the resource can scale up to.
  final int? maxThroughput;

  /// Creates a new [AutoscaleSettings].
  /// [maxThroughput] Represents maximum throughput, the resource can scale up to.
  AutoscaleSettings({
    this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
    };
  }

  factory AutoscaleSettings.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettings(
      maxThroughput: map['maxThroughput'] == null ? null : map['maxThroughput'] as int,
    );
  }
}

