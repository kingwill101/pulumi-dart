// ignore_for_file: unused_element, unnecessary_cast

class WatchlistWatchlistUserPreferences {
  /// Optional. Whether the watchlist is pinned on the dashboard.
  final bool? pinned;

  /// Creates a new [WatchlistWatchlistUserPreferences].
  /// [pinned] Optional. Whether the watchlist is pinned on the dashboard.
  WatchlistWatchlistUserPreferences({this.pinned});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pinned': ?pinned};
  }

  factory WatchlistWatchlistUserPreferences.fromMap(Map<String, dynamic> map) {
    return WatchlistWatchlistUserPreferences(
      pinned: map['pinned'] == null ? null : map['pinned'] as bool,
    );
  }
}
