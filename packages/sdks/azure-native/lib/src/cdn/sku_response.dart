// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Standard_Verizon = The SKU name for a Standard Verizon CDN profile.
/// Premium_Verizon = The SKU name for a Premium Verizon CDN profile.
/// Custom_Verizon = The SKU name for a Custom Verizon CDN profile.
/// Standard_Akamai = The SKU name for an Akamai CDN profile.
/// Standard_ChinaCdn = The SKU name for a China CDN profile for VOD, Web and download scenarios using GB based billing model.
/// Standard_Microsoft = The SKU name for a Standard Microsoft CDN profile.
/// Standard_AzureFrontDoor =  The SKU name for an Azure Front Door Standard profile.
/// Premium_AzureFrontDoor = The SKU name for an Azure Front Door Premium profile.
/// Standard_955BandWidth_ChinaCdn = The SKU name for a China CDN profile for VOD, Web and download scenarios using 95-5 peak bandwidth billing model.
/// Standard_AvgBandWidth_ChinaCdn = The SKU name for a China CDN profile for VOD, Web and download scenarios using monthly average peak bandwidth billing model.
/// StandardPlus_ChinaCdn = The SKU name for a China CDN profile for live-streaming using GB based billing model.
/// StandardPlus_955BandWidth_ChinaCdn = The SKU name for a China CDN live-streaming profile using 95-5 peak bandwidth billing model.
/// StandardPlus_AvgBandWidth_ChinaCdn = The SKU name for a China CDN live-streaming profile using monthly average peak bandwidth billing model.
class SkuResponse {
  /// Name of the pricing tier.
  final pulumi.Input<String>? name;

  /// Creates a new [SkuResponse].
  /// [name] Name of the pricing tier.
  SkuResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

