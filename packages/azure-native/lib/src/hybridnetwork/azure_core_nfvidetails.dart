// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Core NFVI detail.
class AzureCoreNFVIDetails {
  /// Location of the Azure core.
  final String? location;
  /// Name of the nfvi.
  final String? name;
  /// The NFVI type.
  /// Expected value is 'AzureCore'.
  final String nfviType;

  /// Creates a new [AzureCoreNFVIDetails].
  /// [location] Location of the Azure core.
  /// [name] Name of the nfvi.
  /// [nfviType] The NFVI type.
  AzureCoreNFVIDetails({
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
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nfviType: map['nfviType'] as String,
    );
  }
}

