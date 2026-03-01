// ignore_for_file: unused_element, unnecessary_cast


/// Billing settings class.
class BillingSettingsResponse {
  /// Gets or sets the licensing program.
  final String? licensingProgram;
  /// Gets or sets the subscription ID for licensing program selected.
  final String? subscriptionId;

  /// Creates a new [BillingSettingsResponse].
  /// [licensingProgram] Gets or sets the licensing program.
  /// [subscriptionId] Gets or sets the subscription ID for licensing program selected.
  BillingSettingsResponse({
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
      licensingProgram: map['licensingProgram'] == null ? null : map['licensingProgram'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

