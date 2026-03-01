// ignore_for_file: unused_element, unnecessary_cast


/// Full view of the custom domain suffix configuration for ASEv3.
class CustomDnsSuffixConfigurationResponse {
  /// The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  final String? certificateUrl;
  /// The default custom domain suffix to use for all sites deployed on the ASE.
  final String? dnsSuffix;
  /// Resource Id.
  final String id;
  /// The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  final String? keyVaultReferenceIdentity;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  final String provisioningDetails;
  final String provisioningState;
  /// Resource type.
  final String type;

  /// Creates a new [CustomDnsSuffixConfigurationResponse].
  /// [certificateUrl] The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  /// [dnsSuffix] The default custom domain suffix to use for all sites deployed on the ASE.
  /// [id] Resource Id.
  /// [keyVaultReferenceIdentity] The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [provisioningDetails] Required.
  /// [provisioningState] Required.
  /// [type] Resource type.
  CustomDnsSuffixConfigurationResponse({
    this.certificateUrl,
    this.dnsSuffix,
    required this.id,
    this.keyVaultReferenceIdentity,
    this.kind,
    required this.name,
    required this.provisioningDetails,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
      'dnsSuffix': ?dnsSuffix,
      'id': id,
      'keyVaultReferenceIdentity': ?keyVaultReferenceIdentity,
      'kind': ?kind,
      'name': name,
      'provisioningDetails': provisioningDetails,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory CustomDnsSuffixConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CustomDnsSuffixConfigurationResponse(
      certificateUrl: map['certificateUrl'] == null ? null : map['certificateUrl'] as String,
      dnsSuffix: map['dnsSuffix'] == null ? null : map['dnsSuffix'] as String,
      id: map['id'] as String,
      keyVaultReferenceIdentity: map['keyVaultReferenceIdentity'] == null ? null : map['keyVaultReferenceIdentity'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      provisioningDetails: map['provisioningDetails'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

