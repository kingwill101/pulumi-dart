// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Savings settings class.
class SavingsSettingsResponse {
  /// Gets or sets the Azure offer code.
  final pulumi.Input<String>? azureOfferCode;
  /// Gets or sets the savings options.
  final pulumi.Input<String>? savingsOptions;

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
      azureOfferCode: (() { final guardedValue = map['azureOfferCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      savingsOptions: (() { final guardedValue = map['savingsOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

