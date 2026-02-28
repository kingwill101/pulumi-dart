// ignore_for_file: unused_element, unnecessary_cast

class WatchlistWatchlistUserPreferences {
  /// Optional. Whether the watchlist is pinned on the dashboard.
  final bool? pinned;

  /// Creates a new [WatchlistWatchlistUserPreferences].
  /// [pinned] Optional. Whether the watchlist is pinned on the dashboard.
  WatchlistWatchlistUserPreferences({
    this.pinned,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pinnedValue = pinned;
    if (pinnedValue != null) {
      map['pinned'] = pinnedValue;
    }
    return map;
  }

  factory WatchlistWatchlistUserPreferences.fromMap(Map<String, dynamic> map) {
    return WatchlistWatchlistUserPreferences(
      pinned: map['pinned'] == null ? null : map['pinned'] as bool,
    );
  }
}
