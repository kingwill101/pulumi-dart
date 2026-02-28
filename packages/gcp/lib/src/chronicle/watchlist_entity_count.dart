// ignore_for_file: unused_element, unnecessary_cast


class WatchlistEntityCount {
  /// (Output)
  /// Output only. Count of asset type entities in the watchlist.
  final int? asset;
  /// (Output)
  /// Output only. Count of user type entities in the watchlist.
  final int? user;

  /// Creates a new [WatchlistEntityCount].
  /// [asset] (Output)
  /// [user] (Output)
  WatchlistEntityCount({
    this.asset,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asset': ?asset,
      'user': ?user,
    };
  }

  factory WatchlistEntityCount.fromMap(Map<String, dynamic> map) {
    return WatchlistEntityCount(
      asset: map['asset'] == null ? null : map['asset'] as int,
      user: map['user'] == null ? null : map['user'] as int,
    );
  }
}

