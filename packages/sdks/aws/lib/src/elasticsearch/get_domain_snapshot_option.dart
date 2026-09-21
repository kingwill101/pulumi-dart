// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainSnapshotOption {
  /// Hour during which the service takes an automated daily snapshot of the indices in the domain.
  final pulumi.Input<int> automatedSnapshotStartHour;

  /// Creates a new [GetDomainSnapshotOption].
  /// [automatedSnapshotStartHour] Hour during which the service takes an automated daily snapshot of the indices in the domain.
  const GetDomainSnapshotOption({
    required this.automatedSnapshotStartHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatedSnapshotStartHour': automatedSnapshotStartHour,
    };
  }

  factory GetDomainSnapshotOption.fromMap(Map<String, dynamic> map) {
    return GetDomainSnapshotOption(
      automatedSnapshotStartHour: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['automatedSnapshotStartHour'])),
    );
  }
}
