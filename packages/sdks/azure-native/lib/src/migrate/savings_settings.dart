// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Savings settings class.
class SavingsSettings {
  /// Gets or sets the Azure offer code.
  final pulumi.Input<String>? azureOfferCode;
  /// Gets or sets the savings options.
  final pulumi.Input<String>? savingsOptions;

  /// Creates a new [SavingsSettings].
  /// [azureOfferCode] Gets or sets the Azure offer code.
  /// [savingsOptions] Gets or sets the savings options.
  const SavingsSettings({
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
      azureOfferCode: (() { final guardedValue = map['azureOfferCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      savingsOptions: (() { final guardedValue = map['savingsOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
