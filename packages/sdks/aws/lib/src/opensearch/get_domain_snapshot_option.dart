// ignore_for_file: unused_element, unnecessary_cast


class GetDomainSnapshotOption {
  /// Hour during which the service takes an automated daily snapshot of the indices in the domain.
  final int automatedSnapshotStartHour;

  /// Creates a new [GetDomainSnapshotOption].
  /// [automatedSnapshotStartHour] Hour during which the service takes an automated daily snapshot of the indices in the domain.
  GetDomainSnapshotOption({
    required this.automatedSnapshotStartHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatedSnapshotStartHour': automatedSnapshotStartHour,
    };
  }

  factory GetDomainSnapshotOption.fromMap(Map<String, dynamic> map) {
    return GetDomainSnapshotOption(
      automatedSnapshotStartHour: map['automatedSnapshotStartHour'] as int,
    );
  }
}

