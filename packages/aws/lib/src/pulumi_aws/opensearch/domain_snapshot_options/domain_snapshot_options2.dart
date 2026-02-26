// ignore_for_file: unused_element, unnecessary_cast

class DomainSnapshotOptions2 {
  /// Hour during which the service takes an automated daily snapshot of the indices in the domain.
  final int automatedSnapshotStartHour;

  DomainSnapshotOptions2({
    required this.automatedSnapshotStartHour,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automatedSnapshotStartHour'] = automatedSnapshotStartHour;
    return map;
  }

  factory DomainSnapshotOptions2.fromMap(Map<String, dynamic> map) {
    return DomainSnapshotOptions2(
      automatedSnapshotStartHour: map['automatedSnapshotStartHour'] as int,
    );
  }
}
