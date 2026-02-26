// ignore_for_file: unused_element, unnecessary_cast

class WatchlistEntityCount {
  /// (Output)
  /// Output only. Count of asset type entities in the watchlist.
  final int? asset;

  /// (Output)
  /// Output only. Count of user type entities in the watchlist.
  final int? user;

  WatchlistEntityCount({
    this.asset,
    this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assetValue = asset;
    if (assetValue != null) {
      map['asset'] = assetValue;
    }
    final userValue = user;
    if (userValue != null) {
      map['user'] = userValue;
    }
    return map;
  }

  factory WatchlistEntityCount.fromMap(Map<String, dynamic> map) {
    return WatchlistEntityCount(
      asset: map['asset'] == null ? null : map['asset'] as int,
      user: map['user'] == null ? null : map['user'] as int,
    );
  }
}
