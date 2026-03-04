// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The estimated price info for using a VM of a particular OS type, tier, etc.
class EstimatedVMPriceResponse {
  /// Operating system type used by the VM.
  final pulumi.Input<String> osType;

  /// The price charged for using the VM.
  final pulumi.Input<double> retailPrice;

  /// The type of the VM.
  final pulumi.Input<String> vmTier;

  /// Creates a new [EstimatedVMPriceResponse].
  /// [osType] Operating system type used by the VM.
  /// [retailPrice] The price charged for using the VM.
  /// [vmTier] The type of the VM.
  EstimatedVMPriceResponse({
    required this.osType,
    required this.retailPrice,
    required this.vmTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osType': osType,
      'retailPrice': retailPrice,
      'vmTier': vmTier,
    };
  }

  factory EstimatedVMPriceResponse.fromMap(Map<String, dynamic> map) {
    return EstimatedVMPriceResponse(
      osType: pulumi.Input.fromValue(map['osType'] as String),
      retailPrice: pulumi.Input.fromValue(map['retailPrice'] as double),
      vmTier: pulumi.Input.fromValue(map['vmTier'] as String),
    );
  }
}
