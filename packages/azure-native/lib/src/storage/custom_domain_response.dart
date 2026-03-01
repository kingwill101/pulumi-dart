// ignore_for_file: unused_element, unnecessary_cast


/// The custom domain assigned to this storage account. This can be set via Update.
class CustomDomainResponse {
  /// Gets or sets the custom domain name assigned to the storage account. Name is the CNAME source.
  final String name;
  /// Indicates whether indirect CName validation is enabled. Default value is false. This should only be set on updates.
  final bool? useSubDomainName;

  /// Creates a new [CustomDomainResponse].
  /// [name] Gets or sets the custom domain name assigned to the storage account. Name is the CNAME source.
  /// [useSubDomainName] Indicates whether indirect CName validation is enabled. Default value is false. This should only be set on updates.
  CustomDomainResponse({
    required this.name,
    this.useSubDomainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'useSubDomainName': ?useSubDomainName,
    };
  }

  factory CustomDomainResponse.fromMap(Map<String, dynamic> map) {
    return CustomDomainResponse(
      name: map['name'] as String,
      useSubDomainName: map['useSubDomainName'] == null ? null : map['useSubDomainName'] as bool,
    );
  }
}

