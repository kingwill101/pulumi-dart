// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Core NFVI detail.
class AzureCoreNFVIDetails {
  /// Location of the Azure core.
  final pulumi.Input<String>? location;
  /// Name of the nfvi.
  final pulumi.Input<String>? name;
  /// The NFVI type.
  /// Expected value is 'AzureCore'.
  final pulumi.Input<String> nfviType;

  /// Creates a new [AzureCoreNFVIDetails].
  /// [location] Location of the Azure core.
  /// [name] Name of the nfvi.
  /// [nfviType] The NFVI type.
  const AzureCoreNFVIDetails({
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

  factory AzureCoreNFVIDetails.fromMap(Map<String, dynamic> map) {
    return AzureCoreNFVIDetails(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfviType: pulumi.Input.fromValue(map['nfviType'] as String),
    );
  }
}

