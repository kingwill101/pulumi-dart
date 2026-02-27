// ignore_for_file: unused_element, unnecessary_cast

class GetDomainSnapshotOptionOpensearch {
  /// Hour during which the service takes an automated daily snapshot of the indices in the domain.
  final int automatedSnapshotStartHour;

  GetDomainSnapshotOptionOpensearch({
    required this.automatedSnapshotStartHour,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automatedSnapshotStartHour'] = automatedSnapshotStartHour;
    return map;
  }

  factory GetDomainSnapshotOptionOpensearch.fromMap(Map<String, dynamic> map) {
    return GetDomainSnapshotOptionOpensearch(
      automatedSnapshotStartHour: map['automatedSnapshotStartHour'] as int,
    );
  }
}
