// ignore_for_file: unused_element, unnecessary_cast

class DomainSnapshotOptions {
  /// Hour during which the service takes an automated daily snapshot of the indices in the domain.
  final int automatedSnapshotStartHour;

  DomainSnapshotOptions({
    required this.automatedSnapshotStartHour,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automatedSnapshotStartHour'] = automatedSnapshotStartHour;
    return map;
  }

  factory DomainSnapshotOptions.fromMap(Map<String, dynamic> map) {
    return DomainSnapshotOptions(
      automatedSnapshotStartHour: map['automatedSnapshotStartHour'] as int,
    );
  }
}
