// ignore_for_file: unused_element, unnecessary_cast


/// Savings settings class.
class SavingsSettingsResponse {
  /// Gets or sets the Azure offer code.
  final String? azureOfferCode;
  /// Gets or sets the savings options.
  final String? savingsOptions;

  /// Creates a new [SavingsSettingsResponse].
  /// [azureOfferCode] Gets or sets the Azure offer code.
  /// [savingsOptions] Gets or sets the savings options.
  SavingsSettingsResponse({
    this.azureOfferCode,
    this.savingsOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureOfferCode': ?azureOfferCode,
      'savingsOptions': ?savingsOptions,
    };
  }

  factory SavingsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SavingsSettingsResponse(
      azureOfferCode: map['azureOfferCode'] == null ? null : map['azureOfferCode'] as String,
      savingsOptions: map['savingsOptions'] == null ? null : map['savingsOptions'] as String,
    );
  }
}

