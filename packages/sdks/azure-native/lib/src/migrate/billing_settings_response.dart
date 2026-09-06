// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Billing settings class.
class BillingSettingsResponse {
  /// Gets or sets the licensing program.
  final pulumi.Input<String?>? licensingProgram;
  /// Gets or sets the subscription ID for licensing program selected.
  final pulumi.Input<String?>? subscriptionId;

  /// Creates a new [BillingSettingsResponse].
  /// [licensingProgram] Gets or sets the licensing program.
  /// [subscriptionId] Gets or sets the subscription ID for licensing program selected.
  const BillingSettingsResponse({
    this.licensingProgram,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licensingProgram': ?licensingProgram,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory BillingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return BillingSettingsResponse(
      licensingProgram: (() { final guardedValue = map['licensingProgram']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
