// ignore_for_file: unused_element, unnecessary_cast


/// Details of the Azure resource that was assessed
class AzureResourceDetails {
  /// The platform where the assessed resource resides
  /// Expected value is 'Azure'.
  final String source;

  /// Creates a new [AzureResourceDetails].
  /// [source] The platform where the assessed resource resides
  AzureResourceDetails({
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': source,
    };
  }

  factory AzureResourceDetails.fromMap(Map<String, dynamic> map) {
    return AzureResourceDetails(
      source: map['source'] as String,
    );
  }
}

