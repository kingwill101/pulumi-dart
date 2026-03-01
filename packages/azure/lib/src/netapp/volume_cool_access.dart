// ignore_for_file: unused_element, unnecessary_cast


class VolumeCoolAccess {
  /// The coolness period in days for the volume. Possible vales are between `2` and `183`.
  final int coolnessPeriodInDays;
  /// The cool access retrieval policy for the volume. Possible values are `Default`, `Never` and `OnRead`.
  final String retrievalPolicy;
  /// The cool access tiering policy for the volume. Possible values are `Auto` and `SnapshotOnly`.
  final String tieringPolicy;

  /// Creates a new [VolumeCoolAccess].
  /// [coolnessPeriodInDays] The coolness period in days for the volume. Possible vales are between `2` and `183`.
  /// [retrievalPolicy] The cool access retrieval policy for the volume. Possible values are `Default`, `Never` and `OnRead`.
  /// [tieringPolicy] The cool access tiering policy for the volume. Possible values are `Auto` and `SnapshotOnly`.
  VolumeCoolAccess({
    required this.coolnessPeriodInDays,
    required this.retrievalPolicy,
    required this.tieringPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coolnessPeriodInDays': coolnessPeriodInDays,
      'retrievalPolicy': retrievalPolicy,
      'tieringPolicy': tieringPolicy,
    };
  }

  factory VolumeCoolAccess.fromMap(Map<String, dynamic> map) {
    return VolumeCoolAccess(
      coolnessPeriodInDays: map['coolnessPeriodInDays'] as int,
      retrievalPolicy: map['retrievalPolicy'] as String,
      tieringPolicy: map['tieringPolicy'] as String,
    );
  }
}

