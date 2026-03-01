// ignore_for_file: unused_element, unnecessary_cast


class CheckConfigSelectedCheck {
  /// The ID of the check item.
  final int? checkId;
  /// The section ID of the check item.
  final int? sectionId;

  /// Creates a new [CheckConfigSelectedCheck].
  /// [checkId] The ID of the check item.
  /// [sectionId] The section ID of the check item.
  CheckConfigSelectedCheck({
    this.checkId,
    this.sectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkId': ?checkId,
      'sectionId': ?sectionId,
    };
  }

  factory CheckConfigSelectedCheck.fromMap(Map<String, dynamic> map) {
    return CheckConfigSelectedCheck(
      checkId: map['checkId'] == null ? null : map['checkId'] as int,
      sectionId: map['sectionId'] == null ? null : map['sectionId'] as int,
    );
  }
}

