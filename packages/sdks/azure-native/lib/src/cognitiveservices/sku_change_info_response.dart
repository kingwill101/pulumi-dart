// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sku change info of account.
class SkuChangeInfoResponse {
  /// Gets the count of downgrades.
  final pulumi.Input<double>? countOfDowngrades;
  /// Gets the count of upgrades after downgrades.
  final pulumi.Input<double>? countOfUpgradesAfterDowngrades;
  /// Gets the last change date.
  final pulumi.Input<String>? lastChangeDate;

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
      countOfDowngrades: map['countOfDowngrades'] == null ? null : (map['countOfDowngrades']! as double).input(),
      countOfUpgradesAfterDowngrades: map['countOfUpgradesAfterDowngrades'] == null ? null : (map['countOfUpgradesAfterDowngrades']! as double).input(),
      lastChangeDate: map['lastChangeDate'] == null ? null : (map['lastChangeDate']! as String).input(),
    );
  }
}

