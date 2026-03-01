// ignore_for_file: unused_element, unnecessary_cast


class SasTrailServiceTrail {
  /// Service tracking on status. The value is:
  /// - **on:** Open
  /// - **off:** off.
  final String? config;
  /// The timestamp of the last service update. Unit: milliseconds.
  final int? updateTime;

  /// Creates a new [SasTrailServiceTrail].
  /// [config] Service tracking on status. The value is:
  /// [updateTime] The timestamp of the last service update. Unit: milliseconds.
  SasTrailServiceTrail({
    this.config,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'updateTime': ?updateTime,
    };
  }

  factory SasTrailServiceTrail.fromMap(Map<String, dynamic> map) {
    return SasTrailServiceTrail(
      config: map['config'] == null ? null : map['config'] as String,
      updateTime: map['updateTime'] == null ? null : map['updateTime'] as int,
    );
  }
}

