// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Core NFVI detail.
class AzureCoreNFVIDetailsResponse {
  /// Location of the Azure core.
  final pulumi.Input<String>? location;
  /// Name of the nfvi.
  final pulumi.Input<String>? name;
  /// The NFVI type.
  /// Expected value is 'AzureCore'.
  final pulumi.Input<String> nfviType;

  /// Creates a new [AzureCoreNFVIDetailsResponse].
  /// [location] Location of the Azure core.
  /// [name] Name of the nfvi.
  /// [nfviType] The NFVI type.
  AzureCoreNFVIDetailsResponse({
    this.location,
    this.name,
    required this.nfviType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'nfviType': nfviType,
    };
  }

  factory AzureCoreNFVIDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureCoreNFVIDetailsResponse(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nfviType: (map['nfviType'] as String).input(),
    );
  }
}

