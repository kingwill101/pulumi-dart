// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CheckConfigSelectedCheck {
  /// The ID of the check item.
  final pulumi.Input<int>? checkId;

  /// The section ID of the check item.
  final pulumi.Input<int>? sectionId;

  /// Creates a new [CheckConfigSelectedCheck].
  /// [checkId] The ID of the check item.
  /// [sectionId] The section ID of the check item.
  CheckConfigSelectedCheck({this.checkId, this.sectionId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'checkId': ?checkId, 'sectionId': ?sectionId};
  }

  factory CheckConfigSelectedCheck.fromMap(Map<String, dynamic> map) {
    return CheckConfigSelectedCheck(
      checkId: (() {
        final guardedValue = map['checkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sectionId: (() {
        final guardedValue = map['sectionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
