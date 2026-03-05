// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ESU key
class EsuKeyResponse {
  /// The current status of the license profile key. Represented by the same integer value that is presented on the machine itself when querying the license key status.
  final pulumi.Input<int>? licenseStatus;
  /// SKU number.
  final pulumi.Input<String>? sku;

  /// Creates a new [EsuKeyResponse].
  /// [licenseStatus] The current status of the license profile key. Represented by the same integer value that is presented on the machine itself when querying the license key status.
  /// [sku] SKU number.
  EsuKeyResponse({
    this.licenseStatus,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseStatus': ?licenseStatus,
      'sku': ?sku,
    };
  }

  factory EsuKeyResponse.fromMap(Map<String, dynamic> map) {
    return EsuKeyResponse(
      licenseStatus: (() { final guardedValue = map['licenseStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

