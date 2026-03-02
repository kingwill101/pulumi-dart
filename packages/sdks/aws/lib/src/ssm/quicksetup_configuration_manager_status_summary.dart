// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QuicksetupConfigurationManagerStatusSummary {
  /// Current status.
  final pulumi.Input<String> status;
  /// When applicable, returns an informational message relevant to the current status and status type of the status summary object.
  final pulumi.Input<String> statusMessage;
  /// Type of a status summary.
  final pulumi.Input<String> statusType;

  /// Creates a new [QuicksetupConfigurationManagerStatusSummary].
  /// [status] Current status.
  /// [statusMessage] When applicable, returns an informational message relevant to the current status and status type of the status summary object.
  /// [statusType] Type of a status summary.
  QuicksetupConfigurationManagerStatusSummary({
    required this.status,
    required this.statusMessage,
    required this.statusType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'statusMessage': statusMessage,
      'statusType': statusType,
    };
  }

  factory QuicksetupConfigurationManagerStatusSummary.fromMap(Map<String, dynamic> map) {
    return QuicksetupConfigurationManagerStatusSummary(
      status: (map['status'] as String).input(),
      statusMessage: (map['statusMessage'] as String).input(),
      statusType: (map['statusType'] as String).input(),
    );
  }
}

