// ignore_for_file: unused_element, unnecessary_cast

class DomainSnapshotOptionsOpensearch {
  /// Hour during which the service takes an automated daily snapshot of the indices in the domain.
  final int automatedSnapshotStartHour;

  DomainSnapshotOptionsOpensearch({
    required this.automatedSnapshotStartHour,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automatedSnapshotStartHour'] = automatedSnapshotStartHour;
    return map;
  }

  factory DomainSnapshotOptionsOpensearch.fromMap(Map<String, dynamic> map) {
    return DomainSnapshotOptionsOpensearch(
      automatedSnapshotStartHour: map['automatedSnapshotStartHour'] as int,
    );
  }
}
