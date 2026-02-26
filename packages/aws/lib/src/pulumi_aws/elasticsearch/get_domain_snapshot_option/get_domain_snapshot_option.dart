// ignore_for_file: unused_element, unnecessary_cast

class GetDomainSnapshotOption {
  /// Hour during which the service takes an automated daily snapshot of the indices in the domain.
  final int automatedSnapshotStartHour;

  GetDomainSnapshotOption({
    required this.automatedSnapshotStartHour,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automatedSnapshotStartHour'] = automatedSnapshotStartHour;
    return map;
  }

  factory GetDomainSnapshotOption.fromMap(Map<String, dynamic> map) {
    return GetDomainSnapshotOption(
      automatedSnapshotStartHour: map['automatedSnapshotStartHour'] as int,
    );
  }
}
