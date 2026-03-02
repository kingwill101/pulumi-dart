// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Billing settings class.
class BillingSettings {
  /// Gets or sets the licensing program.
  final pulumi.Input<String>? licensingProgram;
  /// Gets or sets the subscription ID for licensing program selected.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [BillingSettings].
  /// [licensingProgram] Gets or sets the licensing program.
  /// [subscriptionId] Gets or sets the subscription ID for licensing program selected.
  BillingSettings({
    this.licensingProgram,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licensingProgram': ?licensingProgram,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory BillingSettings.fromMap(Map<String, dynamic> map) {
    return BillingSettings(
      licensingProgram: map['licensingProgram'] == null ? null : (map['licensingProgram']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

