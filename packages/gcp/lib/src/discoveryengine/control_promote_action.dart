// ignore_for_file: unused_element, unnecessary_cast

import 'control_promote_action_search_link_promotion.dart';

class ControlPromoteAction {
  /// The data store to promote.
  final String dataStore;

  /// The search link promotion to apply to the search results.
  /// Structure is documented below.
  final ControlPromoteActionSearchLinkPromotion searchLinkPromotion;

  /// Creates a new [ControlPromoteAction].
  /// [dataStore] The data store to promote.
  /// [searchLinkPromotion] The search link promotion to apply to the search results.
  ControlPromoteAction({
    required this.dataStore,
    required this.searchLinkPromotion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStore': dataStore,
      'searchLinkPromotion': searchLinkPromotion.toMap(),
    };
  }

  factory ControlPromoteAction.fromMap(Map<String, dynamic> map) {
    return ControlPromoteAction(
      dataStore: map['dataStore'] as String,
      searchLinkPromotion: ControlPromoteActionSearchLinkPromotion.fromMap(
        (map['searchLinkPromotion'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
