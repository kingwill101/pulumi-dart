// ignore_for_file: unused_element, unnecessary_cast

import '../reference_list_scope_info_reference_list_scope/reference_list_scope_info_reference_list_scope.dart';

class ReferenceListScopeInfo {
  /// ReferenceListScope specifies the list of scope names of the reference list.
  /// Structure is documented below.
  final ReferenceListScopeInfoReferenceListScope? referenceListScope;

  ReferenceListScopeInfo({
    this.referenceListScope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final referenceListScopeValue = referenceListScope;
    if (referenceListScopeValue != null) {
      map['referenceListScope'] = referenceListScopeValue.toMap();
    }
    return map;
  }

  factory ReferenceListScopeInfo.fromMap(Map<String, dynamic> map) {
    return ReferenceListScopeInfo(
      referenceListScope: map['referenceListScope'] == null
          ? null
          : ReferenceListScopeInfoReferenceListScope.fromMap(
              (map['referenceListScope'] as Map).cast<String, dynamic>()),
    );
  }
}
