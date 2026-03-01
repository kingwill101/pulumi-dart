// ignore_for_file: unused_element, unnecessary_cast

/// The unique identifier of the update.
class Identity {
  /// The revision number of the update.
  final int? revision;

  /// The revision independent identifier of the update.
  final String? updateId;

  /// Creates a new [Identity].
  /// [revision] The revision number of the update.
  /// [updateId] The revision independent identifier of the update.
  Identity({this.revision, this.updateId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'revision': ?revision, 'updateId': ?updateId};
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      revision: map['revision'] == null ? null : map['revision'] as int,
      updateId: map['updateId'] == null ? null : map['updateId'] as String,
    );
  }
}
