// ignore_for_file: unused_element, unnecessary_cast

import 'reference_list_scope_info_reference_list_scope.dart';

class ReferenceListScopeInfo {
  /// ReferenceListScope specifies the list of scope names of the reference list.
  /// Structure is documented below.
  final ReferenceListScopeInfoReferenceListScope? referenceListScope;

  /// Creates a new [ReferenceListScopeInfo].
  /// [referenceListScope] ReferenceListScope specifies the list of scope names of the reference list.
  ReferenceListScopeInfo({
    this.referenceListScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceListScope': ?referenceListScope == null ? null : referenceListScope!.toMap(),
    };
  }

  factory ReferenceListScopeInfo.fromMap(Map<String, dynamic> map) {
    return ReferenceListScopeInfo(
      referenceListScope: map['referenceListScope'] == null ? null : ReferenceListScopeInfoReferenceListScope.fromMap((map['referenceListScope'] as Map).cast<String, dynamic>()),
    );
  }
}

