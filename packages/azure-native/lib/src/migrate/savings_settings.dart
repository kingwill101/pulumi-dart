// ignore_for_file: unused_element, unnecessary_cast


/// Savings settings class.
class SavingsSettings {
  /// Gets or sets the Azure offer code.
  final String? azureOfferCode;
  /// Gets or sets the savings options.
  final String? savingsOptions;

  /// Creates a new [SavingsSettings].
  /// [azureOfferCode] Gets or sets the Azure offer code.
  /// [savingsOptions] Gets or sets the savings options.
  SavingsSettings({
    this.azureOfferCode,
    this.savingsOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureOfferCode': ?azureOfferCode,
      'savingsOptions': ?savingsOptions,
    };
  }

  factory SavingsSettings.fromMap(Map<String, dynamic> map) {
    return SavingsSettings(
      azureOfferCode: map['azureOfferCode'] == null ? null : map['azureOfferCode'] as String,
      savingsOptions: map['savingsOptions'] == null ? null : map['savingsOptions'] as String,
    );
  }
}

