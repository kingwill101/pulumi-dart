// ignore_for_file: unused_element, unnecessary_cast


class PoolRefreshVolume {
  /// Defines how allocation amounts are calculated during the refresh operation for the volume.
  final String allocation;

  /// Creates a new [PoolRefreshVolume].
  /// [allocation] Defines how allocation amounts are calculated during the refresh operation for the volume.
  PoolRefreshVolume({
    required this.allocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': allocation,
    };
  }

  factory PoolRefreshVolume.fromMap(Map<String, dynamic> map) {
    return PoolRefreshVolume(
      allocation: map['allocation'] as String,
    );
  }
}

