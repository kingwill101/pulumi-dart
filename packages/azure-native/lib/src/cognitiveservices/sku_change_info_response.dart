// ignore_for_file: unused_element, unnecessary_cast


/// Sku change info of account.
class SkuChangeInfoResponse {
  /// Gets the count of downgrades.
  final double? countOfDowngrades;
  /// Gets the count of upgrades after downgrades.
  final double? countOfUpgradesAfterDowngrades;
  /// Gets the last change date.
  final String? lastChangeDate;

  /// Creates a new [SkuChangeInfoResponse].
  /// [countOfDowngrades] Gets the count of downgrades.
  /// [countOfUpgradesAfterDowngrades] Gets the count of upgrades after downgrades.
  /// [lastChangeDate] Gets the last change date.
  SkuChangeInfoResponse({
    this.countOfDowngrades,
    this.countOfUpgradesAfterDowngrades,
    this.lastChangeDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countOfDowngrades': ?countOfDowngrades,
      'countOfUpgradesAfterDowngrades': ?countOfUpgradesAfterDowngrades,
      'lastChangeDate': ?lastChangeDate,
    };
  }

  factory SkuChangeInfoResponse.fromMap(Map<String, dynamic> map) {
    return SkuChangeInfoResponse(
      countOfDowngrades: map['countOfDowngrades'] == null ? null : map['countOfDowngrades'] as double,
      countOfUpgradesAfterDowngrades: map['countOfUpgradesAfterDowngrades'] == null ? null : map['countOfUpgradesAfterDowngrades'] as double,
      lastChangeDate: map['lastChangeDate'] == null ? null : map['lastChangeDate'] as String,
    );
  }
}

