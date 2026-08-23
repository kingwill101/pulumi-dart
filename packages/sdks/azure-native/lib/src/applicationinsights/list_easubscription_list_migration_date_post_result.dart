// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listEASubscriptionListMigrationDatePost.
class ListEASubscriptionListMigrationDatePostResult {
  /// Is subscription in the grand fatherable subscription list.
  final bool? isGrandFatherableSubscription;
  /// Time to start using new pricing model.
  final String? optedInDate;

  /// Creates a new [ListEASubscriptionListMigrationDatePostResult].
  /// [isGrandFatherableSubscription] Is subscription in the grand fatherable subscription list.
  /// [optedInDate] Time to start using new pricing model.
  const ListEASubscriptionListMigrationDatePostResult({
    this.isGrandFatherableSubscription,
    this.optedInDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isGrandFatherableSubscription': ?isGrandFatherableSubscription,
      'optedInDate': ?optedInDate,
    };
  }

  factory ListEASubscriptionListMigrationDatePostResult.fromMap(Map<String, dynamic> map) {
    return ListEASubscriptionListMigrationDatePostResult(
      isGrandFatherableSubscription: (() { final guardedValue = map['isGrandFatherableSubscription']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      optedInDate: (() { final guardedValue = map['optedInDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
