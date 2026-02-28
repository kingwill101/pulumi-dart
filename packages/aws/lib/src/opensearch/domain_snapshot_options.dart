// ignore_for_file: unused_element, unnecessary_cast


class DomainSnapshotOptions {
  /// Hour during which the service takes an automated daily snapshot of the indices in the domain.
  final int automatedSnapshotStartHour;

  /// Creates a new [DomainSnapshotOptions].
  /// [automatedSnapshotStartHour] Hour during which the service takes an automated daily snapshot of the indices in the domain.
  DomainSnapshotOptions({
    required this.automatedSnapshotStartHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatedSnapshotStartHour': automatedSnapshotStartHour,
    };
  }

  factory DomainSnapshotOptions.fromMap(Map<String, dynamic> map) {
    return DomainSnapshotOptions(
      automatedSnapshotStartHour: map['automatedSnapshotStartHour'] as int,
    );
  }
}

